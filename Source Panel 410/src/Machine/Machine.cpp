/*
 * comms.cpp
 *
 *  Created on: Feb 13, 2018
 *      Author: tstern
 */

#include "Machine.hpp"
#include "Hardware/SerialIo.hpp"
#include "Hardware/SysTick.hpp"
#include <string.h> //strlen
#include "Library/Misc.hpp"
#include "Library/ftoa.h"
#include "GUI/widgets/FileListPopup.hpp"
#include "GUI/widgets/FileInfoPopup.hpp"
#include "GUI/widgets/AlertPopup.hpp"
#include "FlashData.hpp"
#include "GUI/Fusion3_GUI.hpp" //this sucks as Machine should not know about GUI
enum ReceivedDataEvent
{
	rcvUnknown = 0,
	rcvActive,
	rcvAxes,
	rcvDir,
	rcvErr,
	rcvEfactor,
	rcvFilament,
	rcvFiles,
	rcvHeaters,
	rcvHomed,
	rcvHstat,
	rcvPos,
	rcvStandby,
	rcvBeepFreq,
	rcvBeepLength,
	rcvFanPercent,
	rcvFilename,
	rcvFirmwareName,
	rcvFraction,
	rcvGeneratedBy,
	rcvGeometry,
	rcvHeight,
	rcvLayerHeight,
	rcvMessage,
	rcvMboxMode,
	rcvMboxMsg,
	rcvMboxControls,
	rcvMboxTimeout,
	rcvMboxTitle,
	rcvMboxSeq,
	rcvMyName,
	rcvProbe,
	rcvResponse,
	rcvSeq,
	rcvSfactor,
	rcvSize,
	rcvStatus,
	rcvTimesLeft,
	rcvVolumes,
	rcvNumTools,
	rcvBabystep
};

struct ReceiveDataTableEntry
{
		ReceivedDataEvent rde;
		const char* varName;
};

// This table must be kept in case-insensitive alphabetical order of the search string.
// A '^' character indicates the position of an array index, and a ':' character indicates the start of a sub-field name
const ReceiveDataTableEntry fieldTable[] =
{
		{ rcvActive,		"active^" },
		{ rcvAxes,			"axes" },
		{ rcvBabystep,		"babystep" },
		{ rcvBeepFreq,		"beep_freq" },
		{ rcvBeepLength,	"beep_length" },
		{ rcvDir,			"dir" },
		{ rcvEfactor,		"efactor^" },
		{ rcvErr,			"err" },
		{ rcvFanPercent,	"fanPercent^" },
		{ rcvFilament,		"filament^" },
		{ rcvFilename,		"fileName" },
		{ rcvFiles,			"files^" },
		{ rcvFirmwareName,	"firmwareName" },
		{ rcvFraction,		"fraction_printed" },
		{ rcvGeneratedBy,	"generatedBy" },
		{ rcvGeometry,		"geometry" },
		{ rcvHeaters,		"heaters^" },
		{ rcvHeight,		"height" },
		{ rcvHomed,			"homed^" },
		{ rcvHstat,			"hstat^" },
		{ rcvLayerHeight,	"layerHeight" },
		{ rcvMessage,		"message" },
		{ rcvMboxControls,	"msgBox.controls" },
		{ rcvMboxMode,		"msgBox.mode" },
		{ rcvMboxMsg,		"msgBox.msg" },
		{ rcvMboxSeq,		"msgBox.seq" },
		{ rcvMboxTimeout,	"msgBox.timeout" },
		{ rcvMboxTitle,		"msgBox.title" },
		{ rcvMyName,		"myName" },
		{ rcvNumTools,		"numTools" },
		{ rcvPos,			"pos^" },
		{ rcvProbe,			"probe" },
		{ rcvResponse,		"resp" },
		{ rcvSeq,			"seq" },
		{ rcvSfactor,		"sfactor" },
		{ rcvSize,			"size" },
		{ rcvStandby,		"standby^" },
		{ rcvStatus,		"status" },
		{ rcvTimesLeft,		"timesLeft^" },
		{ rcvVolumes,		"volumes" }
};


extern Fusion3 Fusion3GUI;

// Try to get an integer value from a string. If it is actually a floating point value, round it.
static bool GetInteger(const char s[], int32_t &rslt)
{
	if (s[0] == 0) return false;			// empty string

	char* endptr;
	rslt = (int) strtol(s, &endptr, 10);
	if (*endptr == 0) return true;			// we parsed an integer

	if (strlen(s) > 10) return false;		// avoid strtod buggy behaviour on long input strings

	const float d = strtof(s, &endptr);		// try parsing a floating point number
	if (*endptr == 0)
	{
		rslt = (int)((d < 0.0) ? d - 0.5 : d + 0.5);
		return true;
	}
	return false;
}

// Try to get an unsigned integer value from a string
static bool GetUnsignedInteger(const char s[], uint32_t &rslt)
{
	if (s[0] == 0) return false;			// empty string
	char* endptr;
	rslt = (int) strtoul(s, &endptr, 10);
	return *endptr == 0;
}

// Try to get a floating point value from a string. if it is actually a floating point value, round it.
static bool GetFloat(const char s[], float &rslt)
{
	if (s[0] == 0) return false;			// empty string

	// GNU strtod is buggy, it's very slow for some long inputs, and some versions have a buffer overflow bug.
	// We presume strtof may be buggy too. Tame it by rejecting any strings that much longer than we expect to receive.
	if (strlen(s) > 10) return false;

	char* endptr;
	rslt = strtof(s, &endptr);
	return *endptr == 0;					// we parsed a float
}


// Search an ordered table for a matching string
static ReceivedDataEvent bsearch(const ReceiveDataTableEntry  table[], size_t numElems, const char* key)
{
	size_t low = 0u, high = numElems;
	while (high > low)
	{
		const size_t mid = (high - low)/2 + low;
		const int t = strcasecmp(key, table[mid].varName);
		if (t == 0)
		{
			return table[mid].rde;
		}
		if (t > 0)
		{
			low = mid + 1u;
		}
		else
		{
			high = mid;
		}
	}
	return (low < numElems && strcasecmp(key, table[low].varName) == 0) ? table[low].rde : rcvUnknown;
}

struct HostFirmwareType
{
		const char* const name;
		const FirmwareFeatures features;
};
const HostFirmwareType firmwareTypes[] =
{
		{ "RepRapFirmware", 0}, //quoteFilenames }, Not sure what is going on here but the duet does not work with quoted file names
		{ "Smoothie", noGcodesFolder | noStandbyTemps | noG10Temps | noDriveNumber | noM20M36 },
		{ "Repetier", noGcodesFolder | noStandbyTemps | noG10Temps }
};


const char *Machine::GetFileNameFromPath(const char *path)
{
	const char *ptr;
	const char *target;
	ptr=path;
	target=path;
	while (*ptr)
	{
		if (*ptr=='/')
		{
			target=(ptr+1);
		}
		ptr++;
	}
	return target;
}


// Nasty hack to work around bug in RepRapFirmware 1.09k and earlier
// The M23 and M30 commands don't work if we send the full path, because "0:/gcodes/" gets prepended regardless.
const char * Machine::StripPrefix(const char * dir)
{
	if ((firmwareFeatures && noGcodesFolder) == 0)			// if running RepRapFirmware
	{
		const size_t len = strlen(dir);
		if (len >= 8 && memcmp(dir, "/gcodes/", 8) == 0)
		{
			dir += 8;
		}
		else if (len >= 10 && memcmp(dir, "0:/gcodes/", 10) == 0)
		{
			dir += 10;
		}
		else if (strcmp(dir, "/gcodes") == 0 || strcmp(dir, "0:/gcodes") == 0)
		{
			dir += len;
		}
	}
	return dir;
}

bool Machine::MoveXRelative(float mm)
{
	char str[20];
	char str2[50];
	ftoa(mm,str,2,'f');

	snprintf(str2,50,"G91\nG01 X%s F6000\nG90\n",str);
	Send(str2);
}


bool Machine::MoveYRelative(float mm)
{
	char str[20];
	char str2[50];
	ftoa(mm,str,2,'f');

	snprintf(str2,50,"G91\nG01 Y%s F6000\nG90\n",str);
	Send(str2);
}

bool Machine::MoveZRelative(float mm,uint32_t feedRate)
{
	char str[20];
	char str2[50];
	ftoa(mm,str,2,'f');
	snprintf(str2,50,"G91\nG01 Z%s F%d\nG90\n",str,feedRate);
	Send(str2);
}

bool Machine::MoveExtruderRelative(float mm, uint32_t rate, uint8_t extruderId)
{
	char str[20];
	char str2[50];
	ftoa(mm,str,2,'f');

	snprintf(str2,50,"G92 E0\nG1 E%s F%d\n",str,rate);
	Send(str2);
}

bool Machine::SetZBabySteps(float f)
{
	char str[20];
	char str2[50];
	ftoa(f,str,3,'f');

	snprintf(str2,50,"M290 S%s\n",str);
	Send(str2);
}

bool Machine::DisableMotors()
{
	Send("M84\n");
	return true; //TODO check that command went through?
}

bool Machine::PausePrinting()
{
	Send("M25\n");
	return true; //TODO check that command went through?
}

bool Machine::CancelPrinting()
{
	Send("M0\n");
	return true; //TODO check that command went through?
}


bool Machine::ResumePrinting()
{
	Send("M24\n");
	return true; //TODO check that command went through?
}
const char *Machine::SendGcode(const char *cmd,bool addToConsole)
{
	static uint32_t lastCmdSent=0;
//	if (lastCmdSent==newMessageSeq)
//	{
//		WARNING("Last Command not done");
//		return "ERROR";
//	}


	uint32_t cnt = newMessageSeq;
	lastCmdSent=cnt;

	WARNING("Sending %d:%s",cnt+1,cmd);
	if (addToConsole)
	{
		lastCommandSentSeq=cnt+1;
	}
	//messageSeq++;
	responseValid=false;
	response.clear();
	_cmdDone = false;
	Send(cmd);
	Send("\n");

	uint32_t to=SystemTick::GetTickCount() +10000;
	while(responseValid == false && !_cmdDone)
	{
		Spin();
		if (SystemTick::GetTickCount()>to)
		{
			ERROR("Command not complete");
			return "";
		}
		if (newMessageSeq > (cnt + 1))
		{
			//command might not return a string
			return "";
		}
	}
	//LOG("returning %s", response.c_str());
	return response.c_str();
}

Machine::Machine(): machineConfigTimer(MachineConfigRequestTimeout, "M408 S1"),
		requestedPath(filesRoot),timer(FileListRequestTimeout, "", requestedPath.c_str())
{
	newMessageSeq=0;
	messageSeq=0;
	firmwareFeatures=0;
	firmwareFeatures = firmwareTypes[0].features;		// assume RepRapFirmware until we hear otherwise
	lastResponseTime=0;
	lastPollTime=0;
	status = PrinterStatus::connecting;

	machineConfigTimer.SetPending();


}

void Machine::Spin()
{

	static uint32_t lastTimeCheck=0;

	static bool first=true;
	if (first)
	{
		char str[20];
		sprintf(str,"M408 S0 R%u\n",messageSeq);
		Machine::getInstance().Send(str);
		messageSeq++;

		//		sprintf(str,"M115\n");
		//		Machine::getInstance().Send(str);

		Machine::getInstance().RequestDirList(GetRootPath(0));
		first=false;
	}

//	if (lastTimeCheck==0 && comsActive)
//	{
//		//we need to set the time;
//		Send("M905 S00:01:00\n");
//		lastTimeCheck=SystemTick::GetTickCount();
//	} else if ((SystemTick::GetTickCount()-lastTimeCheck)>3000)
//	{
//		if (comsActive && _cmdDone)
//		{
//			const char *str;
//			lastTimeCheck=SystemTick::GetTickCount();
//			str=SendGcode((const char *)"M905\n");
//			if (strstr(str,"RTC"))
//			{
//				duetReboot=true;
//			}
//		}
//	}


	// 1. Check for input from the serial port and process it.
	// This calls back into functions StartReceivedMessage, ProcessReceivedValue, ProcessArrayLength and EndReceivedMessage.
	SerialIo::CheckInput();

	// 6. If it is time, poll the printer status.
	// When the printer is executing a homing move or other file macro, it may stop responding to polling requests.
	// Under these conditions, we slow down the rate of polling to avoid building up a large queue of them.

	const uint32_t now = SystemTick::GetTickCount();
	if (now - lastPollTime >= printerPollInterval // if we haven't polled the printer too recently...
			&& now - lastResponseTime >= printerResponseInterval // and we haven't had a response too recently
	)
	{
		if (now - lastPollTime > now - lastResponseTime) // if we've had a response since the last poll
		{
			// First check for specific info we need to fetch
			bool done = machineConfigTimer.Process();
			if (!done)
			{
				done = timer.Process();
			}

			// Otherwise just send a normal poll command
			if (!done)
			{
				char str[20];
				sprintf(str,"M408 S0 R%u\n",messageSeq);
				Machine::getInstance().Send(str);
			}
			lastPollTime = SystemTick::GetTickCount();
		}
		else if (now - lastPollTime >= printerPollTimeout) // if we're giving up on getting a response to the last poll
		{
			Machine::getInstance().Send("M408 S0\n");
			lastPollTime = SystemTick::GetTickCount();
		}
	}

	if (beepFrequency >= 100 && beepFrequency <= 10000 && beepLength > 0)
	{
		//lets beep
		if (beepLength > 20000)
		{
			beepLength = 20000;			// limit the beep to 20 seconds
		}

		Buzzer::Beep(beepFrequency, beepLength,
				FlashData::getInstance().touchVolume);
		beepFrequency = 0;
		beepLength = 0;
	}


}

bool Machine::PrintInProgress()
{
	return status == PrinterStatus::printing || status == PrinterStatus::paused || status == PrinterStatus::pausing || status == PrinterStatus::resuming;
}
bool  Machine::OkToSend()
{
	bool ret;

	ret =  status == PrinterStatus::idle || status == PrinterStatus::printing || status == PrinterStatus::paused;
	if (ret == false)
	{
		LOG("Printer Status is 0x%04X",status);
	}
	return ret;
}
// Set the status back to "Connecting"
void Machine::Reconnect()
{
	//UI::ChangeStatus(status, PrinterStatus::connecting);
	status = PrinterStatus::connecting;
	//UI::UpdatePrintingFields();
}

bool Machine::SetBedTemperature(uint16_t celcius)
{
	if (OkToSend())
	{
		char str[50];
		snprintf(str,50,"M140 S%d\n",celcius);
		Send(str);
		return true;
	}else
	{
		ERROR("Could not set bed temp");
	}
	return false;
}


bool Machine::SetExtruderTemperature(uint16_t celcius)
{
	if (OkToSend())
	{
		char str[50];
		Send(((GetFirmwareFeatures() & noG10Temps) == 0) ? "G10 P" : "M104 T0");
		snprintf(str,50," S%d\n",celcius);
		Send(str);
		return true;
	}else
	{
		ERROR("Could not set head temp");
	}
	return false;
}

bool Machine::SetPercentFanRPM(uint8_t fan, uint8_t percent)
{
	char str[40];
	if (percent>100) {percent=100;}
	snprintf(str,40,"M106 P%d S%d\n",fan,((uint32_t)percent*255)/100);
	Send(str);
}


bool Machine::SetPercentExtrudeRate(uint8_t nozzle, uint8_t percent)
{
	char str[40];
	snprintf(str,40,"M221 D%d S%d\n",nozzle,percent);
	Send(str);
}

bool Machine::SetPercentSpeed(uint8_t percent)
{
	char str[40];
	snprintf(str,40,"M220 S%d\n",percent);
	Send(str);
}

void Machine::Send(const char * s)
{
	//LOG("Sending: %s",s);
	SerialIo::SendString(s);
}

void Machine::Send(int i)
{
	//LOG("Sending: %d",i);
	SerialIo::SendInt(i);
}
void Machine::Send(uint32_t & i)
{
	//LOG("Sending: %d",i);
	SerialIo::SendInt(i);
}
void Machine::Send(const char c)
{
	//LOG("Sending: %c",c);
	SerialIo::SendChar(c);
}


bool Machine::PrintFile(const char *fileName)
{
	Send( "M32 ");

	Send(StripPrefix(fileName));
	Send('\n');
	percentPrintDone=0;
	secondsRemaining[0]=0;
	secondsRemaining[1]=0;
	return true;
}
bool Machine::AutomaticBedLeveling(void)
{
	Send("M117\n");
	Send("M117 Leveling Please Wait\n");
	SendGcode("G32\n",true);
	Send("M117\n");
	Send("M117 Leveling Complete, see console\n");
	//Send("M84\n");
}
bool Machine::RunMacro(const char *fileName)
{
	char str[100];

	snprintf(str,100,"M98 P/macros/%s\n",fileName);
	Send(str);

	return true;
}

void Machine::InitSDCard(uint8_t cardNumber)
{
	if (OkToSend())
	{
		char str[20];
		sprintf(str,"M21 P%d\n",cardNumber);
		Send(str);

	}else
	{
		ERROR("Could not send command");
	}
}

const char *Machine::GetRootPath(uint8_t cardNumber)
{
	if (cardNumber==0)
	{
		return (cardNumber == 0 && (GetFirmwareFeatures() & noGcodesFolder) == 0) ? filesRoot : "0:/";
	}
	return "1:/";
}


bool Machine::waitCommandDone(uint32_t timeOutMs)
{
	uint32_t to= SystemTick::GetTickCount() +timeOutMs;
	while (!_cmdDone)
	{
		Spin();
		if (SystemTick::GetTickCount() > to)
		{
			return false;
		}
	}
	return true;
}
void Machine::RequestDirList(const char *dir, bool initSDcard)
{
	Send("M408 S1\n"); //request the volumes
	LOG("Requesting listing of: %s",dir);
	_cmdDone=false;
	cmdRcvExpected=rcvDir;
	char str[40];
	sprintf(str,"M21 P%d\n",(uint8_t)(dir[0]-'0'),40);
	if (initSDcard)
	{
		Send(str);
	}
	requestedPath.copy(dir);
	timer.SetCommand(((GetFirmwareFeatures() & noM20M36) != 0) ? "M408 S20 P" : "M20 S2 P");
	timer.SetArgument(CondStripDrive(requestedPath.c_str()));
	timer.SetPending();
}

void Machine::SendFilename(const char *dir, const char *name)
{
	if (GetFirmwareFeatures() & quoteFilenames)
	{
		Send('"');
	}
	if (*dir != 0)
	{
		// We have a directory, so send it followed by '/' if necessary
		char c;
		while ((c = *dir) != 0)
		{
			Send(c);
			++dir;
		}
		if (c != '/')
		{
			Send('/');
		}

	}
	Send(name);
	if (GetFirmwareFeatures() & quoteFilenames)
	{
		Send('"');
	}
}

void Machine::RequestFileInfo(const char *dir, const char *fileName)
{
	LOG("request file info %s, %s",dir,fileName);

	//this is hack to know when the command is done...
	_cmdDone=false;
	cmdRcvExpected=rcvErr;
	//Send( "M408 S36 P");
	Send(((GetFirmwareFeatures() & noM20M36) == 0) ? "M36 " : "M408 S36 P");			// ask for the file info
	SendFilename(CondStripDrive(dir), fileName);
	Send('\n');

}

// Public functions called by the SerialIo module
void Machine::ProcessReceivedValue(const char id[], const char data[], const size_t indices[])
{
	uint32_t rcvID;
	static uint32_t lastSeqReceived=0;

	rcvID=bsearch(fieldTable, sizeof(fieldTable)/sizeof(fieldTable[0]), id);
	if (cmdRcvExpected == rcvID)
	{
		cmdRcvExpected=0;
	}
	//LOG("RX: %s:%s",id,data);
	switch(rcvID)
	{
		case rcvActive:

		{
			int32_t ival;
			if (GetInteger(data, ival) && indices[0] < MaxHeaters)
			{
				_setPointTemperatures[indices[0]] = ival;
			}
		}
			break;

		case rcvStandby:

		{
			int32_t ival;
			//			if (GetInteger(data, ival) && indices[0] < (int)maxHeaters && indices[0] != 0)
			//			{
			//				UI::UpdateStandbyTemperature(indices[0], ival);
			//			}
		}
			break;

		case rcvHeaters:

			if (indices[0] < MaxHeaters)
			{
				float fval;
				if (GetFloat(data, fval))
				{

					_currentTemps[indices[0]] = fval;
				}
			}
			break;

		case rcvHstat:
			//
			//		if (indices[0] < maxHeaters)
			//		{
			//			int32_t ival;
			//			if (GetInteger(data, ival))
			//			{
			//				UI::UpdateHeaterStatus(indices[0], ival);
			//			}
			//		}
			break;

		case rcvPos:

		{
			float fval;
			//			if (GetFloat(data, fval))
			//			{
			//				UI::UpdateAxisPosition(indices[0], fval);
			//			}
		}
		break;

		case rcvEfactor:

		{
						int32_t ival;
						if (GetInteger(data, ival) && indices[0] + 1 < (int)MaxHeaters)
						{
							percentExtrude[indices[0]]=ival;
							//UI::UpdateExtrusionFactor(indices[0], ival);
						}
		}
			break;

		case rcvFiles:

			if (indices[0] == 0)
			{
				FileListPopup::getInstance().ClearFileList();
				//FileManager::BeginReceivingFiles();
			}
			FileListPopup::getInstance().AddFile(data); //added the file to the file list
			//LOG("Added file %s",data);
			timer.Stop();
			break;

		case rcvFilament:

		{
			static float totalFilament = 0.0;
			if (indices[0] == 0)
			{
				totalFilament = 0.0;
			}
			float f;
			if (GetFloat(data, f))
			{
				totalFilament += f;
				FileInfoPopup::getInstance().setFilamentNeeded(totalFilament);
				//UI::UpdateFileFilament((int)totalFilament);
			}
		}
		break;

		case rcvHomed:

		{
			int32_t ival;
			if (indices[0] < MaxAxis && GetInteger(data, ival) && ival >= 0 && ival < 2)
			{
				homed[indices[0]]=(bool)ival;
			}
			//			{

			//			if (indices[0] < MAX_AXES && GetInteger(data, ival) && ival >= 0 && ival < 2)
			//			{
			//				bool isHomed = (ival == 1);
			//				if (isHomed != axisHomed[indices[0]])
			//				{
			//					axisHomed[indices[0]] = isHomed;
			//					UI::UpdateHomedStatus(indices[0], isHomed);
			//					bool allHomed = true;
			//					for (size_t i = 0; i < numAxes; ++i)
			//					{
			//						if (!axisHomed[i])
			//						{
			//							allHomed = false;
			//							break;
			//						}
			//					}
			//					if (allHomed != allAxesHomed)
			//					{
			//						allAxesHomed = allHomed;
			//						UI::UpdateHomedStatus(-1, allHomed);
			//					}
			//				}
			//			}
		}
			break;

		case rcvTimesLeft:

		{
			int32_t i;
			int32_t x[2];
			bool b = GetInteger(data, i);
			if (b && i >= 0 && i < 10 * 24 * 60 * 60 && PrintInProgress())
			{

				if (indices[0]==0)
				{

					secondsRemaining[0]=i;
				}
				if (indices[0]==1)
				{

					secondsRemaining[1]=i;
				}
				//UI::UpdateTimesLeft(indices[0], i);
			}
		}
			break;

		case rcvFanPercent:

			if (indices[0] < MaxFans)			// currently we only handle one fan
			{
				float f;
				bool b = GetFloat(data, f);
				if (b && f >= 0.0 && f <= 100.0)
				{
					percentFanRPM[indices[0]]=f;
				}
			}
			break;

		case rcvSfactor:
		{
			int32_t ival;
			if (GetInteger(data, ival))
			{
				percentSpeed=ival;
			}
		}
		break;

		case rcvProbe:
			//UI::UpdateZProbe(data);
			break;

		case rcvMyName:
			//		if (status != PrinterStatus::configuring && status != PrinterStatus::connecting)
			//		{
			//			UI::UpdateMachineName(data);
			//		}
			break;

		case rcvFilename:
			FileInfoPopup::getInstance().setFileName(data);
			//		UI::PrintingFilenameChanged(data);
			break;

		case rcvSize:
		{
			FileInfoPopup::getInstance().setSize(data);
			//		int32_t sz;
			//		if (GetInteger(data, sz))
			//		{
			//
			//			//				UI::UpdateFileSize(sz);
			//		}
		}
		break;

		case rcvHeight:
		{
			FileInfoPopup::getInstance().setFileObjectHeight(data);
			//		float f;
			//		if (GetFloat(data, f))
			//		{
			//			//			UI::UpdateFileObjectHeight(f);
			//		}
		}
		break;

		case rcvLayerHeight:
		{
			FileInfoPopup::getInstance().setLayerHeight(data);
			//		float f;
			//		if (GetFloat(data, f))
			//		{
			//			//				UI::UpdateFileLayerHeight(f);
			//		}
		}
		break;

		case rcvGeneratedBy: //this is a response to M36 command tells what slicer geneterated file
			FileInfoPopup::getInstance().setSlicer(data);
			break;

		case rcvFraction:
		{
			float f;
			if (GetFloat(data, f))
			{
				if (f >= 0.0 && f <= 1.0)
				{

					percentPrintDone=f*100;
					//					UI::SetPrintProgressPercent((unsigned int)(100.0 * f) + 0.5);
				}
			}
		}
			break;

		case rcvStatus:
			SetStatus(data[0]);
			break;

		case rcvBeepFreq:
			GetInteger(data, beepFrequency);
			beepSet = true;
			break;

		case rcvBeepLength:
			GetInteger(data, beepLength);
			beepSet = true;
			break;

		case rcvGeometry:
			//		if (status != PrinterStatus::configuring && status != PrinterStatus::connecting)
			//		{
			//			isDelta = (strcasecmp(data, "delta") == 0);
			//			UI::UpdateGeometry(numAxes, isDelta);
			//		}
			break;

		case rcvAxes:
		{
			uint32_t n = MIN_AXES;
			GetUnsignedInteger(data, n);
			//			numAxes = constrain<unsigned int>(n, MIN_AXES, MAX_AXES);
			//			UI::UpdateGeometry(numAxes, isDelta);
		}
		break;

		case rcvSeq:
			GetUnsignedInteger(data, newMessageSeq);
			lastSeqReceived=newMessageSeq;
			break;

		case rcvResponse:
			//LOG("got data %s",data);
			response.copy(data);
			//LOG("got data %s",response.c_str());
			responseValid = true;
			WARNING("Received %d:%s",lastSeqReceived,data);
			//if (lastCommandSentSeq !=0 && lastSeqReceived>=lastCommandSentSeq)
			{
				Fusion3GUI.AddToConsole(data);
				lastCommandSentSeq=0;
			}
			//MessageLog::AppendMessage(data);
			break;

		case rcvDir:
			LOG("Received directory name %s", data);
			FileListPopup::getInstance().UpdateDir(data);
			//	FileManager::ReceiveDirectoryName(data);
			break;

		case rcvMessage:
			if (data[0] == 0)
			{
				AlertPopup::getInstance().Clear();
			}
			else
			{
				if (data[0]=='{')
				{
					lastM117Json=SystemTick::GetTickCount();
					AlertPopup::getInstance().SetJSON(data);
				}else
				{
					//if the JSON was not just before this message, clear the clear any JSON config.
					if ((SystemTick::GetTickCount()-lastM117Json)>5000)
					{
						AlertPopup::getInstance().Clear();
					}
					Fusion3GUI.AddToConsole(data); //this is a reach around, but I know no better way today...
					AlertPopup::getInstance().Set("Message", data, 0, 0);
				}
			}
			break;

		case rcvMboxMode:
			//		if (GetInteger(data, currentAlert.mode))
			//		{
			//			currentAlert.flags |= Alert::GotMode;
			//		}
			break;

		case rcvMboxMsg:
			//		currentAlert.text.copy(data);
			//		currentAlert.flags |= Alert::GotText;
			break;

		case rcvMboxControls:
			//		if (GetUnsignedInteger(data, currentAlert.controls))
			//		{
			//			currentAlert.flags |= Alert::GotControls;
			//		}
			break;

		case rcvMboxTimeout:
			//		if (GetFloat(data, currentAlert.timeout))
			//		{
			//			currentAlert.flags |= Alert::GotTimeout;
			//		}
			break;

		case rcvMboxTitle:
			//		currentAlert.title.copy(data);
			//		currentAlert.flags |= Alert::GotTitle;
			break;

		case rcvMboxSeq:
			//		if (GetUnsignedInteger(data, currentAlert.seq))
			//		{
			//			currentAlert.flags |= Alert::GotSeq;
			//		}
			break;

		case rcvErr:
		{
			int32_t i;
			if (GetInteger(data, i))
			{
				ERROR("Got error code %d", i);
				FileListPopup::getInstance().SetErrorCode(i);
				//				FileManager::ReceiveErrorCode(i);
			}
		}
			break;

		case rcvVolumes:
		{
			uint32_t i;
			if (GetUnsignedInteger(data, i))
			{
				FileListPopup::getInstance().SetNumberSDCards(i);
				//				FileManager::SetNumVolumes(i);
			}
		}
			break;

		case rcvNumTools:
		{
			uint32_t i;
			if (GetUnsignedInteger(data, i))
			{
				//				UI::SetNumTools(i);
			}
		}
			break;

		case rcvFirmwareName:
			machineConfigTimer.Stop(); //we got the machine firmware name
			for (size_t i = 0; i < ARRAY_SIZE(firmwareTypes); ++i)
			{

				if (stringStartsWith(data, firmwareTypes[i].name))
				{

					const FirmwareFeatures newFeatures =
							firmwareTypes[i].features;
					//WARNING("Got firmware name features 0x%04X",newFeatures);
					if (newFeatures != firmwareFeatures)
					{
						firmwareFeatures = newFeatures;
						//WARNING("Got firmware name features 0x%04X",newFeatures);
						//UI::FirmwareFeaturesChanged(firmwareFeatures);
						//FileManager::FirmwareFeaturesChanged();
					}
					break;
				}
			}
			break;

		case rcvBabystep:
		{
			float f;
			if (GetFloat(data, f))
			{
				babySteps=f;
			}
		}
			break;

		default:
			break;
	}

}

// Public function called when the serial I/O module finishes receiving an array of values
void Machine::ProcessArrayEnd(const char id[], const size_t indices[])
{
	if (indices[0] == 0 && strcmp(id, "files^") == 0)
	{
		//FileManager::BeginReceivingFiles();				// received an empty file list - need to tell the file manager about it
	}
}

void Machine::StartReceivedMessage()
{

	newMessageSeq = messageSeq;
	_responseDone=false;
	comsActive=true; //got start of message so duet is alive
	//MessageLog::BeginNewMessage();
	//FileManager::BeginNewMessage();
	//currentAlert.flags = 0;

}

void Machine::EndReceivedMessage()
{

	lastResponseTime = SystemTick::GetTickCount();
	comsActive=true;
	if (newMessageSeq != messageSeq)
	{
		messageSeq = newMessageSeq;
		//MessageLog::DisplayNewMessage();
	}
	if (cmdRcvExpected ==0 )
	{
		_cmdDone=true;
	}
	FileListPopup::getInstance().CommandDone(); //let list box know command is done
	_responseDone=true;

	
	//	FileManager::EndReceivedMessage(UI::IsDisplayingFileInfo());
	//	if ((currentAlert.flags & Alert::GotMode) != 0 && currentAlert.mode < 0)
	//	{
	//		UI::ClearAlert();
	//	}
	//	else if (currentAlert.flags == Alert::GotAll && currentAlert.seq != lastAlertSeq)
	//	{
	//		UI::ProcessAlert(currentAlert);
	//		lastAlertSeq = currentAlert.seq;
	//	}

}

// Strip the drive letter prefix from a file path if the host firmware doesn't support it
const char*  Machine::CondStripDrive(const char*  arg)
{
	return ((firmwareFeatures & noDriveNumber) != 0 && isdigit(arg[0]) && arg[1] == ':')
			? arg + 2
					: arg;
}

// This is called when the status changes
void Machine::SetStatus(char c)
{
	PrinterStatus newStatus;
	_charState = c;
	switch(c)
	{
		case 'A':
			newStatus = PrinterStatus::paused;
			break;
		case 'B':
			newStatus = PrinterStatus::busy;
			break;
		case 'C':
			newStatus = PrinterStatus::configuring;
			break;
		case 'D':
			newStatus = PrinterStatus::pausing;
			break;
		case 'F':
			newStatus = PrinterStatus::flashing;
			break;
		case 'I':
			newStatus = PrinterStatus::idle;
			break;
		case 'P':
			newStatus = PrinterStatus::printing;
			break;
		case 'R':
			newStatus = PrinterStatus::resuming;
			break;
		case 'S':
			newStatus = PrinterStatus::stopped;
			break;
		case 'T':
			newStatus = PrinterStatus::toolChange;
			break;
		default:
			newStatus = status;	// leave the status alone if we don't recognise it
			break;
	}

	if (newStatus != status)
	{
		//UI::ChangeStatus(status, newStatus);

		if (status == PrinterStatus::configuring || (status == PrinterStatus::connecting && newStatus != PrinterStatus::configuring))
		{
			//MessageLog::AppendMessage("Connected");
			//MessageLog::DisplayNewMessage();
		}

		status = newStatus;
		//UI::UpdatePrintingFields();
	}

	//LOG("Status changed 0x%X",status);
}

/*
 * comms.hpp
 *
 *  Created on: Feb 13, 2018
 *      Author: tstern
 *
 *      This class is design to hold the current machine state and do all the communications with the machine.
 *      //this could be named "Printer" as it all aspects of the Machine/Printer
 */

#ifndef SRC_MACHINE_HPP_
#define SRC_MACHINE_HPP_

#include "asf.h"
#include "Hardware/SerialIo.hpp"
#include "FirmwareFeatures.hpp"
#include "RequestTimer.hpp"
#include "PrinterStatus.hpp"
#include "Library/Vector.hpp"

constexpr uint32_t printerPollInterval = 1000;			// poll interval in milliseconds
constexpr uint32_t printerResponseInterval = 700;		// shortest time after a response that we send another poll (gives printer time to catch up)
constexpr uint32_t printerPollTimeout = 8000;			// poll timeout in milliseconds
constexpr uint32_t FileInfoRequestTimeout = 8000;		// file info request timeout in milliseconds
constexpr uint32_t MachineConfigRequestTimeout = 8000;	// machine configuration timeout in milliseconds
constexpr uint32_t FileListRequestTimeout = 8000;				// file info request timeout in milliseconds

constexpr char *  filesRoot = "0:/gcodes";
constexpr char *  macrosRoot = "0:/macros";

constexpr size_t maxPathLength = 100;
constexpr size_t respMaxStringLength = 2048;
typedef String<maxPathLength> Path;

constexpr  size_t MaxHeaters = 5;
constexpr  size_t MaxFans = 9;
constexpr  size_t MaxAxis = 3;
class Machine
{
	public:
		Machine() ;
		char _charState = 'x';
		static Machine& getInstance()
		{
			static Machine instance;
			return instance;
		}

		void Spin(); //this function should be calling in main while(1) loop

		void InitSDCard(uint8_t cardNumber);
		const char *GetRootPath(uint8_t cardNumber);
		void RequestDirList(const char *dir, bool initSDcard=false);
		void ProcessReceivedValue(const char id[], const char data[], const size_t indices[]);
		void ProcessArrayEnd(const char id[], const size_t indices[]);
		void StartReceivedMessage();
		void EndReceivedMessage();

		bool IsDuetAlive() {return comsActive;}
//		bool DidDuetReboot() {return duetReboot;}
//		void ClearDuetReboot() {duetReboot=false; Send("M905 S00:01:00\n"); }

		//send gcode command and get response
		const char *SendGcode(const char *cmd, bool addToConsole=false);

		PrinterStatus GetStatus() {return status;}
		bool PrintInProgress(); //returns true if printing operation is in progress


		// Return true if sending a command or file list request to the printer now is a good idea.
		// We don't want to send these when the printer is busy with a previous command, because they will block normal status requests.
		bool OkToSend();

		void Reconnect();
		FirmwareFeatures GetFirmwareFeatures(){	return firmwareFeatures;}


		void Send(const char * s) ;
		void Send(int i);
		void Send(uint32_t & i);
		void Send(const char c);


		const char*  CondStripDrive(const char*  arg);

		void SendFilename(const char *dir, const char *name);
		void RequestFileInfo(const char *dir, const char *fileName);

		bool IsResponseDone() {return _responseDone;}
		bool IsCommandDone() {return _cmdDone;}

		float *GetCurrentTemps() {return _currentTemps;}
		bool waitCommandDone(uint32_t timeOutMs=1000);
		bool SetBedTemperature(uint16_t celcius);
		bool SetExtruderTemperature(uint16_t celcius);

		int32_t GetBedTemperatureSetPoint()
		{
			return _setPointTemperatures[0];
		}
		int32_t GetHeadTemperatureSetPoint()
		{
			return _setPointTemperatures[1];
		}
		
		bool MoveXRelative(float mm);
		bool MoveYRelative(float mm);
		bool MoveZRelative(float mm,uint32_t feedRate=6000);
		bool MoveExtruderRelative(float mm, uint32_t rate=300, uint8_t extruderId=0);
		bool DisableMotors();

		bool PrintFile(const char *fileName);
		bool PausePrinting();
		bool ResumePrinting();
		bool CancelPrinting();

		bool RunMacro(const char *fileName);


		float GetPercentPrintRemaining() {return percentPrintDone;}
		int32_t GetSecondsRemaining() { return secondsRemaining[1]; }//if (secondsRemaining[0]>secondsRemaining[1]) {return secondsRemaining[0];}return secondsRemaining[1];}

		float GetPercentFanRPM(uint8_t fan) {return percentFanRPM[fan];}
		float GetPercentSpeed() {return percentSpeed;}
		float GetPercentExtrude(uint8_t nozzle) {return percentExtrude[nozzle];}
		float GetBabySteps() {return babySteps;}
		bool SetZBabySteps(float f);

		bool SetPercentFanRPM(uint8_t fan, uint8_t percent);
		bool SetPercentSpeed(uint8_t percent);
		bool SetPercentExtrudeRate(uint8_t nozzle, uint8_t percent);

		bool AutomaticBedLeveling(void);

		const char *GetFileNameFromPath(const char *path);

		bool GetHomed(int axis) {if (axis<MaxAxis) {return homed[axis];} return false;}
	private:
		bool responseValid;
		String<respMaxStringLength> response;

		uint32_t msgCount = 0;
		Path requestedPath;
		Path currentPath;
//		bool duetReboot=false;
		bool comsActive=false;

		uint32_t lastM117Json;
		int32_t beepFrequency, beepLength;
		bool beepSet = false;

		FirmwareFeatures firmwareFeatures;
		uint32_t newMessageSeq = 0;
		uint32_t messageSeq = 0;
		uint32_t lastCommandSentSeq=0;
		uint32_t lastResponseTime;
		uint32_t lastPollTime; //last time we talked with the machine
		RequestTimer machineConfigTimer;
		RequestTimer timer; //time for file list requests
		PrinterStatus status;

		float percentPrintDone;
		int32_t secondsRemaining[2];

		//status indicators
		float percentFanRPM[MaxFans];
		float percentSpeed;
		float percentExtrude[MaxHeaters];
		float babySteps;

		bool homed[MaxAxis]={0};

		float _currentTemps[MaxHeaters];
		int32_t _setPointTemperatures[MaxHeaters] =
		{
		0
		};
		bool _responseDone;

		bool _cmdDone;
		uint32_t cmdRcvExpected;

		const char *StripPrefix(const char * dir);

		Machine(const Machine&) = delete;
		void operator=(const Machine&) = delete;

		void SetStatus(char c);
};



#endif /* SRC_MACHINE_HPP_ */

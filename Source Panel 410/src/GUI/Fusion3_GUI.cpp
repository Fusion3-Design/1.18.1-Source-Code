/*
 * Fusion3_GUI.cpp
 *
 *  Created on: Jan 23, 2018
 *      Author: tstern
 */
#include <string>
#include <functional>
#include "Fusion3_GUI.hpp"
#include "widgets/widgets.hpp"
#include "widgets/window.hpp"
#include "widgets/KeyboardPopup.hpp"
#include "widgets/ScrollText.hpp"
#include "widgets/Options.hpp"
#include "GUI/widgets/AlertPopup.hpp"
#include "Library/LinkedList.hpp"
#include "Fusion3logo.hpp"
#include "Icons/Icons.hpp"



#include "Hardware/Buzzer.hpp"
#include "Hardware/Reset.hpp"
#include "Hardware/SerialIo.hpp"
#include "Hardware/SysTick.hpp"
#include "Library/Misc.hpp"
#include "Library/ftoa.h"

#include "Library/syslog.h"
#include "FlashData.hpp"
#include <math.h>

#define  nvData FlashData::getInstance()
//#include "UserInterfaceConstants.hpp" //I would like for this to go away at some point

void Fusion3::SplashScreen(UTFT &lcd)
{

	// Fusion3 splash screen
	lcd.setColor(0x52AA); // Same background color as logo image
	lcd.fillRect(0, 0, DisplayX, DisplayY);
	lcd.drawBitmap16(140, (DisplayY / 2 - 19), 200, 39, Fusion3Logo); // See fusion3logo.cpp and fusion3logo.hpp
	// Progress bar
	lcd.setColor(black); // Black background
	lcd.fillRect(0, 250, DisplayX, 270);
	lcd.setColor(orange); // Orange foreground
	lcd.setBackColor(0x52AA);
//	lcd.setTextPos(5,2);
//	lcd.setFont(Defaults::defaultFont);
//	lcd.print("Build: " __DATE__ " " __TIME__ "\n");
	for (unsigned int i = 2; i < (DisplayX - 2); ++i) // Draw progress bar
	{
		lcd.fillRect((i - 1), 252, i, 268);
		delay_ms(5);
	}
	delay_ms(500);
}

void Fusion3::CreateScreens()
{
	LOG("Hello");
	CreateHomeScreen();
	CreateIntegerPopup();
	CreateKeyBoardPopup();
	CreateFileListPopup();
	CreateBeginPrinting();
	CreateMaintenanceScreen();
	CreateConsoleScreen();
	CreateFilamentScreen();
	CreateJogScreen();
	CreateExtruderJogScreen();
	CreateLCDSetupScreen();
	CreatePrint();
	CreateTweakScreen();
	CreateBabyStepScreen();
	CreateBlowerScreen();
	CreateBedLevelingScreen();


	//	CreateBeginPrint();
	//	CreatePrinting();
	//	CreateMaintenanceScreen();
	//	CreateTweakScreen();
	//	CreatePrintPausedScreen();
	//	SetupScreen();
	//	CreateJogScreen();
	//	CreateExtrudeScreen();
	//	CreateFilamentScreen();
	//	CreateMessageScreen();
	//
	//	//create  popup screens we will use
	//	CreateKeyboardPopup();
	//	CreateVolumePopup();
	//	CreateAreYouSurePopup();
	//	CreateIntegerAdjustPopup();
	//	CreateFileListPopup();
	//	CreateFileActionPopup();

	LOG("REFRESH");
	ptrAcitveWindow=&_homeScreen;
	//	ptrAcitveWindow=_babySteps;
	//	_babySteps->SetParent(&_homeScreen);
	ptrAcitveWindow->Refresh(true);

	//	_keyboardPopup->SetParent(ptrAcitveWindow);
	//	//_keyboardPopup->SetWidgetToChange((WidgetWithText *)ptrOpt->ptrWidget, Type_Integer);
	//	_keyboardPopup->Refresh(true);
	//ptrAcitveWindow = &_homeScreen;


}
// Draw a spot and wait until the user touches it, returning the touch coordinates in tx and ty.
// The alternative X and Y locations are so that the caller can allow for the touch panel being possibly inverted.
void Fusion3::DoTouchCalib(PixelNumber x, PixelNumber y, PixelNumber altX, PixelNumber altY, bool wantY, uint16_t& rawRslt)
{
	const PixelNumber touchCircleRadius = DisplayY/32;
	const PixelNumber touchCalibMaxError = DisplayY/6;

	lcd.setColor(colours.labelTextColour);
	lcd.fillCircle(x, y, touchCircleRadius);

	for (;;)
	{
		uint16_t tx, ty, rawX, rawY;
		if (_touch->read(tx, ty, &rawX, &rawY))
		{
			if (   (abs((int)tx - (int)x) <= touchCalibMaxError || abs((int)tx - (int)altX) <= touchCalibMaxError)
					&& (abs((int)ty - (int)y) <= touchCalibMaxError || abs((int)ty - (int)altY) <= touchCalibMaxError)
			)
			{
				TouchBeep();
				rawRslt = (wantY) ? rawY : rawX;
				break;
			}
		}
	}

	lcd.setColor(colours.defaultBackColour);
	lcd.fillCircle(x, y, touchCircleRadius);
}
void Fusion3::CalibrateTouch()
{
	WidgetWindow window(slate);

	Defaults::defaultFcolour = colours.labelTextColour;
	Defaults::defaultBcolour = colours.defaultBackColour;
	window.add(
			new Label(120, DisplayY/2-10, 180, 30, "Touch the Spot"));


	window.Refresh(true,nullptr);

	//	DisplayField *oldRoot = mgr.GetRoot();
	//	mgr.SetRoot(touchCalibInstruction);
	//	mgr.Refresh(true);

	_touch->init(DisplayX, DisplayY, DefaultTouchOrientAdjust);				// initialize the driver and clear any existing calibration

	// Draw spots on the edges of the screen, one at a time, and ask the user to touch them.
	// For the first two, we allow for the touch panel being the wrong way round.
	DoTouchCalib(DisplayX/2, touchCalibMargin, DisplayX/2, DisplayY - 1 - touchCalibMargin, true, nvData.ymin);
	if (nvData.ymin >= 4096/2)
	{
		_touch->adjustOrientation(ReverseY);
		nvData.ymin = 4095 - nvData.ymin;
	}
	DoTouchCalib(DisplayX - touchCalibMargin - 1, DisplayY/2, touchCalibMargin, DisplayY/2, false, nvData.xmax);
	if (nvData.xmax < 4096/2)
	{
		_touch->adjustOrientation(ReverseX);
		nvData.xmax = 4095 - nvData.xmax;
	}
	DoTouchCalib(DisplayX/2, DisplayY - 1 - touchCalibMargin, DisplayX/2, DisplayY - 1 - touchCalibMargin, true, nvData.ymax);
	DoTouchCalib(touchCalibMargin, DisplayY/2, touchCalibMargin, DisplayY/2, false, nvData.xmin);

	nvData.touchOrientation = _touch->getOrientation();
	_touch->calibrate(nvData.xmin, nvData.xmax, nvData.ymin, nvData.ymax, touchCalibMargin);
	nvData.touchValid=true;
	nvData.Save();
}

void Fusion3::DisplayScreen(WidgetWindow *ptrScreen)
{
	if (ptrScreen==&_homeScreen)
	{
		previousWindows.clear();
	}
	previousWindows.push(ptrAcitveWindow);
	//ptrScreen->Refresh(true);

	ptrAcitveWindow = ptrScreen;
	ptrAcitveWindow->SetDirty();
}
void Fusion3::DisplayPreviousScreen()
{
	WidgetWindow *ptrScreen;
	ptrScreen=previousWindows.pop();
	//ptrScreen->Refresh(true);
	if (ptrAcitveWindow== &_printPausedScreen)
	{
		LOG("Restore Paused screen");
	}
	if (ptrAcitveWindow== &_printScreen)
	{
		LOG("Restore Print screen");
	}
	ptrAcitveWindow = ptrScreen;
	ptrAcitveWindow->SetDirty();
}


LinkedList<Widget*> Fusion3::AddStatusBar(char * name,bool enableBackButton)
{
	LinkedList<Widget*> list;

	if (strlen(name) > 0)
	{
		Defaults::defaultFcolour=colours.titleBarTextColour;
		Defaults::defaultBcolour = colours.titleBarBackColour;
		Label *f = new Label(0, 0, DisplayX, 27,
				name, _TextAlignment::Centre);
		list.add(f);
	}

	if (enableBackButton)
	{
		Defaults::defaultFcolour=colours.buttonTextColour;
		Defaults::defaultBcolour=colours.buttonTextBackColour;
		Button *backButton = new Button(DisplayX - 60, 0, 60, "Back",
				[this](callbackOptions_t *ptrOpt)
				{  ptrOpt->touchDelay=-1;
				this->DisplayPreviousScreen();
				ptrOpt->ptrWidget->SetPressed(false);
				return true;},
				27);
		list.add(backButton);
	}

	return list;
}


LinkedList<Widget*> Fusion3::AddTemperature(bool enableHeatersOffButton)
{
	LinkedList<Widget*> list;


	uint32_t dx = 340;
	uint32_t dy = 35;

	Defaults::defaultFcolour=colours.labelTextColour;
	Defaults::defaultBcolour=colours.defaultBackColour;
	list.add(new Label(dx, dy, 60, "Bed",_TextAlignment::Centre));


	if (temperatureChange[0] == nullptr)
	{
		Defaults::defaultFcolour=colours.buttonTextColour;
		Defaults::defaultBcolour=colours.buttonTextBackColour;
		temperatureChange[0] = new Button(dx,dy + 25, 60,"0",std::bind(&Fusion3::intergerAdjustCallback, this, std::placeholders::_1));
		temperatureChange[0]->SetMaxValue(130);
	}
	list.add(temperatureChange[0]);

	if (progressTemperature[0] == nullptr)
	{
		Defaults::defaultFcolour=colours.labelTextColour;
		Defaults::defaultBcolour=colours.defaultBackColour;
		progressTemperature[0] = new VerticalProgressBar(dx + 15,dy + 55,35, 110);
		progressTemperature[0]->SetPercent(40);
	}
	list.add(progressTemperature[0]);

	if (currentTemperature[0] == nullptr)
	{
		Defaults::defaultFcolour=colours.infoTextColour;
		Defaults::defaultBcolour=colours.defaultBackColour;
		currentTemperature[0] = new Label(dx, dy + 170, 60, "0.0",_TextAlignment::Centre);
	}
	list.add(currentTemperature[0]);



	dx = 410;

	Defaults::defaultFcolour=colours.labelTextColour;
	Defaults::defaultBcolour=colours.defaultBackColour;
	list.add(new Label(dx, dy, 60, "Head",_TextAlignment::Centre));

	if (temperatureChange[1] == nullptr)
	{
		Defaults::defaultFcolour=colours.buttonTextColour;
		Defaults::defaultBcolour=colours.buttonTextBackColour;
		temperatureChange[1] = new Button(dx, dy + 25, 60, "0",
				std::bind(&Fusion3::intergerAdjustCallback, this,
						std::placeholders::_1));
		temperatureChange[1]->SetMaxValue(300);
	}
	list.add(temperatureChange[1]);

	if (progressTemperature[1] == nullptr)
	{
		Defaults::defaultFcolour=colours.labelTextColour;
		Defaults::defaultBcolour=colours.defaultBackColour;
		progressTemperature[1] = new VerticalProgressBar(dx + 15,dy + 55, 35, 110);
		progressTemperature[1]->SetPercent(40);
	}
	list.add(progressTemperature[1]);

	if (currentTemperature[1] == nullptr)
	{
		Defaults::defaultFcolour=colours.infoTextColour;
		Defaults::defaultBcolour=colours.defaultBackColour;
		currentTemperature[1] = new Label(dx, dy + 170, 60, "00.0",_TextAlignment::Centre);
	}
	list.add(currentTemperature[1]);


	if (heaterOff == nullptr)
	{
		Defaults::defaultFcolour=colours.buttonTextColour;
		Defaults::defaultBcolour=colours.buttonTextBackColour;
		heaterOff= new Button(335,240, 140,"Heaters Off",
				[this](callbackOptions_t *ptrOpt) {
			this->temperatureChange[0]->SetText("0");
			this->temperatureChange[1]->SetText("0");
			ptrOpt->touchDelay=300;
			this->UpdatePrinterTemperatures();
			return true;
		});

	}
	if (enableHeatersOffButton)
	{
		list.add(heaterOff);
	}

	return list;
}


void Fusion3::Spin()
{
	static bool first = true;
	static bool waitingPopup=false;
	static uint32_t timeScreen=0;

	bool needsRefreshed=false;
	if (first)  //if first call to the spin loop do a full refresh
	{
		first = false;
	}


//	if (ptrAcitveWindow == &_homeScreen)
//	{
//		static uint32_t lastTime = 0;
//		if ((SystemTick::GetTickCount() - lastTime) > 5000 || lastTime == 0)
//		{
//			lastTime = SystemTick::GetTickCount();
//			Machine::getInstance().RequestDirList(
//					Machine::getInstance().GetRootPath(0));
//		}
//	}

	//if we have an active alert show the popup
	if (AlertPopup::getInstance().IsActive())
	{
		if (ptrAcitveWindow != &AlertPopup::getInstance())
		{
			AlertPopup::getInstance().SetParent(ptrAcitveWindow);
			ptrAcitveWindow->WindowLostFocus();
			ptrAcitveWindow = &AlertPopup::getInstance();
			ptrAcitveWindow->SetDirty();
		}
	}

	//if we are showing a popup alert window and Duet
	// tells us to close it, lets do it
	if (ptrAcitveWindow->type == Window_Popup_Alert)
	{
		if (!AlertPopup::getInstance().IsActive())
		{
			if ((printTimeStarted+20000)<SystemTick::GetTickCount())
			{
				//we need to close the popup
				ptrAcitveWindow=((PopupWindowWidget *)ptrAcitveWindow)->GetParent();
				ptrAcitveWindow->SetDirty(); //force a refresh
			}
		}
	}



	//popup message about waiting for communications
	if (Machine::getInstance().IsDuetAlive()==false && SystemTick::GetTickCount()>4000)
	{
		WARNING("No coms");
		AlertPopup::getInstance().Set("Waiting", "Waiting for Communications",0,0);
		waitingPopup=true;
	} else if (waitingPopup)
	{
		AlertPopup::getInstance().Clear();
		if (ptrAcitveWindow == &AlertPopup::getInstance())
		{
			ptrAcitveWindow=((PopupWindowWidget *)ptrAcitveWindow)->GetParent();
			ptrAcitveWindow->SetDirty(); //force a refresh
		}
		waitingPopup=false;
	}




	//	//Check for Duet rebooting
	//	if (Machine::getInstance().DidDuetReboot())
	//	{
	//		ptrAcitveWindow=&_homeScreen;
	//		ptrAcitveWindow->SetDirty();
	//		previousWindows.clear();
	//		Machine::getInstance().ClearDuetReboot();
	//		ERROR("Reboot");
	//
	//		//lets reboot LCD
	//		// Reset the device
	//		NVIC_SystemReset() ;
	//
	//		AlertPopup::getInstance().Set("Controller Rebooted","Getting Error code",0,0);
	//
	//		const char *str,*ptr;
	//		char code[20]={0};
	//		int i,j;
	//
	//		j=0;
	//		while (strlen(code)==0 && j<10)
	//		{
	//			Machine::getInstance().Spin();
	//			str=Machine::getInstance().SendGcode("M122\n");
	//
	//			if (strlen(str)<10)
	//			{
	//				//wait a bit
	//				uint32_t t0;
	//				t0=SystemTick::GetTickCount();
	//				while ((SystemTick::GetTickCount()-t0)<2000)
	//				{
	//					Machine::getInstance().Spin();
	//				}
	//				str=Machine::getInstance().SendGcode("M122\n");
	//			}
	//
	//			//LOG("%s",str);
	//			ptr=strstr(str,"Last software reset");
	//			//LOG("%s",ptr);
	//			if (ptr)
	//			{
	//				while(*ptr != '0')
	//				{
	//					ptr++;
	//					//LOG("%c",*ptr);
	//				}
	//				i=0;
	//				while(*ptr!=',' && i<18)
	//				{
	//					code[i++]=*ptr;
	//					//LOG("%c",*ptr);
	//					ptr++;
	//				}
	//				code[i]='\0';
	//			}
	//			j++;
	//		}
	//		LOG("%s",code);
	//		char str2[40];
	//		snprintf(str2,40,"Reboot code: %s",code);
	//		AlertPopup::getInstance().Set("Controller Rebooted",str2,0,0);
	//	}


	if (ptrAcitveWindow == &_tweakScreen)
	{
		if (isPaused)
		{
			btnSwapFilament->SetVisible(true);
			btnPaused->SetVisible(false);
		}else
		{
			btnPaused->SetVisible(true);
			btnSwapFilament->SetVisible(false);
		}
	}

	if (Machine::getInstance().GetStatus() == PrinterStatus::paused)
	{
		btnSwapFilament->SetVisible(true);
		btnPaused->SetVisible(false);
	} else
	{
		btnPaused->SetVisible(true);
		btnSwapFilament->SetVisible(false);
	}

	if (Machine::getInstance().GetStatus() == PrinterStatus::idle)
	{

		if (ptrAcitveWindow == &_printScreen
				|| ptrAcitveWindow == &_printPausedScreen
				|| ptrAcitveWindow == &_tweakScreen)
		{

			ptrAcitveWindow->WindowLostFocus();
			ptrAcitveWindow=&_homeScreen;
			ptrAcitveWindow->SetDirty();
			previousWindows.clear();
			ptrAcitveWindow->Refresh(true);
		}

	}

	//if (SystemTick::GetTickCount() < 60000) //just powered up
	{
		//if we are paused, show the paused screen...
		if (Machine::getInstance().GetStatus() == PrinterStatus::paused)
		{
			if (ptrAcitveWindow != &_printPausedScreen &&
					ptrAcitveWindow != &_tweakScreen &&
					ptrAcitveWindow != &_consoleScreen &&
					ptrAcitveWindow->type == Window_Normal)
			{
				ptrAcitveWindow->WindowLostFocus();
				ptrAcitveWindow = &_printPausedScreen;
				ptrAcitveWindow->Refresh(true);
			}
		}
	}

	//update the blower speed control with the current speed
	if (ptrAcitveWindow->type == Window_Normal)
	{
		char str[20];
		uint32_t x;
		x=(int32_t)(Machine::getInstance().GetPercentFanRPM(0)+0.5);
		snprintf(str,20,"%u",x);
		btnTweakFanRPM->SetText(str);
		btnBlowerFanRPM->SetText(str);
	}

	//if we are printing then disable turning heaters off
	// also we should be on the print screen
	if (Machine::getInstance().GetStatus() == PrinterStatus::printing)
	{
		//make sure no popup is over the window before updating the printing progress
		if (ptrAcitveWindow->type == Window_Normal)
		{
			uint32_t secsElapsed,hours, mins,sec,x;
			char str[20];

			//update the elapsed time
			secsElapsed=(SystemTick::GetTickCount()-printTimeStarted)/1000;
			mins=secsElapsed/60;
			sec=secsElapsed-(mins*60);
			hours=mins/60;
			mins=mins-(hours*60);
			snprintf(str,20,"%u:%02u:%02u",hours,mins,sec);
			if (hours==0)
			{
				snprintf(str,20,"%u:%02u",mins,sec);
			}
			timeElapse->SetText(str);

			//update the remaining time
			x=Machine::getInstance().GetSecondsRemaining();
			mins=x/60;
			sec=x-(mins*60);
			hours=mins/60;
			mins=mins-(hours*60);
			snprintf(str,20,"%u:%02u:%02u",hours,mins,sec);
			if (hours==0)
			{
				snprintf(str,20,"%u:%02u",mins,sec);
			}
			timeRemaining->SetText(str);

			//update the print progress bar
			x=(uint8_t)Machine::getInstance().GetPercentPrintRemaining();
			printProgressBar->SetPercent(x);

			//if we are on the tweak screen update the speeds
			if (ptrAcitveWindow == &_tweakScreen)
			{


				x=(int32_t)(Machine::getInstance().GetPercentSpeed()+0.5);
				snprintf(str,20,"%u",x);
				btnTweakPrintSpeed->SetText(str);

				x=(int32_t)(Machine::getInstance().GetPercentExtrude(0)+0.5);
				snprintf(str,20,"%u",x);
				btnTweakFlow->SetText(str);

				float f;
				char str2[20];
				f=Machine::getInstance().GetBabySteps();
				ftoa(f,str,3,'f');


				btnTweakBabyStep->SetText(str);
				snprintf(str2,20,"%smm",str);
				_babyStepOffset->SetText(str2);
			}
		}


		if (ptrAcitveWindow->type == Window_Normal)
		{
			if (ptrAcitveWindow != &_printScreen
					&& ptrAcitveWindow != &_tweakScreen
					&& ptrAcitveWindow != &_printPausedScreen
					&& ptrAcitveWindow != &_consoleScreen
					&& ptrAcitveWindow != (WidgetWindow *) &_keyboardPopup)
			{
				ptrAcitveWindow->WindowLostFocus();
				ptrAcitveWindow = &_printScreen;
				ptrAcitveWindow->Refresh(true,nullptr);
				ptrAcitveWindow->SetDirty();
			}
		}

		heaterOff->SetVisible(false);

		//get the last temperatures such that if we pause printing we can restore
		if (Machine::getInstance().GetBedTemperatureSetPoint() > 0)
		{
			lastBedTemperatureSetPoint =
					Machine::getInstance().GetBedTemperatureSetPoint();
		}
		if (Machine::getInstance().GetHeadTemperatureSetPoint() > 0)
		{
			lastHeadTemperatureSetPoint =
					Machine::getInstance().GetHeadTemperatureSetPoint();
		}
	}

	if (Machine::getInstance().GetStatus() == PrinterStatus::idle)
	{
		//turn the heater disable button ofn if we are idle
		heaterOff->SetVisible(true);
	}




	//	if (mgr.GetRoot() == messageRoot)
	//	{
	//		MessageLog::UpdateMessages(false);
	//	}
	//	if (alertTicks != 0
	//			&& SystemTick::GetTickCount() - whenAlertReceived >= alertTicks)
	//	{
	//		ClearAlert();
	//	}


	if (SystemTick::GetTickCount() - lastTouchTime >= ignoreTouchTime)
	{
		callbackOptions_t options;
		options.ptrWidget=nullptr;
		options.type=Type_Integer;
		options.ptrTouch=_touch;


		ignoreTouchTime=100;
		uint16_t x, y;
		if (_touch->read(x, y))
		{
			lastTouchTime = SystemTick::GetTickCount();


			//LOG("Touched");
			WidgetWindow *ptrCurrentWindow = ptrAcitveWindow;
			options.touchDelay=ignoreTouchTime;
			if (ptrAcitveWindow->ProcessMousePress(x,y,&options))
			{
				TouchBeep();
				//if we have requested a different screen then lets
				// stop processing everything and switched to that screen
				if (ptrAcitveWindow != ptrCurrentWindow)
				{
					LOG("changed Screen");
					timeScreen=SystemTick::GetTickCount();
					ptrCurrentWindow->WindowLostFocus();
					ptrAcitveWindow->SetDirty();
					//ptrAcitveWindow->Refresh(true, nullptr);
				}

				if (options.touchDelay >0 && options.touchDelay >ignoreTouchTime)
				{
					ignoreTouchTime=options.touchDelay;
					LOG("touch delay %d",ignoreTouchTime);
				}

				if (options.touchDelay==-1 || ptrAcitveWindow != ptrCurrentWindow)
				{
					uint32_t t0=SystemTick::GetTickCount();
					while(_touch->pressed())
					{
						//wait for press released
						if ((SystemTick::GetTickCount() -t0)>5000)
						{
							break;
						}
					}
					ignoreTouchTime=300;

				}


				LOG("type is %d", (uint32_t)options.type);
				if (options.type==Type_PopupClosed)
				{
					PopupWindowWidget *ptr;
					ptr=(PopupWindowWidget *)ptrAcitveWindow;
					if (ptr->GetParent() == nullptr)
					{
						ERROR("popup has null parent");
					}else
					{
						ptr->WindowLostFocus();
						ptrAcitveWindow=ptr->GetParent();
						ptrAcitveWindow->SetDirty();
						ptrAcitveWindow->Refresh(true, nullptr);

						uint32_t t0=SystemTick::GetTickCount();
						while(_touch->pressed())
						{
							//wait for press released
							if ((SystemTick::GetTickCount() -t0)>5000)
							{
								break;
							}
						}
						ignoreTouchTime=300;
						ptr->SetParent(nullptr); //be safe and set parent to null
					}
				}

				if (options.type==Type_Command)
				{
					LOG("got command %s",options.cmd);
					if (0 == strcmp(options.cmd,"print"))
					{
						PopupWindowWidget *ptr;
						ptr=(PopupWindowWidget *)ptrAcitveWindow;
						printTimeStarted=SystemTick::GetTickCount();

						LOG("fname %s",(char *)options.ptrVoid);

						currentFile->SetText(Machine::getInstance().GetFileNameFromPath((const char *)options.ptrVoid));
						ptrAcitveWindow=&_printScreen;
						ptrAcitveWindow->SetDirty();
						timeScreen=SystemTick::GetTickCount();
						ptr->SetParent(nullptr); //be safe and set parent to null
						Machine::getInstance().PrintFile((const char *)options.ptrVoid);

					}
				}




			} else
			{

				if (ptrAcitveWindow->ProcessMouseRelease(x,y))
				{
					needsRefreshed=true;
				}
			}
		}
	}


	//we only want to refresh the screen when responses from Duet are done
	// this help keep screen from flickering as values update in middle of messages
	// The entire message handling needs to be rewritten to avoid this reach around.
	if (Machine::getInstance().IsResponseDone())
	{

		//if we do not have a pop up window then
		// we are not adjusting temperatures so we can set
		// the set point temperatures from the Duet
		//LOG("Window type %d",ptrAcitveWindow->type);
		if (ptrAcitveWindow->type == Window_Normal || ptrAcitveWindow->type == Window_Popup_Alert)
		{
			float *ptrFloat=Machine::getInstance().GetCurrentTemps();
			int32_t x;
			char str[20];

			//Update the temperture set points
			itoa(Machine::getInstance().GetBedTemperatureSetPoint(), str, 10);
			temperatureChange[0]->SetText(str);

			itoa(Machine::getInstance().GetHeadTemperatureSetPoint(), str, 10);
			temperatureChange[1]->SetText(str);

			//update the current temperatures
			ftoa(ptrFloat[0],str,1,'f');
			currentTemperature[0]->SetText(str);
			ftoa(ptrFloat[1],str,1,'f');
			currentTemperature[1]->SetText(str);

			//This is a bit of a hack but only update the bar graphs if we have no popups
			//if (ptrAcitveWindow->type == Window_Normal)
			{
				//update bar graph
				x=135;
				float f= (int32_t)ptrFloat[0]*100.0/(1.2*(float)x);
				progressTemperature[0]->SetPercent((uint8_t)f);
				if (Machine::getInstance().GetBedTemperatureSetPoint()==0)
				{
					progressTemperature[0]->SetForegroundColor(white);
				}else
				{
					if (fabs((float)Machine::getInstance().GetBedTemperatureSetPoint() - ptrFloat[0])<2.5)
					{
						progressTemperature[0]->SetForegroundColor(green);
					}else
					{
						progressTemperature[0]->SetForegroundColor(yellow);
					}
				}


				x=300;
				f = (int32_t) ptrFloat[1] * 100.0 / (1.2 * (float) x);
				progressTemperature[1]->SetPercent((uint8_t)f);

				if (Machine::getInstance().GetHeadTemperatureSetPoint()==0)
				{
					progressTemperature[1]->SetForegroundColor(white);
				}else
				{
					if (fabs((float)Machine::getInstance().GetHeadTemperatureSetPoint() - ptrFloat[1])<2.5)
					{
						progressTemperature[1]->SetForegroundColor(green);
					}else
					{
						progressTemperature[1]->SetForegroundColor(yellow);
					}
				}
			}

			bool allHomed=true;
			int i;
			for (i=0; i<3; i++)
			{
				if (Machine::getInstance().GetHomed(i))
				{
					homeButtons[i+1]->SetBackgroundColor(lightGreen);
				}else
				{
					homeButtons[i+1]->SetBackgroundColor(white);
					allHomed=false;
				}
			}
			if (allHomed)
			{
				homeButtons[0]->SetBackgroundColor(lightGreen);
			}else
			{
				homeButtons[0]->SetBackgroundColor(white);
			}
		}

	}
	ptrAcitveWindow->Refresh(false,nullptr);
	needsRefreshed=false;  //in theory we can refresh all the time

	//	//draw indicate the state
	//	Defaults::defaultFcolour = colours.buttonTextColour;
	//	Defaults::defaultBcolour = colours.buttonTextBackColour;
	//	lcd.setTextPos(2, 3, 1000);
	//	lcd.write(Machine::getInstance()._charState);

}

void Fusion3::UpdatePrinterTemperatures(void)
{
	int value;
	value=atoi(temperatureChange[0]->GetText());
	Machine::getInstance().SetBedTemperature(value);
	value=atoi(temperatureChange[1]->GetText());
	Machine::getInstance().SetExtruderTemperature(value);
}

bool Fusion3::intergerAdjustCallback(callbackOptions_t *ptrOpt)
{
	_integerPopup->SetParent(ptrAcitveWindow);
	_integerPopup->SetWidgetToChange((WidgetWithText *)ptrOpt->ptrWidget, Type_Integer);
	_integerPopup->Refresh(true);
	ptrAcitveWindow=_integerPopup;
	ptrAcitveWindow->SetDirty();
	return false;
}

bool Fusion3::AdjustDoneCallback(callbackOptions_t *ptrOpt)
{
	Button *ptrBtn;
	ptrAcitveWindow = _integerPopup->GetParent();
	ptrAcitveWindow->SetDirty();
	ptrBtn=(Button *)_integerPopup->GetWidgetToChange();
	_integerPopup->SetWidgetToChange(nullptr, Type_Integer);

	if (ptrBtn==nullptr)
	{
		ERROR("Can not adjust null button");
		return true;
	}

	//LOG("Adjust called");
	if (ptrBtn == temperatureChange[0] ||
			ptrBtn == temperatureChange[1])
	{
		//LOG("Updating Temperatures");
		UpdatePrinterTemperatures();
	}

	int32_t ival;
	ival=atoi(ptrBtn->GetText());
	if (ptrBtn == btnTweakFanRPM)
	{
		Machine::getInstance().SetPercentFanRPM(0,(uint8_t)ival);
	}

	if (ptrBtn == btnTweakPrintSpeed)
	{
		Machine::getInstance().SetPercentSpeed((uint8_t)ival);
	}

	if (ptrBtn == btnTweakFlow)
	{
		Machine::getInstance().SetPercentExtrudeRate(0,(uint8_t)ival);
	}

	if (ptrBtn == btnBlowerFanRPM)
	{
		Machine::getInstance().SetPercentFanRPM(0, (uint8_t) ival);
	}

	//LOG("Setting active window to dirty");
	ptrAcitveWindow->SetDirty();
	uint32_t t0=SystemTick::GetTickCount();
	while(_touch->pressed())
	{
		//wait for press released
		if ((SystemTick::GetTickCount() -t0)>5000)
		{
			break;
		}
	}
	return false;
}

bool Fusion3::resumePrinting(callbackOptions_t *ptrOpt)
{
	int32_t x;
	char str[20];
	x = atoi(temperatureChange[0]->GetText());
	if (x == 0)
	{
		itoa(lastBedTemperatureSetPoint, str, 10);
		temperatureChange[0]->SetText(str);
		Machine::getInstance().SetBedTemperature(lastBedTemperatureSetPoint);
	}

	x = atoi(temperatureChange[1]->GetText());
	if (x == 0)
	{
		itoa(lastHeadTemperatureSetPoint, str, 10);
		temperatureChange[1]->SetText(str);
		Machine::getInstance().SetExtruderTemperature(
				lastHeadTemperatureSetPoint);
	}

	this->WaitResume();
	//Machine::getInstance().ResumePrinting();
	this->DisplayScreen(&_printScreen);
	ptrOpt->ptrWidget->SetPressed(false);
	ptrOpt->ptrWidget->SetChanged(false);
	return true;
}

void Fusion3::CreateBabyStepScreen()
{
	_babySteps=new PopupWindowWidget(50, 50, 320, 150, slate, red);


	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;
	_babySteps->add(
			new IconButtonWidget(5 , 6, 30, IconCancel,
					[this](callbackOptions_t *ptrOpt)
					{  ptrOpt->touchDelay=-1; ptrOpt->type=Type_PopupClosed; ptrOpt->iValue=0; return true;}
	, 27));

	Defaults::defaultFcolour = colours.labelTextColour;
	Defaults::defaultBcolour = colours.defaultBackColour;

	_babySteps->add(
			new Label(40, 10, 277, 30, "Adjust Head Height", _TextAlignment::Centre));

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;

	uint32_t y = 50;
	uint32_t x = 50;
	uint32_t dx = 70;
	uint32_t dy = 70;
	//DO the X and Y movement buttons
	_babySteps->add(new IconButtonWidget(x , y, 80, ArrowsIn, [this](callbackOptions_t *ptrOpt) {
		float f;
		char str[20], str2[20];
		f=atof(this->_babyStepOffset->GetText());
		f=f-0.05;
		Machine::getInstance().SetZBabySteps(-0.05);
		ftoa(f,str,3,'f');
		snprintf(str2,20,"%smm",str);
		LOG("%s",str2);
		this->_babyStepOffset->SetText(str2);
		this->_babyStepOffset->SetChanged(true);
		return true;

	}));
	_babySteps->add(new IconButtonWidget(x + dx * 2, y, 80, ArrowsOut, [this](callbackOptions_t *ptrOpt) {
		float f;
		char str[20], str2[20];
		f=atof(this->_babyStepOffset->GetText());
		f=f+0.05;
		Machine::getInstance().SetZBabySteps(0.05);
		ftoa(f,str,3,'f');
		snprintf(str2,20,"%smm",str);
		LOG("%s",str2);
		this->_babyStepOffset->SetText(str2);
		this->_babyStepOffset->SetChanged(true);
		return true;
	}));

	Defaults::defaultFcolour = colours.labelTextColour;
	Defaults::defaultBcolour = colours.defaultBackColour;
	_babyStepOffset=
			new Label(10, 100, 307, 30, "0.000mm",_TextAlignment::Centre);
	_babySteps->add(_babyStepOffset);

}


void Fusion3::CreateIntegerPopup()
{
	_integerPopup = new PopupWindowWidget(30, 200, 355, 60, slate, red);

	Defaults::defaultFcolour=colours.buttonTextColour;
	Defaults::defaultBcolour=colours.buttonTextBackColour;



	_integerPopup->add(
			(Widget *) new Button(10, 15, 40, "-5",
					[](callbackOptions_t *ptrOpt)
					{   ptrOpt->type=Type_Integer; ptrOpt->iValue-=5; return true;}));
	_integerPopup->add(
			(Widget *) new Button(80, 15, 40, "-1",
					[](callbackOptions_t *ptrOpt)
					{   ptrOpt->type=Type_Integer; ptrOpt->iValue-=1; return true;}));
	_integerPopup->add(
			(Widget *) new Button(150, 15, 50, "Set",
					[this](callbackOptions_t *ptrOpt) {
		return this->AdjustDoneCallback(ptrOpt);
	}
			));
	_integerPopup->add(
			(Widget *) new Button(230, 15, 40, "+1",
					[](callbackOptions_t *ptrOpt)
					{    ptrOpt->type=Type_Integer; ptrOpt->iValue+=1; return true;}));
	_integerPopup->add(
			(Widget *) new Button(300, 15, 40, "+5",
					[](callbackOptions_t *ptrOpt)
					{    ptrOpt->type=Type_Integer; ptrOpt->iValue+=5; return true;}));
}

void Fusion3::CreateKeyBoardPopup()
{
	//TODO we should add a call back to the keyboard Popup to handle when string is returned.
	_keyboardPopup=new KeyboardPopup(0,0,480,213,slate,red);
}

void Fusion3::CreateFileListPopup()
{
	_fileListPopup=&FileListPopup::getInstance();
}

void Fusion3::CreateHomeScreen()
{
	_homeScreen.add(AddStatusBar("Home", false));
	_homeScreen.add(AddTemperature(true));

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;
	_homeScreen.add(
			new Button(40, 46, 240, "Print", [this](callbackOptions_t *ptrOpt)
					{   this->DisplayScreen(&_beginPrintingScreen); ptrOpt->ptrWidget->SetPressed(false); ptrOpt->ptrWidget->SetChanged(false); return true;},
					80));
	_homeScreen.add(
			new Button(40, 160, 240, "Maintain\nPrinter",
					[this](callbackOptions_t *ptrOpt)
					{   this->DisplayScreen(&_maintenanceScreen); ptrOpt->ptrWidget->SetPressed(false); return true;},
					80));
}

void Fusion3::CreateBeginPrinting()
{
	_beginPrintingScreen.add(AddStatusBar("Begin Printing", true));
	_beginPrintingScreen.add(AddTemperature(true));

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;

	Button *ptr = new Button(40, 40, 260, "Select\nFile",
			[this,ptr](callbackOptions_t *ptrOpt) {
		this->_fileListPopup->SetParent(this->ptrAcitveWindow);
		this->_fileListPopup->SetDirty();
		this->ptrAcitveWindow=this->_fileListPopup;
		ptr->SetPressed(false);
		ptr->SetChanged(false);
		this->_fileListPopup->SetDirty();
		//this->_fileListPopup->Refresh(true);
		return true;
	}
	, 80);
	_beginPrintingScreen.add(ptr);
	_beginPrintingScreen.add(
			new Button(40, 140, 120, "Load\nFilament", [this](callbackOptions_t *ptrOpt)
					{   Machine::getInstance().RunMacro("Load Filament.g");
					ptrOpt->ptrWidget->SetPressed(false);
					ptrOpt->ptrWidget->SetChanged(false);
					ptrOpt->touchDelay=-1;
					return true;}
	, 80));
	_beginPrintingScreen.add(
			new Button(180, 140, 120, "Swap\nFilament", [this](callbackOptions_t *ptrOpt)
					{   Machine::getInstance().RunMacro("swapFilSA1.g");
					ptrOpt->ptrWidget->SetPressed(false);
					ptrOpt->ptrWidget->SetChanged(false);
					ptrOpt->touchDelay=-1;
					return true;}
	, 80));
}

void Fusion3::WaitPause()
{
	Machine::getInstance().PausePrinting();

	//Duet kind of sucks.
	// we do not know if the pause command worked or was accpeted.
	// so we need to tell user to wait until duet actually pauses.
	// this is kind of a reach around to the LCD
	AlertPopup::getInstance().Set("Wait", "Pausing Print",0,0);
	AlertPopup::getInstance().SetParent(ptrAcitveWindow);
	ptrAcitveWindow->WindowLostFocus();
	ptrAcitveWindow = &AlertPopup::getInstance();

	ptrAcitveWindow->Refresh(true);
	uint32_t to=SystemTick::GetTickCount()-1;
	while (Machine::getInstance().GetStatus() !=PrinterStatus::paused && AlertPopup::getInstance().IsActive())
	{


		if (( (SystemTick::GetTickCount()-to)%10000) == 0)
		{
			Machine::getInstance().PausePrinting();
		}
		Machine::getInstance().Spin();

	}
	AlertPopup::getInstance().Clear();
	if (ptrAcitveWindow == &AlertPopup::getInstance())
	{
		ptrAcitveWindow=AlertPopup::getInstance().GetParent();
		ptrAcitveWindow->Refresh(true);
	}
}


void Fusion3::WaitResume()
{
	Machine::getInstance().ResumePrinting();

	//Duet kind of sucks.
	// we do not know if the pause command worked or was accpeted.
	// so we need to tell user to wait until duet actually pauses.
	// this is kind of a reach around to the LCD
	AlertPopup::getInstance().Set("Wait", "Heating head to resume print",0,0);
	AlertPopup::getInstance().SetParent(ptrAcitveWindow);
	ptrAcitveWindow->WindowLostFocus();
	ptrAcitveWindow = &AlertPopup::getInstance();

	ptrAcitveWindow->Refresh(true);
	ptrAcitveWindow->SetDirty();
	uint32_t to=SystemTick::GetTickCount()-1;
	while (Machine::getInstance().GetStatus() !=PrinterStatus::printing && AlertPopup::getInstance().IsActive())
	{


		if (( (SystemTick::GetTickCount()-to)%10000) == 0)
		{
			Machine::getInstance().ResumePrinting();
		}
		Machine::getInstance().Spin();

	}
	AlertPopup::getInstance().Clear();
	if (ptrAcitveWindow == &AlertPopup::getInstance())
	{
		ptrAcitveWindow=AlertPopup::getInstance().GetParent();
		ptrAcitveWindow->Refresh(true);
		ptrAcitveWindow->SetDirty();
	}
}


void Fusion3::WaitCancel()
{
	Machine::getInstance().CancelPrinting();

	//Duet kind of sucks.
	// we do not know if the pause command worked or was accpeted.
	// so we need to tell user to wait until duet actually pauses.
	// this is kind of a reach around to the LCD
	AlertPopup::getInstance().Set("Wait", "Canceling Print",0,0);
	AlertPopup::getInstance().SetParent(ptrAcitveWindow);
	ptrAcitveWindow->WindowLostFocus();
	ptrAcitveWindow = &AlertPopup::getInstance();

	ptrAcitveWindow->Refresh(true);
	uint32_t to=SystemTick::GetTickCount()-1;
	while (Machine::getInstance().GetStatus() !=PrinterStatus::idle && AlertPopup::getInstance().IsActive())
	{


		if (( (SystemTick::GetTickCount()-to)%10000) == 0)
		{
			Machine::getInstance().CancelPrinting();
		}
		Machine::getInstance().Spin();

	}
	AlertPopup::getInstance().Clear();
	if (ptrAcitveWindow == &AlertPopup::getInstance())
	{
		ptrAcitveWindow=AlertPopup::getInstance().GetParent();
		ptrAcitveWindow->Refresh(true);
		ptrAcitveWindow->SetDirty();
	}
}

void Fusion3::CreatePrint()
{
	_printScreen.add(AddStatusBar("Printing", false));
	_printScreen.add(AddTemperature(false));


	currentFile = new Label(20, 40, 320, 30, "Filename");
	_printScreen.add(currentFile);



	Defaults::defaultFcolour=colours.labelTextColour;
	Defaults::defaultBcolour=colours.defaultBackColour;
	printProgressBar=new HorizontalProgressBar(10,120,320,30);
	printProgressBar->SetPercent(30);
	_printScreen.add(printProgressBar);

	Defaults::defaultFcolour=colours.labelTextColour;
	Defaults::defaultBcolour=colours.defaultBackColour;
	timeElapse=new Label(10,150, 120, 30, "00:00");
	_printScreen.add(timeElapse);
	timeRemaining=new Label(200,150, 130, 30, "00:00",_TextAlignment::Right);
	_printScreen.add(timeRemaining);

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;
	_printScreen.add(
			new Button(20, 240, 120, "Tweak",
					[this](callbackOptions_t *ptrOpt)
					{
		ptrOpt->touchDelay=-1;
		this->DisplayScreen(&_tweakScreen);


		btnPaused->SetVisible(true);
		btnSwapFilament->SetVisible(false);

		ptrOpt->ptrWidget->SetPressed(false);
		ptrOpt->ptrWidget->SetChanged(false);
		return true;}));

	_printScreen.add(
			new Button(180, 240, 120, "Pause", [this](callbackOptions_t *ptrOpt)
					{
		ptrOpt->touchDelay=-1;
		this->WaitPause();
		isPaused=true;
		this->DisplayScreen(&_printPausedScreen);
		ptrOpt->ptrWidget->SetPressed(false);
		ptrOpt->ptrWidget->SetChanged(false);
		return true;
					}));

	CreatePrintPausedScreen(); //make sure this is done after the print screen
}

void Fusion3::CreatePrintPausedScreen()
{
	_printPausedScreen.add(AddStatusBar("Printing", false));
	_printPausedScreen.add(AddTemperature(true));

	_printPausedScreen.add(currentFile);

	Defaults::defaultFcolour = red; //colours.labelTextColour;
	Defaults::defaultBcolour = colours.defaultBackColour;
	_printPausedScreen.add(new Label(20, 80, 320, 30, "Print Paused"));

	_printPausedScreen.add(printProgressBar);

	_printPausedScreen.add(timeElapse);

	_printPausedScreen.add(timeRemaining);

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;

	_printPausedScreen.add(
			new Button(20, 240, 120, "Tweak",
					[this](callbackOptions_t *ptrOpt)
					{
		ptrOpt->touchDelay=-1;
		this->DisplayScreen(&_tweakScreen);
		ptrOpt->ptrWidget->SetPressed(false);
		ptrOpt->ptrWidget->SetChanged(false);
		if (isPaused)
		{
			btnPaused->SetVisible(false);
			btnSwapFilament->SetVisible(true);
		}else
		{
			btnPaused->SetVisible(true);
			btnSwapFilament->SetVisible(false);
		}
		return true;}));


	//	_printPausedScreen.add(
	//			new Button(20, 240, 160, "Swap Filament",  [this](callbackOptions_t *ptrOpt)
	//					{   Machine::getInstance().RunMacro("swapFil1.g");
	//					ptrOpt->ptrWidget->SetPressed(false);
	//					ptrOpt->touchDelay=-1;
	//					ptrOpt->ptrWidget->SetChanged(false);
	//					return true;}));

	_printPausedScreen.add(
			new Button(180, 240, 120, "Resume",
					[this](callbackOptions_t *ptrOpt)
					{
		ptrOpt->touchDelay=-1;
		return this->resumePrinting(ptrOpt);
		isPaused = false;
		this->DisplayScreen(&_printScreen);
		ptrOpt->ptrWidget->SetPressed(false);
		ptrOpt->ptrWidget->SetChanged(false);
		return true;
					}));

	_printPausedScreen.add(
			new Button(340, 240, 120, "Cancel",
					[this](callbackOptions_t *ptrOpt)
					{
		ptrOpt->touchDelay=-1;
		this->WaitCancel();
		//Machine::getInstance().Send("M0\n");
		//ptrAcitveWindow=&_homeScreen;
		//previousWindows.clear();
		return true;
					}));
}


void Fusion3::CreateMaintenanceScreen()
{
	_maintenanceScreen.add(AddStatusBar("Maintenance", true));
	_maintenanceScreen.add(AddTemperature(true));

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;
	_maintenanceScreen.add(
			new Button(20, 40, 120, "Console",
					[this](callbackOptions_t *ptrOpt)
					{   this->DisplayScreen(&_consoleScreen); ptrOpt->ptrWidget->SetPressed(false); return true;},
					60));
	_maintenanceScreen.add(
			new Button(160, 40, 120, "Filament",
					[this](callbackOptions_t *ptrOpt)
					{   this->DisplayScreen(&_filamentScreen); ptrOpt->ptrWidget->SetPressed(false); return true;},
					60));
	_maintenanceScreen.add(
			new Button(20, 120, 120, "Motors",
					[this](callbackOptions_t *ptrOpt)
					{   this->DisplayScreen(&_jogScreen); ptrOpt->ptrWidget->SetPressed(false); return true;},
					60));
	_maintenanceScreen.add(
			new Button(160, 120, 120, "Bed\nLeveling", [this](callbackOptions_t *ptrOpt)
					{   this->DisplayScreen(&_bedLeveling); ptrOpt->ptrWidget->SetPressed(false); return true;}, 60));
	_maintenanceScreen.add(
			new Button(20, 200, 120, "LCD\nSettings",
					[this](callbackOptions_t *ptrOpt)
					{   this->DisplayScreen(&_lcdSetupScreen); ptrOpt->ptrWidget->SetPressed(false); return true;},
					60));

	Defaults::defaultFcolour = colours.labelTextColour;
	Defaults::defaultBcolour = colours.defaultBackColour;
	_maintenanceScreen.add(
			new Label(160, 220, 120, 27, FUSION3_FW_VER,
					_TextAlignment::Centre));
	
}

void Fusion3::CreateConsoleScreen()
{
	_consoleScreen.add(AddStatusBar("Console", true));

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;


	ScrollText *ptr=new ScrollText(0, 30, DisplayX, DisplayY-30, DEFAULT_FONT);
	//ptr->Append("1\n2\n3\n4\n5\n6\n7\n8\nMary had a little lamb who fleece was white as snow, everywhere that mary went\n10\n11\n12\n13\n14\n15\n16\n");

	_consoleScreen.add((Widget *)new  IconButtonWidget(10, 2, 70, IconKeyboard,
			[this,ptr](callbackOptions_t *ptrOpt) {
		this->_keyboardPopup->SetParent(this->ptrAcitveWindow);
		this->_keyboardPopup->SetEnterCallback([ptr](const char *ptrStr)
				{   ptr->Append(ptrStr);
				const char *ptrStr2;
				ptrStr2=Machine::getInstance().SendGcode(ptrStr);
				//LOG("Resp: %s",ptrStr2);
				ptr->Append(ptrStr2);

				});

		this->_keyboardPopup->SetClosedCallback([this](void)
				{
			this->ptrAcitveWindow = this->_keyboardPopup->GetParent();
			this->ptrAcitveWindow->Refresh(true);

				});

		//this->_keyboardPopup->SetWidgetToChange((Widget *)ptr, Type_String);
		//this->_keyboardPopup->Refresh(true);
		this->ptrAcitveWindow=this->_keyboardPopup;
		return true;
	}
	));

	_console=ptr;
	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;

	_consoleScreen.add(_console);
}


void Fusion3::AddToConsole(const char *str)
{
	_console->Append(str);
}


void Fusion3::CreateFilamentScreen()
{

	_filamentScreen.add(AddStatusBar("Filament", true));
	_filamentScreen.add(AddTemperature(true));

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;

	_filamentScreen.add(new Button(20, 80, 120, "Load\nFilament", [this](callbackOptions_t *ptrOpt)
			{   Machine::getInstance().RunMacro("Load Filament.g");
			ptrOpt->ptrWidget->SetPressed(false);
			ptrOpt->ptrWidget->SetChanged(false);
			ptrOpt->touchDelay=-1;
			return true;}
	, 60));

	_filamentScreen.add(new Button(20, 160, 120, "Unload\nFilament", [this](callbackOptions_t *ptrOpt)
			{   Machine::getInstance().RunMacro("Unload Filament.g");
			ptrOpt->ptrWidget->SetPressed(false);
			ptrOpt->ptrWidget->SetChanged(false);
			ptrOpt->touchDelay=-1;
			return true;}
	, 60));
	_filamentScreen.add(
			new Button(160, 80, 120, "Jog\nExtruder",
					[this](callbackOptions_t *ptrOpt)
					{   this->DisplayScreen(&_jogExtruderScreen); ptrOpt->ptrWidget->SetPressed(false); return true;}
	, 60));
	_filamentScreen.add(
			new Button(160, 160, 120, "Blower\nControl",
					[this](callbackOptions_t *ptrOpt)
					{
		this->DisplayScreen(&_blowerScreen);
		ptrOpt->ptrWidget->SetPressed(false);
		return true;}

	, 60));
}

void Fusion3::CreateBlowerScreen()
{
	_blowerScreen.add(AddStatusBar("Blower Control", true));
	_blowerScreen.add(AddTemperature(true));

	Defaults::defaultFcolour = colours.labelTextColour;
	Defaults::defaultBcolour = colours.defaultBackColour;
	_blowerScreen.add(
			new Label(20, 120, 130, 30, "Fan Speed:", _TextAlignment::Right));

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;

	btnBlowerFanRPM = new Button(160, 120, 80, "0",
			std::bind(&Fusion3::intergerAdjustCallback, this,
					std::placeholders::_1), 30);
	btnBlowerFanRPM->SetMaxValue(100);
	btnBlowerFanRPM->SetUnits("%");
	_blowerScreen.add(btnBlowerFanRPM);
}

void Fusion3::CreateJogScreen()
{
	_jogScreen.add(AddStatusBar("Motors", true));

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;

	uint32_t y = 40;
	uint32_t x = 10;
	uint32_t dx = 70;
	uint32_t dy = 70;
	//DO the X and Y movement buttons
	_jogScreen.add(new IconButtonWidget(x + dx * 1, y, 80, YUpArrow, [this](callbackOptions_t *ptrOpt) {

		float x;
		switch (this->ptrJogOptions->GetOptionIndex())
		{
		case 0:
			x=100;
			break;
		case 1:
			x=10;
			break;
		case 2:
			x=1;
			break;
		case 3:
			x=0.5;
			break;
		case 4:
			x=0.05;
			break;
		}
		ptrOpt->touchDelay=100;
		Machine::getInstance().MoveYRelative(x);
		return true;
	}));

	_jogScreen.add(
			new IconButtonWidget(x, y + dy * 1, 80, XLeftArrow, [this](callbackOptions_t *ptrOpt) {
		float x;
		switch (this->ptrJogOptions->GetOptionIndex())
		{
		case 0:
			x=100;
			break;
		case 1:
			x=10;
			break;
		case 2:
			x=1;
			break;
		case 3:
			x=0.5;
			break;
		case 4:
			x=0.05;
			break;
		}
		ptrOpt->touchDelay=100;
		Machine::getInstance().MoveXRelative(-x);
		return true;
	}));
	_jogScreen.add(
			new IconButtonWidget(x + dx * 2, y + dy * 1, 80, XRightArrow,
					[this](callbackOptions_t *ptrOpt) {
		float x;
		switch (this->ptrJogOptions->GetOptionIndex())
		{
		case 0:
			x=100;
			break;
		case 1:
			x=10;
			break;
		case 2:
			x=1;
			break;
		case 3:
			x=0.5;
			break;
		case 4:
			x=0.05;
			break;
		}
		ptrOpt->touchDelay=100;
		Machine::getInstance().MoveXRelative(x); return true;
	}
			));
	_jogScreen.add(
			new IconButtonWidget(x + dx * 1, y + dy * 2, 80, YDownArrow,
					[this](callbackOptions_t *ptrOpt) {
		float x;
		switch (this->ptrJogOptions->GetOptionIndex())
		{
		case 0:
			x=100;
			break;
		case 1:
			x=10;
			break;
		case 2:
			x=1;
			break;
		case 3:
			x=0.5;
			break;
		case 4:
			x=0.05;
			break;
		}
		ptrOpt->touchDelay=100;
		Machine::getInstance().MoveYRelative(-x); return true;
	}));

	x = 240;
	y = 40;
	dx = 0;
	dy = 140;
	//DO the Z movement buttons
	_jogScreen.add(new IconButtonWidget(x, y, 80, ZUpArrow, [this](callbackOptions_t *ptrOpt) {
		float x;
		switch (this->ptrJogOptions->GetOptionIndex())
		{
		case 0:
			x=100;
			break;
		case 1:
			x=10;
			break;
		case 2:
			x=1;
			break;
		case 3:
			x=0.5;
			break;
		case 4:
			x=0.05;
			break;
		}
		ptrOpt->touchDelay=100;
		Machine::getInstance().MoveZRelative(-x); return true;
	}));
	_jogScreen.add(new IconButtonWidget(x, y + dy, 80, ZDownArrow, [this](callbackOptions_t *ptrOpt) {
		float x;
		switch (this->ptrJogOptions->GetOptionIndex())
		{
		case 0:
			x=100;
			break;
		case 1:
			x=10;
			break;
		case 2:
			x=1;
			break;
		case 3:
			x=0.5;
			break;
		case 4:
			x=0.05;
			break;
		}
		ptrOpt->touchDelay=100;
		Machine::getInstance().MoveZRelative(x); return true;
	}));


	y = 45;
	x = 355;
	dx = 0;
	dy = 40;
	Defaults::defaultFcolour = colours.labelTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;

	const char *opt[]={"100mm", "10mm","1mm","0.5mm","0.05mm"};
	ptrJogOptions=new Options(x,y,120,40,opt,5,nullptr);
	_jogScreen.add(ptrJogOptions);

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;
	homeButtons[0]=(new IconButtonWidget(0, 245, 60, IconHomeAll, [](callbackOptions_t *ptrOpt){
		Machine::getInstance().Send("G28\n");
		ptrOpt->touchDelay=300;
		return true;
	}));
	_jogScreen.add(homeButtons[0]);
	homeButtons[1]=(new IconButtonWidget(80, 245, 60, IconHomeX, [](callbackOptions_t *ptrOpt){
		Machine::getInstance().Send("G28 X0\n");
		ptrOpt->touchDelay=300;
		return true;
	}));
	_jogScreen.add(homeButtons[1]);
	homeButtons[2]=(new IconButtonWidget(160, 245, 60, IconHomeY, [](callbackOptions_t *ptrOpt){
		Machine::getInstance().Send("G28 Y0\n");
		ptrOpt->touchDelay=300;
		return true;
	}));
	_jogScreen.add(homeButtons[2]);
	homeButtons[3]=(new IconButtonWidget(240, 245, 60, IconHomeZ, [](callbackOptions_t *ptrOpt){
		Machine::getInstance().Send("G28 Z0\n");
		ptrOpt->touchDelay=300;
		return true;
	}));
	_jogScreen.add(homeButtons[3]);

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;
	_jogScreen.add(
			new Button(320, 245, _AutoWidth, "Disable Motors",
					[](callbackOptions_t *ptrOpt)
					{
		ptrOpt->touchDelay=300;
		Machine::getInstance().DisableMotors(); return true;
					}, 30));

}

void Fusion3::CreateExtruderJogScreen()
{
	_jogExtruderScreen.add(AddStatusBar("Jog Extruder", true));
	_jogExtruderScreen.add(AddTemperature(true));

	uint32_t dx = 45;
	uint32_t dy = 75;
	//DO the E movement buttons

	Defaults::defaultFcolour = colours.labelTextColour;
	Defaults::defaultBcolour = colours.defaultBackColour;
	_jogExtruderScreen.add(
			new Label(dx, dy-32, 130, 30, "extrude"));

	_jogExtruderScreen.add(
			new Label(dx+10, dy+150, 130, 30, "retract"));

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;
	_jogExtruderScreen.add(new IconButtonWidget(dx, dy, 80, EUpArrow, [this](callbackOptions_t *ptrOpt) {
		float x;
		switch (this->ptrExtruderJogOptions->GetOptionIndex())
		{
		case 0:
			x=100;
			break;
		case 1:
			x=10;
			break;
		case 2:
			x=1;
			break;
		case 3:
			x=0.5;
			break;
		case 4:
			x=0.05;
			break;
		}
		Machine::getInstance().MoveExtruderRelative(x); return true;
	}));
	_jogExtruderScreen.add(new IconButtonWidget(dx, dy+105, 80, EDownArrow, [this](callbackOptions_t *ptrOpt) {
		float x;
		switch (this->ptrExtruderJogOptions->GetOptionIndex())
		{
		case 0:
			x=100;
			break;
		case 1:
			x=10;
			break;
		case 2:
			x=1;
			break;
		case 3:
			x=0.5;
			break;
		case 4:
			x=0.05;
			break;
		}
		ptrOpt->touchDelay=100;
		Machine::getInstance().MoveExtruderRelative(-x); return true;
	}));



	uint32_t y = 55;
	uint32_t x = 170;
	Defaults::defaultFcolour = colours.labelTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;
	const char *opt[]={"100mm", "10mm","1mm","0.5mm","0.05mm"};
	ptrExtruderJogOptions=new Options(x,y,120,40,opt,5,nullptr);
	_jogExtruderScreen.add(ptrExtruderJogOptions);

}

void Fusion3::CreateBedLevelingScreen()
{
	_bedLeveling.add(AddStatusBar("Bed Leveling", true));
	_bedLeveling.add(AddTemperature(true));

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;

	_bedLeveling.add(new Button(20, 40, 220, "Manual Bed\nLeveling",
			[](callbackOptions_t *ptrOpt)
			{
		Machine::getInstance().RunMacro("MBL1.g");
		ptrOpt->touchDelay=-1;
		return true;
			}
	,60));
	_bedLeveling.add(new Button(20, 120,220 , "Automatic Bed\nLeveling",
			[](callbackOptions_t *ptrOpt)
			{

		Machine::getInstance().AutomaticBedLeveling();
		return true;
			}
	,60));

}


void Fusion3::CreateLCDSetupScreen()
{
	_lcdSetupScreen.add(AddStatusBar("LCD Screen Settings", true));
	_lcdSetupScreen.add(AddTemperature(true));

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;

	_lcdSetupScreen.add(new Button(20, 40, 120, "Volume\n-",
			[](callbackOptions_t *ptrOpt)
			{
		if (FlashData::getInstance().touchVolume>0)
		{
			FlashData::getInstance().touchVolume--;
			FlashData::getInstance().Save();
		}
		return true;
			}
	,60));
	_lcdSetupScreen.add(new Button(160, 40,120 , "Volume\n+",
			[](callbackOptions_t *ptrOpt)
			{
		if (FlashData::getInstance().touchVolume<Buzzer::MaxVolume)
		{
			FlashData::getInstance().touchVolume++;
			FlashData::getInstance().Save();
		}
		return true;
			}
	,60));
	_lcdSetupScreen.add(new Button(20, 120 ,120 , "Brightness\n-",
			[](callbackOptions_t *ptrOpt)
			{
		if (FlashData::getInstance().brightness>(Buzzer::MinBrightness+5))
		{
			FlashData::getInstance().brightness-=5;
			Buzzer::SetBacklight(FlashData::getInstance().brightness);
			FlashData::getInstance().Save();
		}
		return true;
			}
	,60));
	_lcdSetupScreen.add(new Button(160, 120,120 , "Brightness\n+",
			[](callbackOptions_t *ptrOpt)
			{
		if (FlashData::getInstance().brightness<(Buzzer::MaxBrightness-5))
		{
			FlashData::getInstance().brightness+=5;
			Buzzer::SetBacklight(FlashData::getInstance().brightness);
			FlashData::getInstance().Save();

		}
		return true;
			}
	,60));

	_lcdSetupScreen.add(new Button(20, 200,120 , "Calibrate\nTouch", [this](callbackOptions_t *ptrOpt)
			{   this->CalibrateTouch();
			this->ptrAcitveWindow->Refresh(true);
			return false;},60));
}

void Fusion3::CreateTweakScreen()
{
	_tweakScreen.add(AddStatusBar("Tweak Printing", true));
	_tweakScreen.add(AddTemperature(false));

	Defaults::defaultFcolour = colours.labelTextColour;
	Defaults::defaultBcolour = colours.defaultBackColour;

	_tweakScreen.add(
			new Label(20, 40, 130, 30, "Print Speed:", _TextAlignment::Right));
	_tweakScreen.add(
			new Label(20, 80, 130, 30, "Flow Rate:", _TextAlignment::Right));
	_tweakScreen.add(
			new Label(20, 120, 130, 30, "Fan Speed:", _TextAlignment::Right));
	_tweakScreen.add(
			new Label(20, 160, 130, 30, "Baby Step:", _TextAlignment::Right));

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;

	btnTweakPrintSpeed = new Button(160, 40, 80, "100",
			std::bind(&Fusion3::intergerAdjustCallback, this,
					std::placeholders::_1), 30);
	btnTweakPrintSpeed->SetMaxValue(240);
	btnTweakPrintSpeed->SetUnits("%");
	_tweakScreen.add(btnTweakPrintSpeed);

	btnTweakFlow = new Button(160, 80, 80, "100",
			std::bind(&Fusion3::intergerAdjustCallback, this,
					std::placeholders::_1), 30);
	btnTweakFlow->SetUnits("%");
	btnTweakFlow->SetMaxValue(240);
	_tweakScreen.add(btnTweakFlow);

	btnTweakFanRPM = new Button(160, 120, 80, "100",
			std::bind(&Fusion3::intergerAdjustCallback, this,
					std::placeholders::_1), 30);
	btnTweakFanRPM->SetUnits("%");
	btnTweakFanRPM->SetMaxValue(100);
	_tweakScreen.add(btnTweakFanRPM);

	btnTweakBabyStep = new Button(160, 160, 100, "0.000", [this](callbackOptions_t *ptrOpt) {
		_babySteps->SetParent(ptrAcitveWindow);
		_babySteps->Refresh(true);
		ptrAcitveWindow=_babySteps;
		ptrAcitveWindow->SetDirty();
		return true;
	}, 30);
	btnTweakBabyStep->SetUnits("mm");

	_tweakScreen.add(btnTweakBabyStep);


	btnPaused=(new Button(20, 240, 100, "Pause", [this](callbackOptions_t *ptrOpt)
			{
		this->WaitPause();
		isPaused=true;
		this->previousWindows.clear();
		this->previousWindows.push(&_printPausedScreen);
		//ptrScreen->Refresh(true);
		ptrAcitveWindow = &this->_tweakScreen;
		ptrAcitveWindow->SetDirty();

		ptrOpt->ptrWidget->SetPressed(false);
		btnPaused->SetVisible(false);
		btnSwapFilament->SetVisible(true);
		this->_tweakScreen.SetDirty();
		return true;
			}, 30));

	_tweakScreen.add(btnPaused);
	_tweakScreen.add(new Button(170, 240, 100, "Console", [this](callbackOptions_t *ptrOpt)
			{   this->DisplayScreen(&_consoleScreen); ptrOpt->ptrWidget->SetPressed(false); return true;}, 30));

	btnSwapFilament=(
			new Button(310, 240, 160, "Swap Filament",  [this](callbackOptions_t *ptrOpt)
					{   Machine::getInstance().RunMacro("swapFil1.g");
					ptrOpt->ptrWidget->SetPressed(false);
					ptrOpt->touchDelay=-1;
					ptrOpt->ptrWidget->SetChanged(false);
					return true;}));
	_tweakScreen.add(btnSwapFilament);
}


#if 0
if (activeTemps[0] == NULL)
{
	DisplayField::SetDefaultColours(colours.buttonTextColour,
			colours.buttonTextBackColour);

	activeTemps[0] = new IntegerButton(dy + 25, dx, 60);
	activeTemps[0]->SetEvent(evAdjustActiveTemp, 0);
	activeTemps[0]->SetValue(0);
}

if (TemperaturProgress[0] == NULL)
{
	DisplayField::SetDefaultColours(colours.labelTextColour,
			colours.defaultBackColour);
	TemperaturProgress[0] = new VProgressBar(dy + 55, dx + 15, 110, 35);
	TemperaturProgress[0]->SetPercent(40);
}
if (currentTemps[0] == NULL)
{
	DisplayField::SetDefaultColours(colours.infoTextColour,
			colours.defaultBackColour);
	currentTemps[0] = new FloatField(dy + 170, dx, tempButtonWidth,
			TextAlignment::Centre, 1);
	currentTemps[0]->SetValue(0.0);
}
mgr.AddField(activeTemps[0]);
mgr.AddField(TemperaturProgress[0]);
mgr.AddField(currentTemps[0]);


dx = 410;
DisplayField::SetDefaultColours(colours.labelTextColour,
		colours.defaultBackColour);
TextField *f4 = new TextField(dy, dx, 60, TextAlignment::Centre, "Head");
mgr.AddField(f4);

if (activeTemps[1] == NULL)
{
	DisplayField::SetDefaultColours(colours.buttonTextColour,
			colours.buttonTextBackColour);
	activeTemps[1] = new IntegerButton(dy + 25, dx, tempButtonWidth);
	activeTemps[1]->SetEvent(evAdjustActiveTemp, 1);
	activeTemps[1]->SetValue(0);
	//		headTempSet = new TextButton(dy + 25, dx, 60, "190.0",
	//				evAdjustActiveTemp);

	DisplayField::SetDefaultColours(colours.labelTextColour,
			colours.defaultBackColour);
	TemperaturProgress[1] = new VProgressBar(dy + 55, dx + 15, 110, 35);
	TemperaturProgress[1]->SetPercent(40);

	DisplayField::SetDefaultColours(colours.infoTextColour,
			colours.defaultBackColour);
	currentTemps[1] = new FloatField(dy + 170, dx, tempButtonWidth,
			TextAlignment::Centre, 1);
	currentTemps[1]->SetValue(0.0);
}
mgr.AddField(activeTemps[1]);
mgr.AddField(TemperaturProgress[1]);
mgr.AddField(currentTemps[1]);

DisplayField::SetDefaultColours(colours.buttonTextColour,
		colours.buttonTextBackColour);

if (heaterOff == NULL)
{
	heaterOff = new TextButton(240, 335, 140, "Heaters Off",
			evFusion3DisableHeaters, nullptr);
	//heaterOff->SetFont(Roboto18x22);
}
if (enableHeatersOffButton)
{
	mgr.AddField(heaterOff);
}

}

void Fusion3::SetupScreen()
{
	mgr.Reset();
	AddStatusBar("Touch Screen Settings");
	AddTemperature();

	//	DisplayField::SetDefaultColours(colours.labelTextColour, colours.defaultBackColour);
	//	// The firmware version field doubles up as an area for displaying debug messages, so make it the full width of the display
	//	mgr.AddField(fwVersionField = new TextField(row1, margin, DisplayX, TextAlignment::Left, strings->firmwareVersion, VERSION_TEXT));
	//	mgr.AddField(freeMem = new IntegerField(row2, margin, DisplayX/2 - margin, TextAlignment::Left, "Free RAM: "));
	//	mgr.AddField(touchX = new IntegerField(row2, DisplayX/2, DisplayX/4, TextAlignment::Left, "Touch: ", ","));
	//	mgr.AddField(touchY = new IntegerField(row2, (DisplayX * 3)/4, DisplayX/4, TextAlignment::Left));

	DisplayField::SetDefaultColours(colours.errorTextColour,
			colours.errorBackColour);
	mgr.AddField(
			settingsNotSavedField = new StaticTextField(row3, margin, 320,
					TextAlignment::Left, strings->settingsNotSavedText));
	settingsNotSavedField->Show(false);

	DisplayField::SetDefaultColours(colours.buttonTextColour,
			colours.buttonTextBackColour);
	//baudRateButton = AddIntegerButton(row4, 0, 3, nullptr, " baud", evSetBaudRate);
	//baudRateButton->SetValue(GetBaudRate());
	volumeButton = AddIntegerButton(row4, 1, 3, strings->volume, nullptr,
			evSetVolume);
	volumeButton->SetValue(GetVolume());
	//languageButton = AddTextButton(row4, 2, 3, LanguageTables[language].languageName, evSetLanguage, nullptr);
	AddTextButton(row4, 0, 3, strings->calibrateTouch, evCalTouch, nullptr);
	//AddTextButton(row5, 1, 3, strings->mirrorDisplay, evInvertX, nullptr);
	//AddTextButton(row5, 2, 3, strings->invertDisplay, evInvertY, nullptr);
	//coloursButton = AddTextButton(row6, 0, 3, strings->colourSchemeNames[colours.index], evSetColours, nullptr);
	//coloursButton->SetText(strings->colourSchemeNames[colours.index]);
	AddTextButton(row5, 0, 3, strings->brightnessDown, evDimmer, nullptr);
	AddTextButton(row5, 1, 3, strings->brightnessUp, evBrighter, nullptr);
	AddTextButton(row6, 0, 3, strings->saveSettings, evSaveSettings, nullptr);
	AddTextButton(row6, 1, 3, strings->clearSettings, evFactoryReset, nullptr);
	//AddTextButton(row7, 2, 3, strings->saveAndRestart, evRestart, nullptr);


	setupRoot = mgr.GetRoot();
}

// Add an integer button
IntegerButton *Fusion3::AddIntegerButton(PixelNumber row, unsigned int col,
		unsigned int numCols, const char * array null label,
		const char * array null units, Event evt)
{
	PixelNumber width = (DisplayX - 2 * margin + fieldSpacing) / numCols
			- fieldSpacing;
	PixelNumber xpos = col * (width + fieldSpacing) + margin;
	IntegerButton *f = new IntegerButton(row - 2, xpos, width, label, units);
	f->SetEvent(evt, 0);
	mgr.AddField(f);
	return f;
}


void Fusion3::CreateHomeScreen()
{
	mgr.Reset();

	AddTemperature();
	AddStatusBar("Home",false);

	DisplayField::SetDefaultColours(colours.buttonTextColour,
			colours.buttonTextBackColour);
	mgr.AddField(
			new TextButton(46, 40, 240, "Print", evFusion3Print, nullptr, 80));
	mgr.AddField(
			new TextButton(160, 40, 240, "Maintain\nPrinter",
					evFusion3Maintenance, nullptr, 80));

	homeScreen = mgr.GetRoot();
}

void Fusion3::CreateBeginPrint()
{
	mgr.Reset();
	AddStatusBar("Start Printing");
	//	DisplayField::SetDefaultColours(colours.titleBarTextColour,
	//			colours.titleBarBackColour);
	////	mgr.AddField(
	////			new StaticTextField(margin + labelRowAdjust, DisplayX / 2 - 150,
	////					300, TextAlignment::Centre, "Start Printing"));
	//
	//	StaticTextField *f = new StaticTextField(0, 0, DisplayX - 1,
	//			TextAlignment::Centre, "Start Printing");
	//	f->SetHeight(27);
	//	mgr.AddField(f);
	AddTemperature();

	DisplayField::SetDefaultColours(colours.buttonTextColour,
			colours.buttonTextBackColour);
	mgr.AddField(
			new TextButton(40, 40, 260, "Select\nFile", evListFiles,
					nullptr, 80));
	mgr.AddField(
			new TextButton(140, 40, 120, "Load\nFilament",
					evFusion3LoadFilament, nullptr, 80));
	mgr.AddField(
			new TextButton(140, 180, 120, "Swap\nFilament",
					evFusion3SwapFilament, nullptr, 80));



	//mgr.AddField(new TextButton(240, 390, 80, "Back", evFusion3Back, nullptr));
	beginPrinting = mgr.GetRoot();

}

void Fusion3::CreatePrinting()
{
	mgr.Reset();
	AddTemperature(false);
	AddStatusBar("Printing",false);
	DisplayField::SetDefaultColours(colours.labelTextColour,
			colours.defaultBackColour);
	printingFileName = new StaticTextField(30, 20, 200, TextAlignment::Centre,
			"PrintingFile.nc");
	printingFileName->SetFont(DEFAULT_LARGE_FONT);
	mgr.AddField(printingFileName);

	mgr.AddField(
			new StaticTextField(80, 20, 100, TextAlignment::Centre, "Elapsed"));
	mgr.AddField(
			new StaticTextField(80, 130, 100, TextAlignment::Centre,
					"Remaining"));

	timeElapsed = new StaticTextField(110, 20, 100, TextAlignment::Centre,
			"00:00");
	timeElapsed->SetBoarder(true);
	timeElapsed->SetFont(DEFAULT_LARGE_FONT);
	mgr.AddField(timeElapsed);

	timeRemaining = new StaticTextField(110, 130, 100, TextAlignment::Centre,
			"00:00");
	timeRemaining->SetBoarder(true);
	timeRemaining->SetFont(DEFAULT_LARGE_FONT);
	mgr.AddField(timeRemaining);

	//	ProgressBar *pbar = new ProgressBar(190, 20, 35, 430);
	//	pbar->SetPercent(95);
	//	mgr.AddField(pbar);



	DisplayField::SetDefaultColours(colours.buttonTextColour,
			colours.buttonTextBackColour);

	mgr.AddField(new TextButton(240, 20, 80, "Tweak", evFusion3Tweak, nullptr));

	mgr.AddField(new TextButton(240, 300, 80, "Pause", evCalTouch, nullptr));
	printingScreen = mgr.GetRoot();

}

void Fusion3::CreateMaintenanceScreen()
{
	mgr.Reset();

	AddStatusBar("Maintenance");
	//	DisplayField::SetDefaultColours(colours.titleBarTextColour,
	//			colours.defaultBackColour);
	//	mgr.AddField(
	//			new StaticTextField(margin + labelRowAdjust, DisplayX / 2 - 150,
	//					300, TextAlignment::Centre, "Maintenance"));

	AddTemperature();

	DisplayField::SetDefaultColours(colours.buttonTextColour,
			colours.buttonTextBackColour);

	mgr.AddField(
			new TextButton(40, 20, 120, "Console", evFusion3Console, nullptr,
					60));
	mgr.AddField(
			new TextButton(40, 160, 120, "Filament", evFusion3Filament, nullptr,
					60));
	mgr.AddField(
			new TextButton(120, 20, 120, "Motors", evFusion3Jog, nullptr, 60));
	mgr.AddField(
			new TextButton(120, 160, 120, "Bed\nLeveling", evCalTouch, nullptr,
					60));
	mgr.AddField(
			new TextButton(200, 20, 120, "Touch\nScreen", evFusion3Settings,
					nullptr, 60));



	//	mgr.AddField(new TextButton(190, 250, 200, "Disable Heaters", evCalTouch, nullptr));
	//
	//	mgr.AddField(new TextButton(240, 20, 130, "Jog / Home", evFusion3Jog, nullptr));
	//	mgr.AddField(new TextButton(240, 170, 130, "Console", evFusion3Console, nullptr));
	//	mgr.AddField(new TextButton(240, 320, 130, "Back", evFusion3Back, nullptr));
	//
	//
	//	FusionAddTemperature(language, colours);
	maintenanceScreen = mgr.GetRoot();
}

void Fusion3::CreateFilamentScreen()
{
	mgr.Reset();;

	//AddStatusBar("Filament");
	//	DisplayField::SetDefaultColours(colours.titleBarTextColour,
	//			colours.defaultBackColour);
	//	mgr.AddField(
	//			new StaticTextField(margin + labelRowAdjust, DisplayX / 2 - 150,
	//					300, TextAlignment::Centre, "Filament"));

	AddTemperature();

	DisplayField::SetDefaultColours(colours.buttonTextColour,
			colours.buttonTextBackColour);

	mgr.AddField(
			new TextButton(40, 20, 120, "Load", evFusion3Console, nullptr, 60));
	mgr.AddField(
			new TextButton(40, 160, 120, "Unload", evCalTouch, nullptr, 60));
	mgr.AddField(
			new TextButton(120, 20, 120, "Jog\nExtruder", evFusion3JogExtruder,
					nullptr, 60));
	mgr.AddField(
			new TextButton(120, 160, 120, "Blower\nControl", evCalTouch,
					nullptr, 60));
	//mgr.AddField(new TextButton(200, 20, 120, "Touch\nScreen", evFusion3Settings, nullptr,60));


	//	mgr.AddField(new TextButton(190, 250, 200, "Disable Heaters", evCalTouch, nullptr));
	//
	//	mgr.AddField(new TextButton(240, 20, 130, "Jog / Home", evFusion3Jog, nullptr));
	//	mgr.AddField(new TextButton(240, 170, 130, "Console", evFusion3Console, nullptr));
	//	mgr.AddField(new TextButton(240, 320, 130, "Back", evFusion3Back, nullptr));
	//
	//
	//	FusionAddTemperature(language, colours);
	filamentScreen = mgr.GetRoot();
}
void Fusion3::CreateTweakScreen()
{
	mgr.Reset();
	AddTemperature(false);
	DisplayField::SetDefaultColours(colours.titleBarTextColour,
			colours.titleBarBackColour);
	//	mgr.AddField(nameField);// = new StaticTextField(row1, 0, DisplayX - statusFieldWidth, TextAlignment::Centre, machineName.c_str()));
	//	mgr.AddField(statusField);// = new StaticTextField(row1, DisplayX - statusFieldWidth, statusFieldWidth, TextAlignment::Right, nullptr));

	DisplayField::SetDefaultColours(colours.buttonTextColour,
			colours.buttonTextBackColour);

	mgr.AddField(new TextButton(30, 20, 200, "Flow Rate", evCalTouch, nullptr));
	mgr.AddField(new TextButton(70, 20, 200, "Fan Speed", evCalTouch, nullptr));
	mgr.AddField(
			new TextButton(110, 20, 200, "Babby Steps", evCalTouch, nullptr));
	//mgr.AddField(new TextButton(150, 20, 200, "Disable Motors", evCalTouch, nullptr));
	//mgr.AddField(new TextButton(190, 20, 200, "Set Blower", evCalTouch, nullptr));

	//mgr.AddField(new TextButton(190, 250, 200, "Disable Heaters", evCalTouch, nullptr));

	mgr.AddField(new TextButton(240, 20, 130, "Pause", evFusion3Pause, nullptr));
	mgr.AddField(new TextButton(240, 170, 130, "Console", evFusion3Console, nullptr));
	mgr.AddField(new TextButton(240, 320, 130, "Back", evFusion3Back, nullptr));


	tweakScreen = mgr.GetRoot();
}

void Fusion3::CreateExtrudeScreen()
{

	mgr.Reset();

	AddStatusBar("Extruder");
	AddTemperature();

	uint32_t dx = 45;
	uint32_t dy = 75;
	//DO the E movement buttons
	DisplayField::SetDefaultColours(colours.buttonTextColour,
			colours.buttonTextBackColour);
	IconButton *f7 = new IconButton(dy, dx, 80, EUpArrow, evFusion3Back,
			nullptr);
	//f->SetScale(2);
	mgr.AddField(f7);
	IconButton *f8 = new IconButton(dy + 105, dx, 80, EDownArrow, evFusion3Back,
			nullptr);
	//f->SetScale(2);
	mgr.AddField(f8);

	uint32_t y = 55;
	uint32_t x = 170;
	dx = 0;
	dy = 40;
	//DisplayField::SetDefaultColours(colours.labelTextColour, colours.defaultBackColour);
	DisplayField::SetDefaultColours(colours.labelTextColour,
			colours.buttonTextBackColour);
	CheckBox *c1 = new CheckBox(y, x, 120, "100mm", evFusion3Back, nullptr);
	c1->SetChecked(true);
	mgr.AddField(c1);
	CheckBox *c2 = new CheckBox(y + dy * 1, x + dx * 1, 120, "10mm",
			evFusion3Back, nullptr);
	mgr.AddField(c2);
	CheckBox *c3 = new CheckBox(y + dy * 2, x + dx * 2, 120, "1mm",
			evFusion3Back, nullptr);
	mgr.AddField(c3);
	CheckBox *c4 = new CheckBox(y + dy * 3, x + dx * 3, 120, "0.1mm",
			evFusion3Back, nullptr);
	mgr.AddField(c4);
	CheckBox *c5 = new CheckBox(y + dy * 4, x + dx * 4, 120, "0.01mm",
			evFusion3Back, nullptr);
	mgr.AddField(c5);


	extrudeScreen = mgr.GetRoot();
}

void Fusion3::CreateJogScreen()
{
	mgr.Reset();
	AddStatusBar("Motor Jog");
	DisplayField::SetDefaultColours(colours.buttonTextColour,
			colours.buttonTextBackColour);

	uint32_t y = 30;
	uint32_t x = 10;
	uint32_t dx = 70;
	uint32_t dy = 70;
	//DO the X and Y movement buttons
	IconButton *f = new IconButton(y, x + dx * 1, 80, YUpArrow, evMovePopup,
			nullptr);
	//f->SetScale(2);
	mgr.AddField(f);
	IconButton *f2 = new IconButton(y + dy * 1, x, 80, XLeftArrow,
			evFusion3Back, nullptr);
	//f2->SetScale(2);
	mgr.AddField(f2);
	IconButton *f3 = new IconButton(y + dy * 1, x + dx * 2, 80, XRightArrow,
			evFusion3Back, nullptr);
	//f3->SetScale(2);
	mgr.AddField(f3);
	IconButton *f4 = new IconButton(y + dy * 2, x + dx * 1, 80, YDownArrow,
			evFusion3Back, nullptr);
	//f4->SetScale(2);
	mgr.AddField(f4);

	x = 240;
	y = 30;
	dx = 0;
	dy = 140;
	//DO the Z movement buttons
	IconButton *f5 = new IconButton(y, x, 80, ZUpArrow, evFusion3Back, nullptr);
	//f->SetScale(2);
	mgr.AddField(f5);
	IconButton *f6 = new IconButton(y + dy, x, 80, ZDownArrow, evFusion3Back,
			nullptr);
	//f->SetScale(2);
	mgr.AddField(f6);

	y = 35;
	x = 355;
	dx = 0;
	dy = 40;
	//DisplayField::SetDefaultColours(colours.labelTextColour, colours.defaultBackColour);
	DisplayField::SetDefaultColours(colours.labelTextColour,
			colours.buttonTextBackColour);
	CheckBox *c1 = new CheckBox(y, x, 120, "100mm", evFusion3Back, nullptr);
	c1->SetChecked(true);
	mgr.AddField(c1);
	//jogStepSizeSelection->AddField(c1);
	CheckBox *c2 = new CheckBox(y + dy * 1, x + dx * 1, 120, "10mm",
			evFusion3Back, nullptr);
	mgr.AddField(c2);
	//jogStepSizeSelection->AddField(c2);
	CheckBox *c3 = new CheckBox(y + dy * 2, x + dx * 2, 120, "1mm",
			evFusion3Back, nullptr);
	mgr.AddField(c3);
	//jogStepSizeSelection->AddField(c3);
	CheckBox *c4 = new CheckBox(y + dy * 3, x + dx * 3, 120, "0.1mm",
			evFusion3Back, nullptr);
	mgr.AddField(c4);
	//jogStepSizeSelection->AddField(c4);
	CheckBox *c5 = new CheckBox(y + dy * 4, x + dx * 4, 120, "0.01mm",
			evFusion3Back, nullptr);
	mgr.AddField(c5);
	//jogStepSizeSelection->AddField(c5);

	DisplayField::SetDefaultColours(colours.buttonTextColour,
			colours.notHomedButtonBackColour);
	homeAllButton = AddIconButton(240, 0, MAX_AXES, IconHomeAll, evSendCommand,
			"G28");
	homeButtons[0] = AddIconButton(240, 1, MAX_AXES, IconHomeX, evSendCommand,
			"G28 X0");
	homeButtons[1] = AddIconButton(240, 2, MAX_AXES, IconHomeY, evSendCommand,
			"G28 Y0");
	homeButtons[2] = AddIconButton(240, 3, MAX_AXES, IconHomeZ, evSendCommand,
			"G28 Z0");

	jogScreen = mgr.GetRoot();
}

/*
 void Fusion3CreateJogScreen(uint32_t language, const ColourScheme& colours)
 {
 mgr.Reset();

 DisplayField::SetDefaultColours(colours.titleBarTextColour, colours.titleBarBackColour);
 mgr.AddField(nameField);// = new StaticTextField(row1, 0, DisplayX - statusFieldWidth, TextAlignment::Centre, machineName.c_str()));
 mgr.AddField(statusField);// = new StaticTextField(row1, DisplayX - statusFieldWidth, statusFieldWidth, TextAlignment::Right, nullptr));


 FusionAddTemperature(language, colours);

 DisplayField::SetDefaultColours(colours.buttonTextColour, colours.buttonTextBackColour);


 uint32_t dx=5;
 uint32_t dy=25;
 //DO the X and Y movement buttons
 IconButton *f=new IconButton(dy, dx+55, 40,YUpArrow,evMovePopup, nullptr);
 //f->SetScale(2);
 mgr.AddField(f);

 IconButton *f2=new IconButton(dy+55, dx, 40,XLeftArrow,evFusion3Back, nullptr);
 //f2->SetScale(2);
 mgr.AddField(f2);

 IconButton *f3=new IconButton(dy+55, dx+110, 40,XRightArrow,evFusion3Back, nullptr);
 //f3->SetScale(2);
 mgr.AddField(f3);

 IconButton *f4=new IconButton(dy+110, dx+55, 40,YDownArrow,evFusion3Back, nullptr);
 //f4->SetScale(2);
 mgr.AddField(f4);


 dx=170;
 dy=30;
 //DO the Z movement buttons
 IconButton *f5=new IconButton(dy, dx, 40,ZUpArrow,evFusion3Back, nullptr);
 //f->SetScale(2);
 mgr.AddField(f5);
 IconButton *f6=new IconButton(dy+105, dx, 40,ZDownArrow,evFusion3Back, nullptr);
 //f->SetScale(2);
 mgr.AddField(f6);


 dx=220;
 dy=30;
 //DO the E movement buttons
 IconButton *f7=new IconButton(dy, dx, 40,EUpArrow,evFusion3Back, nullptr);
 //f->SetScale(2);
 mgr.AddField(f7);
 IconButton *f8=new IconButton(dy+105, dx, 40,EDownArrow,evFusion3Back, nullptr);
 //f->SetScale(2);
 mgr.AddField(f8);


 uint32_t y=200;
 uint32_t x=5;
 dx=80;
 dy=0;
 //DisplayField::SetDefaultColours(colours.labelTextColour, colours.defaultBackColour);
 DisplayField::SetDefaultColours(colours.labelTextColour, colours.buttonTextBackColour);
 CheckBox *c1=new CheckBox(y, x, 75, "0.01",evFusion3Back,nullptr);
 c1->SetChecked(true);
 mgr.AddField(c1);
 CheckBox *c2=new CheckBox(y+dy*1, x+dx*1, 65, "0.1",evFusion3Back,nullptr);
 mgr.AddField(c2);
 CheckBox *c3=new CheckBox(y+dy*2, x+dx*2, 75, "1.0",evFusion3Back,nullptr);
 mgr.AddField(c3);
 CheckBox *c4=new CheckBox(y+dy*3, x+dx*3, 75, "10",evFusion3Back,nullptr);
 mgr.AddField(c4);
 CheckBox *c5=new CheckBox(y+dy*4, x+dx*4, 75, "100",evFusion3Back,nullptr);
 mgr.AddField(c5);


 DisplayField::SetDefaultColours(colours.buttonTextColour, colours.notHomedButtonBackColour);
 homeAllButton = AddIconButton(240, 0, MAX_AXES + 2, IconHomeAll, evSendCommand, "G28");
 homeButtons[0] = AddIconButton(240, 1, MAX_AXES + 2, IconHomeX, evSendCommand, "G28 X0");
 homeButtons[1] = AddIconButton(240, 2, MAX_AXES + 2, IconHomeY, evSendCommand, "G28 Y0");
 homeButtons[2] = AddIconButton(240, 3, MAX_AXES + 2, IconHomeZ, evSendCommand, "G28 Z0");

 DisplayField::SetDefaultColours(colours.buttonTextColour, colours.buttonTextBackColour);
 mgr.AddField(new TextButton(240, 390, 80, "Back", evFusion3Back, nullptr));
 jogScreen=mgr.GetRoot();
 }
 */

void Fusion3::CreatePrintPausedScreen()
{
	mgr.Reset();

	AddTemperature();
	DisplayField::SetDefaultColours(colours.titleBarTextColour,
			colours.titleBarBackColour);
	//mgr.AddField(nameField);// = new StaticTextField(row1, 0, DisplayX - statusFieldWidth, TextAlignment::Centre, machineName.c_str()));
	//mgr.AddField(statusField);// = new StaticTextField(row1, DisplayX - statusFieldWidth, statusFieldWidth, TextAlignment::Right, nullptr));

	DisplayField::SetDefaultColours(colours.labelTextColour,
			colours.defaultBackColour);
	printingFileName = new StaticTextField(30, 20, 200, TextAlignment::Centre,
			"PrintingFile.nc");
	printingFileName->SetFont(DEFAULT_LARGE_FONT);
	mgr.AddField(printingFileName);

	DisplayField::SetDefaultColours(red, colours.defaultBackColour);
	StaticTextField *x = new StaticTextField(90, 20, 200, TextAlignment::Centre,
			"Printing");
	x->SetFont(DEFAULT_LARGE_FONT);
	mgr.AddField(x);

	x = new StaticTextField(130, 20, 200, TextAlignment::Centre, "Paused");
	x->SetFont(DEFAULT_LARGE_FONT);
	mgr.AddField(x);

	DisplayField::SetDefaultColours(colours.labelTextColour,
			colours.defaultBackColour);

	ProgressBar *pbar = new ProgressBar(190, 20, 35, 430);
	pbar->SetPercent(80);
	mgr.AddField(pbar);

	DisplayField::SetDefaultColours(colours.buttonTextColour,
			colours.buttonTextBackColour);

	//	mgr.AddField(new TextButton(30, 20, 200, "Flow Rate", evCalTouch, nullptr));
	//	mgr.AddField(new TextButton(70, 20, 200, "Fan Speed", evCalTouch, nullptr));
	//	mgr.AddField(new TextButton(110, 20, 200, "Baby Steps", evCalTouch, nullptr));
	//mgr.AddField(new TextButton(150, 20, 200, "Disable Motors", evCalTouch, nullptr));
	//mgr.AddField(new TextButton(190, 20, 200, "Set Blower", evCalTouch, nullptr));

	//mgr.AddField(new TextButton(190, 250, 200, "Disable Heaters", evCalTouch, nullptr));

	mgr.AddField(new TextButton(240, 10, 130, "Resume", evCalTouch, nullptr));
	mgr.AddField(
			new TextButton(240, 155, 160, "Swap Filament", evCalTouch,
					nullptr));
	mgr.AddField(new TextButton(240, 330, 130, "Cancel", evCalTouch, nullptr));


	printPausedScreen = mgr.GetRoot();
}

void Fusion3::AddStatusBar(char * name,bool enableBackButton)
{
	//add the "back" button
	if (backButton == NULL)
	{
		DisplayField::SetDefaultColours(colours.buttonTextColour,
				colours.buttonTextBackColour);
		backButton = new TextButton(0, DisplayX - 60, 60, "Back", evFusion3Back,
				nullptr);
	}
	if (enableBackButton)
	{
		mgr.AddField(backButton);
	}

	if (strlen(name) > 0)
	{
		DisplayField::SetDefaultColours(colours.titleBarTextColour,
				colours.titleBarBackColour);
		StaticTextField *f = new StaticTextField(0, 0, DisplayX,
				TextAlignment::Centre, name);
		f->SetHeight(27);
		mgr.AddField(f);
	}
	//
	//	DisplayField::SetDefaultColours(colours.titleBarTextColour, colours.titleBarBackColour);
	//	StaticTextField *f = new StaticTextField(row1, 0, 200, TextAlignment::Left, "hello");
	//	f->SetHeight(27);
	//	mgr.AddField(f);
	//	titleWindow = new StaticTextField(row1, 200, DisplayX-200, TextAlignment::Left, "Window");
	//	titleWindow->SetHeight(27);
	//	mgr.AddField(titleWindow);
}

// Create the fields for the Message tab
void Fusion3::CreateMessageScreen()
{
	mgr.Reset();
	//AddStatusBar("");
	DisplayField::SetDefaultColours(colours.buttonTextColour,
			colours.buttonImageBackColour);
	//mgr.AddField(new IconButton(margin,  DisplayX - margin - keyboardButtonWidth, keyboardButtonWidth, IconKeyboard, evKeyboard));
	mgr.AddField(
			new IconButton(margin, margin, keyboardButtonWidth, IconKeyboard,
					evKeyboard));

	DisplayField::SetDefaultColours(colours.titleBarTextColour,
			colours.defaultBackColour);
	mgr.AddField(
			new StaticTextField(margin + labelRowAdjust, DisplayX / 2 - 150,
					300, TextAlignment::Centre, strings->messages));
	//	DisplayField::SetDefaultColours(colours.labelTextColour, colours.defaultBackColour);
	//	mgr.AddField(new StaticTextField(margin + labelRowAdjust, margin, DisplayX - 2 * margin - keyboardButtonWidth, TextAlignment::Centre, strings->messages));

	PixelNumber row = firstMessageRow;
	for (unsigned int r = 0; r < numMessageRows; ++r)
	{
		StaticTextField *t = new StaticTextField(row, margin, messageTimeWidth,
				TextAlignment::Left, nullptr);
		mgr.AddField(t);
		messageTimeFields[r] = t;
		t = new StaticTextField(row, messageTextX, messageTextWidth,
				TextAlignment::Left, nullptr);
		mgr.AddField(t);
		messageTextFields[r] = t;
		row += rowTextHeight;
	}

	//	DisplayField::SetDefaultColours(colours.buttonTextColour, colours.buttonImageBackColour);
	//	mgr.AddField(new TextButton(245, 390, 80, "Back", evFusion3Back, nullptr));
	messageRoot = mgr.GetRoot();
}



// Add a text button
TextButton *Fusion3::AddTextButton(PixelNumber row, unsigned int col,
		unsigned int numCols, const char* array text, Event evt,
		const char* param, PixelNumber btHeight)
{
	PixelNumber width = (DisplayX - 2 * margin + fieldSpacing) / numCols
			- fieldSpacing;
	PixelNumber xpos = col * (width + fieldSpacing) + margin;
	TextButton *f = new TextButton(row - 2, xpos, width, text, evt, param,
			btHeight);
	mgr.AddField(f);
	return f;
}

// Add an icon button with a string parameter
IconButton *Fusion3::AddIconButton(PixelNumber row, unsigned int col,
		unsigned int numCols, Icon icon, Event evt, const char* param)
{
	PixelNumber width = (DisplayX - 2 * margin + fieldSpacing) / numCols
			- fieldSpacing;
	PixelNumber xpos = col * (width + fieldSpacing) + margin;
	IconButton *f = new IconButton(row - 2, xpos, width, icon, evt, param);
	mgr.AddField(f);
	return f;
}

// Process a touch event
void Fusion3::ProcessTouch(ButtonPress bp)
{

	if (bp.IsValid())
	{

		ButtonBase *f = bp.GetButton();
		currentButton = bp;
		mgr.Press(bp, true);
		Event ev = (Event) (f->GetEvent());
		switch (ev)
		{
		case evEmergencyStop:
		{
			SerialIo::SendString("M112\n");
			Delay(1000);
			SerialIo::SendString("M999\n");
			Reconnect();
		}
		break;


		case evFusion3DisableHeaters:
			SerialIo::SendString("M98 P");
			SerialIo::SendFilename(
					CondStripDrive(FileManager::GetMacrosDir()), "bob");
			SerialIo::SendChar('\n');

			mgr.Refresh(false);
			break;

		case evFusion3Pause:
			prevScreens.push(mgr.GetRoot());
			mgr.SetRoot(printPausedScreen);
			mgr.Refresh(true);
			break;
		case evFusion3Tweak:
			prevScreens.push(mgr.GetRoot());
			mgr.SetRoot(tweakScreen);
			mgr.Refresh(true);
			break;
		case evFusion3Print:
			prevScreens.push(mgr.GetRoot());
			mgr.SetRoot(beginPrinting);
			mgr.Refresh(true);
			break;
		case evFusion3Maintenance:
			prevScreens.push(mgr.GetRoot());
			mgr.SetRoot(maintenanceScreen);
			mgr.Refresh(true);
			break;
		case evFusion3Settings:
			prevScreens.push(mgr.GetRoot());
			mgr.SetRoot(setupRoot);
			mgr.Refresh(true);
			break;
		case evFusion3Back:

			mgr.SetRoot(prevScreens.pop());
			mgr.Refresh(true);
			break;

		case evFusion3Console:
			prevScreens.push(mgr.GetRoot());
			mgr.SetRoot(messageRoot);
			if (keyboardIsDisplayed)
			{
				mgr.SetPopup(keyboardPopup, AutoPlace, keyboardPopupY,
						false);
			}
			mgr.Refresh(true);
			break;
		case evFusion3JogExtruder:
			prevScreens.push(mgr.GetRoot());
			mgr.SetRoot(extrudeScreen);
			mgr.Refresh(true);
			break;

		case evFusion3Jog:
			prevScreens.push(mgr.GetRoot());
			mgr.SetRoot(jogScreen);
			mgr.Refresh(true);
			break;
		case evFusion3Filament:
			prevScreens.push(mgr.GetRoot());
			mgr.SetRoot(filamentScreen);
			mgr.Refresh(true);
			break;


		case evAdjustActiveTemp:
		case evAdjustStandbyTemp:
			if (static_cast<IntegerButton*>(f)->GetValue() < 0)
			{
				static_cast<IntegerButton*>(f)->SetValue(0);
			}
			Adjusting(bp);
			mgr.SetPopup(setTempPopup, AutoPlace, popupY);
			break;

		case evAdjustSpeed:
		case evExtrusionFactor:
		case evAdjustFan:
			oldIntValue =
					static_cast<IntegerButton*>(bp.GetButton())->GetValue();
			Adjusting(bp);
			mgr.SetPopup(setTempPopup, AutoPlace, popupY);
			break;

		case evSetInt:
			if (fieldBeingAdjusted.IsValid())
			{
				int val =
						static_cast<const IntegerButton*>(fieldBeingAdjusted.GetButton())->GetValue();
				switch (fieldBeingAdjusted.GetEvent())
				{
				case evAdjustActiveTemp:
				{
					int heater = fieldBeingAdjusted.GetIParam();
					if (heater == 0)
					{
						SerialIo::SendString("M140 S");
						SerialIo::SendInt(val);
						SerialIo::SendChar('\n');
					}
					else
					{
						SerialIo::SendString(
								((GetFirmwareFeatures() & noG10Temps)
										== 0) ? "G10 P" : "M104 T");
						SerialIo::SendInt(heater - 1);
						SerialIo::SendString(" S");
						SerialIo::SendInt(val);
						SerialIo::SendChar('\n');
					}
				}
				break;

				case evAdjustStandbyTemp:
				{
					int heater = fieldBeingAdjusted.GetIParam();
					if (heater > 0)
					{
						SerialIo::SendString("G10 P");
						SerialIo::SendInt(heater - 1);
						SerialIo::SendString(" R");
						SerialIo::SendInt(val);
						SerialIo::SendChar('\n');
					}
				}
				break;

				case evExtrusionFactor:
				{
					const int extruder = fieldBeingAdjusted.GetIParam();
					SerialIo::SendString("M221 D");
					SerialIo::SendInt(extruder);
					SerialIo::SendString(" S");
					SerialIo::SendInt(val);
					SerialIo::SendChar('\n');
				}
				break;

				case evAdjustFan:
					SerialIo::SendString("M106 S");
					SerialIo::SendInt((256 * val) / 100);
					SerialIo::SendChar('\n');
					break;

				default:
				{
					const char* null cmd =
							fieldBeingAdjusted.GetSParam();
					if (cmd != nullptr)
					{
						SerialIo::SendString(cmd);
						SerialIo::SendInt(val);
						SerialIo::SendChar('\n');
					}
				}
				break;
				}
				mgr.ClearPopup();
				StopAdjusting();
			}
			break;

		case evAdjustInt:
			if (fieldBeingAdjusted.IsValid())
			{
				IntegerButton *ib =
						static_cast<IntegerButton*>(fieldBeingAdjusted.GetButton());
				int newValue = ib->GetValue() + bp.GetIParam();
				switch (fieldBeingAdjusted.GetEvent())
				{
				case evAdjustActiveTemp:
				case evAdjustStandbyTemp:
					newValue = constrain<int>(newValue, 0, 1600);// some users want to print at high temperatures
					break;

				case evAdjustFan:
					newValue = constrain<int>(newValue, 0, 100);
					break;

				default:
					break;
				}
				ib->SetValue(newValue);
				ShortenTouchDelay();
			}
			break;

		case evMovePopup:
			mgr.SetPopup(movePopup, AutoPlace, AutoPlace);
			break;

		case evMoveX:
		case evMoveY:
		case evMoveZ:
		case evMoveU:
		case evMoveV:
		case evMoveW:
		{
			const uint8_t axis = ev - evMoveX;
			const char c = (axis < 3) ? 'X' + axis : ('U' - 3) + axis;
			SerialIo::SendString("G91\nG1 ");
			SerialIo::SendChar(c);
			SerialIo::SendString(bp.GetSParam());
			SerialIo::SendString(" F6000\nG90\n");
		}
		break;

		case evExtrudePopup:
			mgr.SetPopup(extrudePopup, AutoPlace, AutoPlace);
			break;

		case evExtrudeAmount:
			mgr.Press(currentExtrudeAmountPress, false);
			mgr.Press(bp, true);
			currentExtrudeAmountPress = bp;
			currentButton.Clear();	// stop it being released by the timer
			break;

		case evExtrudeRate:
			mgr.Press(currentExtrudeRatePress, false);
			mgr.Press(bp, true);
			currentExtrudeRatePress = bp;
			currentButton.Clear();	// stop it being released by the timer
			break;

		case evExtrude:
		case evRetract:
			if (currentExtrudeAmountPress.IsValid()
					&& currentExtrudeRatePress.IsValid())
			{
				SerialIo::SendString("G92 E0\nG1 E");
				if (ev == evRetract)
				{
					SerialIo::SendChar('-');
				}
				SerialIo::SendString(currentExtrudeAmountPress.GetSParam());
				SerialIo::SendString(" F");
				SerialIo::SendString(currentExtrudeRatePress.GetSParam());
				SerialIo::SendChar('\n');
			}
			break;

		case evBabyStepPopup:
			mgr.SetPopup(babystepPopup, AutoPlace, AutoPlace);
			break;

		case evBabyStepAmount:
			SerialIo::SendString("M290 ");
			SerialIo::SendString(bp.GetSParam());
			SerialIo::SendChar('\n');
			break;

		case evListFiles:

			FileManager::DisplayFilesList();
			break;

		case evListMacros:
			FileManager::DisplayMacrosList();
			break;

		case evCalTouch:
			CalibrateTouch();
			CheckSettingsAreSaved();
			break;

		case evFactoryReset:
			PopupAreYouSure(ev, strings->confirmFactoryReset);
			break;

		case evRestart:
			PopupAreYouSure(ev, strings->confirmRestart);
			break;

		case evSaveSettings:
			SaveSettings();
			if (restartNeeded)
			{
				PopupRestart();
			}
			break;

		case evFile:
		{
			const char * array fileName = bp.GetSParam();
			if (fileName != nullptr)
			{
				if (fileName[0] == '*')
				{
					// It's a directory
					FileManager::RequestFilesSubdir(fileName + 1);
					//??? need to pop up a "wait" box here
				}
				else
				{

					// It's a regular file
					currentFile = fileName;
					SerialIo::SendString(
							((GetFirmwareFeatures() & noM20M36) == 0) ?
									"M36 " : "M408 S36 P");	// ask for the file info
					SerialIo::SendFilename(
							CondStripDrive(FileManager::GetFilesDir()),
							currentFile);
					SerialIo::SendChar('\n');
					FileSelected(currentFile);
					mgr.SetPopup(filePopup, AutoPlace, AutoPlace);
				}
			}
			else
			{
				ErrorBeep();
			}
		}
		break;

		case evFilesUp:
			FileManager::RequestFilesParentDir();
			break;

		case evMacrosUp:
			FileManager::RequestMacrosParentDir();
			break;

		case evMacro:
		{
			const char *fileName = bp.GetSParam();
			if (fileName != nullptr)
			{
				if (fileName[0] == '*')		// if it's a directory
				{
					FileManager::RequestMacrosSubdir(fileName + 1);
					//??? need to pop up a "wait" box here
				}
				else
				{
					SerialIo::SendString("M98 P");
					SerialIo::SendFilename(
							CondStripDrive(FileManager::GetMacrosDir()),
							fileName);
					SerialIo::SendChar('\n');
				}
			}
			else
			{
				ErrorBeep();
			}
		}
		break;

		case evPrintFile:
		case evSimulateFile:
			mgr.ClearPopup();			// clear the file info popup
			mgr.ClearPopup();			// clear the file list popup
			if (currentFile != nullptr)
			{
				SerialIo::SendString(
						(ev == evSimulateFile) ? "M37 P" : "M32 ");
				SerialIo::SendFilename(
						CondStripDrive(
								StripPrefix(FileManager::GetFilesDir())),
								currentFile);
				SerialIo::SendChar('\n');
				printingFileName->SetValue("stupid");
				PrintingFilenameChanged(currentFile);
				currentFile = nullptr;	// allow the file list to be updated
				CurrentButtonReleased();
				prevScreens.push(mgr.GetRoot());
				mgr.SetRoot(printingScreen);
				mgr.Refresh(true);
			}
			break;

		case evCancel:
			eventToConfirm = evNull;
			currentFile = nullptr;
			CurrentButtonReleased();
			PopupCancelled();
			mgr.ClearPopup();
			break;

		case evDeleteFile:
			CurrentButtonReleased();
			PopupAreYouSure(ev, strings->confirmFileDelete);
			break;

		case evSendCommand:
		case evPausePrint:
		case evResumePrint:
		case evReset:
			SerialIo::SendString(bp.GetSParam());
			SerialIo::SendChar('\n');
			break;

		case evScrollFiles:
			FileManager::Scroll(bp.GetIParam() * GetNumScrolledFiles());
			ShortenTouchDelay();
			break;

		case evChangeCard:
			(void) FileManager::NextCard();
			break;

		case evKeyboard:
			ShowKeyboard();
			break;

		case evInvertX:
			MirrorDisplay();
			CalibrateTouch();
			CheckSettingsAreSaved();
			break;

		case evInvertY:
			InvertDisplay();
			CalibrateTouch();
			CheckSettingsAreSaved();
			break;


		case evSetVolume:
			Adjusting(bp);
			mgr.SetPopup(volumePopup, AutoPlace, popupY);
			break;

		case evSetColours:
			if (coloursPopup != nullptr)
			{
				Adjusting(bp);
				mgr.SetPopup(coloursPopup, AutoPlace, popupY);
			}
			break;

		case evBrighter:
		case evDimmer:
			ChangeBrightness(ev == evBrighter);
			CheckSettingsAreSaved();
			ShortenTouchDelay();
			break;

		case evAdjustVolume:
		{
			const int newVolume = bp.GetIParam();
			SetVolume(newVolume);
			volumeButton->SetValue(newVolume);
		}
		TouchBeep();// give audible feedback of the touch at the new volume level
		CheckSettingsAreSaved();
		break;


		case evYes:
			CurrentButtonReleased();
			mgr.ClearPopup();					// clear the yes/no popup
			switch (eventToConfirm)
			{
			case evFactoryReset:
				FactoryReset();
				break;

			case evDeleteFile:
				if (currentFile != nullptr)
				{
					mgr.ClearPopup();		// clear the file info popup
					SerialIo::SendString("M30 ");
					SerialIo::SendFilename(
							CondStripDrive(
									StripPrefix(
											FileManager::GetFilesDir())),
											currentFile);
					SerialIo::SendChar('\n');
					FileManager::RefreshFilesList();
					currentFile = nullptr;
				}
				break;

			case evRestart:
				if (IsSaveNeeded())
				{
					SaveSettings();
				}
				Restart();
				break;

			default:
				break;
			}
			eventToConfirm = evNull;
			currentFile = nullptr;
			break;

			case evKey:
				if (userCommandBuffers[currentUserCommandBuffer].add(
						(char) bp.GetIParam()))
				{
					userCommandField->SetChanged();
				}
				break;

			case evShift:
			{
				size_t rowOffset;
				if (keyboardShifted)
				{
					bp.GetButton()->Press(false, 0);
					rowOffset = 0;
				}
				else
				{
					rowOffset = 4;
				}
				for (size_t i = 0; i < 4; ++i)
				{
					keyboardRows[i]->ChangeText(currentKeyboard[i + rowOffset]);
				}
			}
			keyboardShifted = !keyboardShifted;
			currentButton.Clear();				// make the key sticky
			break;

			case evBackspace:
				if (!userCommandBuffers[currentUserCommandBuffer].isEmpty())
				{
					userCommandBuffers[currentUserCommandBuffer].erase(
							userCommandBuffers[currentUserCommandBuffer].size()
							- 1);
					userCommandField->SetChanged();
					ShortenTouchDelay();
				}
				break;

			case evUp:
				currentHistoryBuffer = (currentHistoryBuffer
						+ numUserCommandBuffers - 1) % numUserCommandBuffers;
				if (currentHistoryBuffer == currentUserCommandBuffer)
				{
					userCommandBuffers[currentUserCommandBuffer].clear();
				}
				else
				{
					userCommandBuffers[currentUserCommandBuffer].copy(
							userCommandBuffers[currentHistoryBuffer]);
				}
				userCommandField->SetChanged();
				break;

			case evDown:
				currentHistoryBuffer = (currentHistoryBuffer + 1)
				% numUserCommandBuffers;
				if (currentHistoryBuffer == currentUserCommandBuffer)
				{
					userCommandBuffers[currentUserCommandBuffer].clear();
				}
				else
				{
					userCommandBuffers[currentUserCommandBuffer].copy(
							userCommandBuffers[currentHistoryBuffer]);
				}
				userCommandField->SetChanged();
				break;

			case evSendKeyboardCommand:
				if (userCommandBuffers[currentUserCommandBuffer].size() != 0)
				{
					SerialIo::SendString(
							userCommandBuffers[currentUserCommandBuffer].c_str());
					SerialIo::SendChar('\n');

					// Add the command to the history if it was different frmo the previous command
					size_t prevBuffer = (currentUserCommandBuffer
							+ numUserCommandBuffers - 1)
																			% numUserCommandBuffers;
					if (strcmp(
							userCommandBuffers[currentUserCommandBuffer].c_str(),
							userCommandBuffers[prevBuffer].c_str()) != 0)
					{
						currentUserCommandBuffer =
								(currentUserCommandBuffer + 1)
								% numUserCommandBuffers;
					}
					currentHistoryBuffer = currentUserCommandBuffer;
					userCommandBuffers[currentUserCommandBuffer].clear();
					userCommandField->SetLabel(
							userCommandBuffers[currentUserCommandBuffer].c_str());
				}
				break;

			case evCloseAlert:
				SerialIo::SendString(bp.GetSParam());
				SerialIo::SendChar('\n');
				ClearAlert();
				break;

			default:
				break;
		}
	}
}

// Process a command to clear a message box alert
void Fusion3::ClearAlert()
{
	if (alertMode >= 0)
	{
		alertTicks = 0;
		mgr.ClearPopup(true, alertPopup);
		alertMode = -1;
	}
}


void Fusion3::Adjusting(ButtonPress bp)
{
	fieldBeingAdjusted = bp;
	if (bp == currentButton)
	{
		currentButton.Clear();		// to stop it being released
	}
}

void Fusion3::StopAdjusting()
{
	if (fieldBeingAdjusted.IsValid())
	{
		mgr.Press(fieldBeingAdjusted, false);
		fieldBeingAdjusted.Clear();
	}
}

// Create the babystep popup
void Fusion3::CreateBabystepPopup()
{
	//	static const Icon babystepIcons[2] = {IconUp, IconDown };
	static const char * array const babystepStrings[2] =
	{
			UP_ARROW " 0.05", DOWN_ARROW " 0.05"
	};
	static const char * array const babystepCommands[2] =
	{
			"M290 S0.05", "M290 S-0.05"
	};
	babystepPopup = new StandardPopupWindow(babystepPopupHeight,
			babystepPopupWidth, colours.popupBackColour,
			colours.popupBorderColour, colours.popupTextColour,
			colours.buttonImageBackColour, strings->babyStepping);
	PixelNumber ypos = popupTopMargin + babystepRowSpacing;
	DisplayField::SetDefaultColours(colours.popupTextColour,
			colours.popupBackColour);
	babystepPopup->AddField(
			babystepOffsetField = new FloatField(ypos, popupSideMargin,
					babystepPopupWidth - 2 * popupSideMargin,
					TextAlignment::Left, 3, strings->currentZoffset, "mm"));
	ypos += babystepRowSpacing;
	DisplayField::SetDefaultColours(colours.popupTextColour,
			colours.buttonImageBackColour);
	//	CreateIconButtonRow(babystepPopup, ypos, popupSideMargin, babystepPopupWidth - 2 * popupSideMargin, fieldSpacing, 2, babystepIcons, babystepCommands, evBabyStepAmount);
	CreateStringButtonRow(babystepPopup, ypos, popupSideMargin,
			babystepPopupWidth - 2 * popupSideMargin, fieldSpacing, 2,
			babystepStrings, babystepCommands, evBabyStepAmount);
}

// Show or hide the field that warns about unsaved settings
void Fusion3::CheckSettingsAreSaved()
{
	if (IsSaveAndRestartNeeded())
	{
		settingsNotSavedField->SetValue(strings->restartNeededText);
		mgr.Show(settingsNotSavedField, true);
	}
	else if (IsSaveNeeded())
	{
		settingsNotSavedField->SetValue(strings->settingsNotSavedText);
		mgr.Show(settingsNotSavedField, true);
	}
	else
	{
		mgr.Show(settingsNotSavedField, false);
	}
}

void Fusion3::PopupAreYouSure(Event ev, const char* text, const char* query)
{
	eventToConfirm = ev;
	areYouSureTextField->SetValue(text);
	areYouSureQueryField->SetValue(query);
	mgr.SetPopup(areYouSurePopup, AutoPlace, AutoPlace);
}

void Fusion3::PopupRestart()
{
	PopupAreYouSure(evRestart, "Restart required", "Restart now?");
}

// Create a row of text buttons.
// Optionally, set one to 'pressed' and return that one.
// Set the colours before calling this
ButtonPress Fusion3::CreateStringButtonRow(Window * pf, PixelNumber top,
		PixelNumber left, PixelNumber totalWidth, PixelNumber spacing,
		unsigned int numButtons, const char* array const text[],
		const char* array const params[], Event evt, int selected)
{
	const PixelNumber step = (totalWidth + spacing) / numButtons;
	ButtonPress bp;
	for (unsigned int i = 0; i < numButtons; ++i)
	{
		TextButton *tp = new TextButton(top, left + i * step, step - spacing,
				text[i], evt, params[i]);
		pf->AddField(tp);
		if ((int) i == selected)
		{
			tp->Press(true, 0);
			bp = ButtonPress(tp, 0);
		}
	}
	return bp;
}

// Pop up the keyboard
void Fusion3::ShowKeyboard()
{
	mgr.SetPopup(keyboardPopup, AutoPlace, keyboardPopupY);
	keyboardIsDisplayed = true;
}

// Nasty hack to work around bug in RepRapFirmware 1.09k and earlier
// The M23 and M30 commands don't work if we send the full path, because "0:/gcodes/" gets prepended regardless.
const char * Fusion3::StripPrefix(const char * array dir)
{
	if ((GetFirmwareFeatures() && noGcodesFolder) == 0)	// if running RepRapFirmware
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

// Adjust the brightness
void Fusion3::ChangeBrightness(bool up)
{
	int adjust = max<int>(1, GetBrightness() / 5);
	if (!up)
	{
		adjust = -adjust;
	}
	SetBrightness(GetBrightness() + adjust);
}


void Fusion3::CurrentButtonReleased()
{
	if (currentButton.IsValid())
	{
		mgr.Press(currentButton, false);
		currentButton.Clear();
	}
}

// This is called when the Cancel button on a popup is pressed
void Fusion3::PopupCancelled()
{
	if (mgr.GetPopup() == keyboardPopup)
	{
		keyboardIsDisplayed = false;
	}
}

// This is called when the user selects a new file from a list of SD card files
void Fusion3::FileSelected(const char * array null fileName)
{
	fpNameField->SetValue(fileName);
	// Clear out the old field values, they relate to the previous file we looked at until we process the response
	fpSizeField->SetValue(0);				// would be better to make it blank
	fpHeightField->SetValue(0.0);			// would be better to make it blank
	fpLayerHeightField->SetValue(0.0);		// would be better to make it blank
	fpFilamentField->SetValue(0);			// would be better to make it blank
	generatedByText.clear();
	fpGeneratedByField->SetChanged();
}

// This is called when we have just received the name of the file being printed
void Fusion3::PrintingFilenameChanged(const char data[])
{
	if (!printingFile.similar(data))
	{
		printingFile.copy(data);
		printingFileName->SetValue(data);
		//		if (currentTab == tabPrint && PrintInProgress())
		//		{
		//			nameField->SetChanged();
		//		}
	}
}

// This is called when a button press times out
void Fusion3::OnButtonPressTimeout()
{
	if (currentButton.IsValid())
	{
		CurrentButtonReleased();
	}
}


// Process a touch event outside the popup on the field being adjusted
void Fusion3::ProcessTouchOutsidePopup(ButtonPress bp)
{
	if (bp == fieldBeingAdjusted)
	{
		ignoreTouchTime = 200;
		//DelayTouchLong();// by default, ignore further touches for a long time
		TouchBeep();
		switch(fieldBeingAdjusted.GetEvent())
		{
		case evAdjustSpeed:
		case evExtrusionFactor:
		case evAdjustFan:
			static_cast<IntegerButton*>(fieldBeingAdjusted.GetButton())->SetValue(
					oldIntValue);
			mgr.ClearPopup();
			StopAdjusting();
			break;

		case evAdjustActiveTemp:
		case evAdjustStandbyTemp:
		case evSetBaudRate:
		case evSetVolume:
		case evSetColours:
			mgr.ClearPopup();
			StopAdjusting();
			break;

		case evSetLanguage:
			mgr.ClearPopup();
			StopAdjusting();
			if (IsSaveAndRestartNeeded())
			{
				restartNeeded = true;
				PopupRestart();
			}
			break;
		}
	}
	else
	{
		switch(bp.GetEvent())
		{
		case evTabControl:
		case evTabPrint:
		case evTabMsg:
		case evTabSetup:
			StopAdjusting();
			ignoreTouchTime = 200;
			//DelayTouchLong();// by default, ignore further touches for a long time
			TouchBeep();
			{
				ButtonBase *btn = bp.GetButton();
				//				if (ChangePage(btn))
				//				{
				//					currentButton.Clear();// keep the button highlighted after it is released
				//				}
			}
			break;

		case evSetBaudRate:
		case evSetVolume:
		case evSetColours:
		case evSetLanguage:
		case evCalTouch:
		case evInvertX:
		case evInvertY:
		case evSaveSettings:
		case evFactoryReset:
		case evRestart:
			// On the Setup tab, we allow any other button to be pressed to exit the current popup
			StopAdjusting();
			ignoreTouchTime = 200;
			//DelayTouchLong();// by default, ignore further touches for a long time
			TouchBeep();
			mgr.ClearPopup();
			ProcessTouch(bp);
			break;

		default:
			break;
		}
	}
}


// Create the pop-up keyboard
void Fusion3::CreateKeyboardPopup()
{
	static const char* array const keysEN[8] =
	{
			"1234567890-+",
			"QWERTYUIOP[]",
			"ASDFGHJKL:@",
			"ZXCVBNM,./",
			"!\"#$%^&*()_=",
			"qwertyuiop{}",
			"asdfghjkl;'",
			"zxcvbnm<>?"
	};
	static const char* array const keysDE[8] =
	{
			"1234567890-+",
			"QWERTZUIOP[]",
			"ASDFGHJKL:@",
			"YXCVBNM,./",
			"!\"#$%^&*()_=",
			"qwertzuiop{}",
			"asdfghjkl;'",
			"yxcvbnm<>?"
	};
	static const char* array const keysFR[8] =
	{
			"1234567890-+",
			"AZERTWUIOP[]",
			"QSDFGHJKLM@",
			"YXCVBN.,:/",
			"!\"#$%^&*()_=",
			"azertwuiop{}",
			"qsdfghjklm'",
			"yxcvbn<>;?"
	};
	static const char* array const * const keyboards[] =
	{   keysEN, keysDE, keysFR /*, keysEN */};// Spain keyboard layout is same as English

	keyboardPopup = new StandardPopupWindow(keyboardPopupHeight,
			keyboardPopupWidth, colours.popupBackColour,
			colours.popupBorderColour, colours.popupInfoTextColour,
			colours.buttonImageBackColour, nullptr, keyboardTopMargin);

	// Add the text area in which the command is built
	DisplayField::SetDefaultColours(colours.popupInfoTextColour,
			colours.popupInfoBackColour);// need a different background colour
	userCommandField = new TextField(keyboardTopMargin + labelRowAdjust,
			popupSideMargin,
			keyboardPopupWidth - 2 * popupSideMargin - closeButtonWidth
			- popupFieldSpacing, TextAlignment::Left, nullptr, "_");
	userCommandField->SetLabel(
			userCommandBuffers[currentUserCommandBuffer].c_str());// set up to display the current user command
	keyboardPopup->AddField(userCommandField);

	if (language >= ARRAY_SIZE(keyboards))
	{
		language = 0;
	}

	currentKeyboard = keyboards[language];
	PixelNumber row = keyboardTopMargin + keyButtonVStep;

	for (size_t i = 0; i < 4; ++i)
	{
		DisplayField::SetDefaultColours(colours.popupButtonTextColour,
				colours.popupButtonBackColour);
#if 1
		// New code using CharButtonRow to economise on RAM at the expense of more flash memory usage
		const PixelNumber column = popupSideMargin + (i * keyButtonHStep) / 3;
		keyboardRows[i] = new CharButtonRow(row, column, keyButtonWidth,
				keyButtonHStep, currentKeyboard[i], evKey);
		//keyboardRows[i]->SetFont(glcd19x21);
		keyboardPopup->AddField(keyboardRows[i]);
#else
		// Old code using individual buttons
		PixelNumber column = popupSideMargin + (i * keyButtonHStep)/3;
		const char * s = keys[i];
		while (*s != 0)
		{
			keyboardPopup->AddField(new CharButton(row, column, keyButtonWidth, *s, evKey));
			++s;
			column += keyButtonHStep;
		}
#endif
		DisplayField::SetDefaultColours(colours.popupButtonTextColour,
				colours.buttonImageBackColour);
		switch (i)
		{
		case 0:
			keyboardPopup->AddField(
					new IconButton(row,
							keyboardPopupWidth - popupSideMargin
							- (5 * keyButtonWidth) / 4,
							(5 * keyButtonWidth) / 4, IconBackspace,
							evBackspace));
			break;

		case 2:
		{
			TextButton *ptr = new TextButton(row,
					keyboardPopupWidth - popupSideMargin
					- (3 * keyButtonWidth) / 2,
					(3 * keyButtonWidth) / 2, UP_ARROW, evUp);
			//ptr->SetFont(glcd19x21);
			keyboardPopup->AddField(ptr);
			break;
		}
		case 3:
		{
			TextButton *ptr = new TextButton(row,
					keyboardPopupWidth - popupSideMargin
					- (3 * keyButtonWidth) / 2,
					(3 * keyButtonWidth) / 2, DOWN_ARROW, evDown);
			//ptr->SetFont(glcd19x21);
			keyboardPopup->AddField(ptr);
			break;
		}

		default:
			break;
		}
		row += keyButtonVStep;
	}

	// Add the shift, space and enter keys
	const PixelNumber keyButtonHSpace = keyButtonHStep - keyButtonWidth;
	const PixelNumber wideKeyButtonWidth = (keyboardPopupWidth
			- 2 * popupSideMargin - 2 * keyButtonHSpace) / 5;
	DisplayField::SetDefaultColours(colours.popupButtonTextColour,
			colours.popupButtonBackColour);
	keyboardPopup->AddField(
			new TextButton(row, popupSideMargin, wideKeyButtonWidth, "Shift",
					evShift, 0));
	keyboardPopup->AddField(
			new TextButton(row,
					popupSideMargin + wideKeyButtonWidth + keyButtonHSpace,
					2 * wideKeyButtonWidth, nullptr, evKey, (int) ' '));
	DisplayField::SetDefaultColours(colours.popupButtonTextColour,
			colours.buttonImageBackColour);
	keyboardPopup->AddField(
			new IconButton(row,
					popupSideMargin + 3 * wideKeyButtonWidth
					+ 2 * keyButtonHSpace, wideKeyButtonWidth,
					IconEnter, evSendKeyboardCommand));
}

// Create the volume adjustment popup
void Fusion3::CreateVolumePopup()
{
	static_assert(Buzzer::MaxVolume == 5, "MaxVolume assumed to be 5 here");
	static const char* const volumePopupText[Buzzer::MaxVolume + 1] =
	{
			"0", "1", "2", "3", "4", "5"
	};
	volumePopup = CreateIntPopupBar(fullPopupWidth,
			Buzzer::MaxVolume + 1, volumePopupText, nullptr, evAdjustVolume,
			evAdjustVolume);
}

// Create a popup bar with integer parameters
// If the 'params' parameter is null then we use 0, 1, 2.. at the parameters
PopupWindow *Fusion3::CreateIntPopupBar(PixelNumber width,
		unsigned int numEntries, const char* const text[],
		const int * null params, Event ev, Event zeroEv)
{
	PopupWindow *pf = new PopupWindow(popupBarHeight, width,
			colours.popupBackColour, colours.popupBorderColour);
	DisplayField::SetDefaultColours(colours.popupButtonTextColour,
			colours.popupButtonBackColour);
	PixelNumber step = (width - 2 * popupSideMargin + popupFieldSpacing)
																/ numEntries;
	for (unsigned int i = 0; i < numEntries; ++i)
	{
		const int iParam = (params == nullptr) ? (int) i : params[i];
		pf->AddField(
				new TextButton(popupSideMargin, popupSideMargin + i * step,
						step - popupFieldSpacing, text[i],
						(params[i] == 0) ? zeroEv : ev, iParam));
	}
	return pf;
}

void Fusion3::CreateAreYouSurePopup()
{
	areYouSurePopup = new PopupWindow(areYouSurePopupHeight,
			areYouSurePopupWidth, colours.popupBackColour,
			colours.popupBorderColour);
	DisplayField::SetDefaultColours(colours.popupTextColour,
			colours.popupBackColour);
	areYouSurePopup->AddField(
			areYouSureTextField = new StaticTextField(popupSideMargin, margin,
					areYouSurePopupWidth - 2 * margin, TextAlignment::Centre,
					nullptr));
	areYouSurePopup->AddField(
			areYouSureQueryField = new StaticTextField(
					popupTopMargin + rowHeight, margin,
					areYouSurePopupWidth - 2 * margin, TextAlignment::Centre,
					nullptr));

	DisplayField::SetDefaultColours(colours.popupButtonTextColour,
			colours.popupButtonBackColour);
	areYouSurePopup->AddField(
			new IconButton(popupTopMargin + 2 * rowHeight, popupSideMargin,
					areYouSurePopupWidth / 2 - 2 * popupSideMargin, IconOk,
					evYes));
	areYouSurePopup->AddField(
			new IconButton(popupTopMargin + 2 * rowHeight,
					areYouSurePopupWidth / 2 + 10,
					areYouSurePopupWidth / 2 - 2 * popupSideMargin, IconCancel,
					evCancel));
}




void Fusion3::CreateIntegerAdjustPopup()
{
	// Create the popup window used to adjust temperatures, fan speed, extrusion factor etc.
	static const char* const tempPopupText[] =
	{
			"-5", "-1", "Set", "+1", "+5"
	};
	static const int tempPopupParams[] =
	{
			-5, -1, 0, 1, 5
	};
	setTempPopup = CreateIntPopupBar(tempPopupBarWidth, 5,
			tempPopupText, tempPopupParams, evAdjustInt, evSetInt);
}

// Create the popup used to list files and macros
void Fusion3::CreateFileListPopup()
{
	fileListPopup = new StandardPopupWindow(fileListPopupHeight,
			fileListPopupWidth, colours.popupBackColour,
			colours.popupBorderColour, colours.popupTextColour,
			colours.buttonImageBackColour, nullptr);
	const PixelNumber closeButtonPos = fileListPopupWidth - closeButtonWidth
			- popupSideMargin;
	const PixelNumber navButtonWidth = (closeButtonPos - popupSideMargin) / 7;
	const PixelNumber upButtonPos = closeButtonPos - navButtonWidth
			- fieldSpacing;
	const PixelNumber rightButtonPos = upButtonPos - navButtonWidth
			- fieldSpacing;
	const PixelNumber leftButtonPos = rightButtonPos - navButtonWidth
			- fieldSpacing;
	const PixelNumber textPos = popupSideMargin + navButtonWidth;
	const PixelNumber changeButtonPos = popupSideMargin;

	DisplayField::SetDefaultColours(colours.popupTextColour,
			colours.popupBackColour);
	fileListPopup->AddField(
			filePopupTitleField = new IntegerField(
					popupTopMargin + labelRowAdjust, textPos,
					leftButtonPos - textPos, TextAlignment::Centre,
					strings->filesOnCard, nullptr));
	fileListPopup->AddField(
			macroPopupTitleField = new StaticTextField(
					popupTopMargin + labelRowAdjust, textPos,
					leftButtonPos - textPos, TextAlignment::Centre,
					strings->macros));

	DisplayField::SetDefaultColours(colours.popupButtonTextColour,
			colours.buttonImageBackColour);
	fileListPopup->AddField(
			changeCardButton = new IconButton(popupTopMargin, changeButtonPos,
					navButtonWidth, IconFiles, evChangeCard, 0));
	DisplayField::SetDefaultColours(colours.popupButtonTextColour,
			colours.popupButtonBackColour);
	fileListPopup->AddField(
			scrollFilesLeftButton = new TextButton(popupTopMargin,
					leftButtonPos, navButtonWidth, LEFT_ARROW, evScrollFiles,
					-1));
	scrollFilesLeftButton->SetFont(glcd19x21);
	scrollFilesLeftButton->Show(false);
	fileListPopup->AddField(
			scrollFilesRightButton = new TextButton(popupTopMargin,
					rightButtonPos, navButtonWidth, RIGHT_ARROW, evScrollFiles,
					1));
	scrollFilesRightButton->SetFont(glcd19x21);
	scrollFilesRightButton->Show(false);
	fileListPopup->AddField(
			filesUpButton = new TextButton(popupTopMargin, upButtonPos,
					navButtonWidth, UP_ARROW, evNull));
	filesUpButton->Show(false);

	const PixelNumber fileFieldWidth = (fileListPopupWidth + fieldSpacing
			- (2 * popupSideMargin)) / numFileColumns;
	unsigned int fileNum = 0;
	for (unsigned int c = 0; c < numFileColumns; ++c)
	{
		PixelNumber row = popupTopMargin;
		for (unsigned int r = 0; r < numFileRows; ++r)
		{
			row += buttonHeight + fileButtonRowSpacing;
			TextButton *t = new TextButton(row,
					(fileFieldWidth * c) + popupSideMargin,
					fileFieldWidth - fieldSpacing, nullptr, evNull);
			t->Show(false);
			fileListPopup->AddField(t);
			filenameButtons[fileNum] = t;
			++fileNum;
		}
	}

	fileListErrorField = new IntegerField(
			popupTopMargin + 2 * (buttonHeight + fileButtonRowSpacing),
			popupSideMargin, fileListPopupWidth - (2 * popupSideMargin),
			TextAlignment::Centre, strings->error, strings->accessingSdCard);
	fileListErrorField->Show(false);
	fileListPopup->AddField(fileListErrorField);
}

// Create the popup window used to display the file dialog
void Fusion3::CreateFileActionPopup()
{
	filePopup = new StandardPopupWindow(fileInfoPopupHeight, fileInfoPopupWidth,
			colours.popupBackColour, colours.popupBorderColour,
			colours.popupTextColour, colours.buttonImageBackColour,
			"File information");
	DisplayField::SetDefaultColours(colours.popupTextColour,
			colours.popupBackColour);
	PixelNumber ypos = popupTopMargin + (3 * rowTextHeight) / 2;
	fpNameField = new TextField(ypos, popupSideMargin,
			fileInfoPopupWidth - 2 * popupSideMargin, TextAlignment::Left,
			strings->fileName);
	ypos += rowTextHeight;
	fpSizeField = new IntegerField(ypos, popupSideMargin,
			fileInfoPopupWidth - 2 * popupSideMargin, TextAlignment::Left,
			strings->fileSize, " b");
	ypos += rowTextHeight;
	fpLayerHeightField = new FloatField(ypos, popupSideMargin,
			fileInfoPopupWidth - 2 * popupSideMargin, TextAlignment::Left, 2,
			strings->layerHeight, "mm");
	ypos += rowTextHeight;
	fpHeightField = new FloatField(ypos, popupSideMargin,
			fileInfoPopupWidth - 2 * popupSideMargin, TextAlignment::Left, 1,
			strings->objectHeight, "mm");
	ypos += rowTextHeight;
	fpFilamentField = new IntegerField(ypos, popupSideMargin,
			fileInfoPopupWidth - 2 * popupSideMargin, TextAlignment::Left,
			strings->filamentNeeded, "mm");
	ypos += rowTextHeight;
	fpGeneratedByField = new TextField(ypos, popupSideMargin,
			fileInfoPopupWidth - 2 * popupSideMargin, TextAlignment::Left,
			strings->generatedBy, generatedByText.c_str());
	filePopup->AddField(fpNameField);
	filePopup->AddField(fpSizeField);
	filePopup->AddField(fpLayerHeightField);
	filePopup->AddField(fpHeightField);
	filePopup->AddField(fpFilamentField);
	filePopup->AddField(fpGeneratedByField);

	// Add the buttons
	DisplayField::SetDefaultColours(colours.popupButtonTextColour,
			colours.popupButtonBackColour);
	filePopup->AddField(
			new TextButton(popupTopMargin + 8 * rowTextHeight, popupSideMargin,
					fileInfoPopupWidth / 3 - 2 * popupSideMargin,
					strings->print, evPrintFile));
	filePopup->AddField(
			new TextButton(popupTopMargin + 8 * rowTextHeight,
					fileInfoPopupWidth / 3 + popupSideMargin,
					fileInfoPopupWidth / 3 - 2 * popupSideMargin,
					strings->simulate, evSimulateFile));
	filePopup->AddField(
			new IconButton(popupTopMargin + 8 * rowTextHeight,
					(2 * fileInfoPopupWidth) / 3 + popupSideMargin,
					fileInfoPopupWidth / 3 - 2 * popupSideMargin, IconTrash,
					evDeleteFile));
}

// Update an integer field, provided it isn't the one being adjusted
// Don't update it if the value hasn't changed, because that makes the display flicker unnecessarily
void Fusion3::UpdateField(IntegerButton *f, int val)
{
	if (f != fieldBeingAdjusted.GetButton() && f->GetValue() != val)
	{
		f->SetValue(val);
	}
}

// Update an active temperature
void Fusion3::UpdateActiveTemperature(size_t index, int ival)
{
	if (index<2)
	{
		UpdateField(activeTemps[index], ival);
	}
}

void Fusion3::UpdateCurrentTemperature(size_t heater, float fval)
{
	//return;
	if (heater < 2)
	{
		if (currentTemps[heater] != nullptr)
		{
			//			float x;
			//			uint8_t percent;
			//			x = (fval * 100.0) / (float) activeTemps[heater]->GetValue();
			//			percent = (uint8_t) (x + 0.5);
			//			TemperaturProgress[heater]->SetPercent(percent);
			currentTemps[heater]->SetValue(fval);
		}
	}
}


void Fusion3::UpdateFilesListTitle(int cardNumber, unsigned int numVolumes, bool isFilesList)
{
	filePopupTitleField->SetValue(cardNumber);
	filePopupTitleField->Show(isFilesList);
	macroPopupTitleField->Show(!isFilesList);
	changeCardButton->Show(isFilesList && numVolumes > 1);
	filesUpButton->SetEvent((isFilesList) ? evFilesUp : evMacrosUp, nullptr);
	mgr.SetPopup(fileListPopup, AutoPlace, AutoPlace);
}

void Fusion3::FileListLoaded(int errCode)
{
	if (errCode == 0)
	{
		mgr.Show(fileListErrorField, false);
	}
	else
	{
		fileListErrorField->SetValue(errCode);
		mgr.Show(fileListErrorField, true);
	}
}

void Fusion3::EnableFileNavButtons(bool scrollEarlier, bool scrollLater, bool parentDir)
{
	mgr.Show(scrollFilesLeftButton, scrollEarlier);
	mgr.Show(scrollFilesRightButton, scrollLater);
	mgr.Show(filesUpButton, parentDir);
}


unsigned int Fusion3::GetNumScrolledFiles()
{
	return numFileRows;
}

// This is called in the main spin loop
void Fusion3::Spin()
{
	static bool first = true;
	if (first)  //if first call to the spin loop do a full refresh
	{
		mgr.SetRoot(homeScreen);
		mgr.Refresh(true);
		first = false;
	}

	if (mgr.GetRoot() == messageRoot)
	{
		MessageLog::UpdateMessages(false);
	}
	if (alertTicks != 0
			&& SystemTick::GetTickCount() - whenAlertReceived >= alertTicks)
	{
		ClearAlert();
	}

	if (SystemTick::GetTickCount() - lastTouchTime >= ignoreTouchTime)
	{

		OnButtonPressTimeout();
		uint16_t x, y;
		if (_touch->read(x, y))
		{

			ButtonPress bp = mgr.FindEvent(x, y);
			if (bp.IsValid())
			{
				ignoreTouchTime = 100;
				//DelayTouchLong();// by default, ignore further touches for a long time
				if (bp.GetEvent() != evAdjustVolume)
				{
					TouchBeep();// give audible feedback of the touch, unless adjusting the volume
				}
				lastTouchTime = SystemTick::GetTickCount();
				ProcessTouch(bp);
			}
			else
			{

				bp = mgr.FindEventOutsidePopup(x, y);
				if (bp.IsValid())
				{

					ProcessTouchOutsidePopup(bp);
				}
			}
		}
	}
	mgr.Refresh(false);

}
#endif

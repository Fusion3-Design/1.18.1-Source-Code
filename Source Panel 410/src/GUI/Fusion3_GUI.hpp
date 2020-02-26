/*
 * Fusion3_GUI.hpp
 *
 *  Created on: Jan 23, 2018
 *      Author: tstern
 */

#ifndef SRC_FUSION3_GUI_HPP_
#define SRC_FUSION3_GUI_HPP_

#include "Hardware/UTFT.hpp"
#include "Hardware/UTouch.hpp"
#include "Strings.hpp"
#include "Library/Vector.hpp"
#include "widgets/widgets.hpp"
#include "widgets/window.hpp"
#include "widgets/PopupWindow.hpp"
#include "widgets/KeyboardPopup.hpp"
#include "widgets/FileListPopup.hpp"
#include "widgets/Options.hpp"
#include "widgets/ScrollText.hpp"

#define FUSION3_FW_VER "FW 0.03"
//0.03 fixed extruder jog options.


//extern uint8_t Roboto_Black19x23[];
//extern uint8_t Roboto_Black24x28[];
//extern uint8_t Roboto18x22[];
//extern uint8_t Roboto25x31[];
//extern uint8_t arrows41x40[];
//
//#define DEFAULT_LARGE_FONT Roboto_Black24x28
//#define DEFAULT_FONT			Roboto_Black19x23
const size_t maxUserCommandLength = 40;	// max length of a user gcode command
const size_t numUserCommandBuffers = 6;	// number of command history buffers plus one


const size_t machineNameLength = 30;
const size_t printingFileLength = 40;
const size_t zprobeBufLength = 12;
const size_t generatedByTextLength = 50;

class Fusion3
{
	public:

		Fusion3(UTouch *touch, const ColourScheme& _colours) :
				colours(_colours), _touch(touch)
		{
		}
		void SplashScreen(UTFT &lcd);
		void CreateScreens();
		void Spin() ;
		void CalibrateTouch();
		void AddToConsole(const char *str);

	private:
		Vector<WidgetWindow*,8> previousWindows; //used for back button
		UTouch *_touch;
		uint32_t lastTouchTime;
		uint32_t ignoreTouchTime = 100;
		uint32_t language;
		bool isPaused=false;

		uint32_t printTimeStarted=0;;
		//these are used to hold the last setpoints
		// such that when we resume printing we can
		// set temperatures back.
		// These are only updated while we are printing
		int32_t lastBedTemperatureSetPoint;
		int32_t lastHeadTemperatureSetPoint;

		ColourScheme colours;
		//const StringTable * strings;

		//these are the temperature change buttons
		Button *temperatureChange[2]={nullptr};
		VerticalProgressBar  *progressTemperature[2]={nullptr};
		Label  *currentTemperature[2]={nullptr};
		Button *heaterOff=nullptr;

		Options *ptrJogOptions=nullptr;
		Options *ptrExtruderJogOptions=nullptr;
		IconButtonWidget *homeButtons[4];

		//for print screen
		Label *currentFile=nullptr;

		//for tweak screen
		Button *printPaused = nullptr; // the tweak screen is used for when printer is running and when paused
								   // if printer is paused we don't need a pause button
		Button *btnTweakFanRPM;
		Button *btnTweakPrintSpeed;
		Button *btnTweakFlow;
		Button *btnTweakBabyStep;
		Button *btnPaused;
		Button *btnSwapFilament;

		//for the blower control screen
		Button *btnBlowerFanRPM;

		HorizontalProgressBar  *printProgressBar=nullptr;
		Label *timeElapse=nullptr;
		Label *timeRemaining=nullptr;

		WidgetWindow *ptrAcitveWindow;

		PopupWindowWidget *_integerPopup;

		//console text
		ScrollText *_console;

		//baby step popup
		PopupWindowWidget *_babySteps;
		Label *_babyStepOffset;

		KeyboardPopup *_keyboardPopup;
		FileListPopup *_fileListPopup;
		WidgetWindow _temperatures;
		WidgetWindow _homeScreen;
		WidgetWindow _beginPrintingScreen;
		WidgetWindow _maintenanceScreen;
		WidgetWindow _consoleScreen;
		WidgetWindow _filamentScreen;
		WidgetWindow _jogScreen;
		WidgetWindow _jogExtruderScreen;
		WidgetWindow _lcdSetupScreen;
		WidgetWindow _printScreen;
		WidgetWindow _tweakScreen;
		WidgetWindow _printPausedScreen;
		WidgetWindow _blowerScreen;
		WidgetWindow _bedLeveling;

		void DisplayScreen(WidgetWindow *ptrScreen);
		void DisplayPreviousScreen();

		void CreateHomeScreen();
		void CreateIntegerPopup();
		void CreateKeyBoardPopup();
		void CreateFileListPopup();
		void CreateBeginPrinting();
		void CreatePrint();
		void CreateMaintenanceScreen();
		void CreateConsoleScreen();
		void CreateFilamentScreen();
		void CreateJogScreen();
		void CreateExtruderJogScreen();
		void CreateLCDSetupScreen();
		void CreateTweakScreen();
		void CreatePrintPausedScreen();
		void CreateBlowerScreen();
		void CreateBabyStepScreen();
		void CreateBedLevelingScreen();

		bool intergerAdjustCallback(callbackOptions_t *ptrOpt);
		bool AdjustDoneCallback(callbackOptions_t *ptrOpt);

		bool resumePrinting(callbackOptions_t *ptrOpt);

		void UpdatePrinterTemperatures(void);
		LinkedList<Widget*> AddStatusBar(char * name,bool enableBackButton);
		LinkedList<Widget*> AddTemperature(bool enableHeatersOffButton);

		void DoTouchCalib(PixelNumber x, PixelNumber y, PixelNumber altX, PixelNumber altY, bool wantY, uint16_t& rawRslt);
		void WaitPause();
		void WaitResume();
		void WaitCancel();
	};


#endif /* SRC_FUSION3_GUI_HPP_ */

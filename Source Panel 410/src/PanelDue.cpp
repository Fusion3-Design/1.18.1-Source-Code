// TFT panel controller to run on SAM3S2B/SAM3S4B/SAM4S4B
// Coding rules:
//
// 1. Must compile with no g++ warnings, when all warning are enabled.
// 2. Dynamic memory allocation using 'new' is permitted during the initialization phase only. No use of 'new' anywhere else,
//    and no use of 'delete', 'malloc' or 'free' anywhere.
// 3. No pure virtual functions. This is because in release builds, having pure virtual functions causes huge amounts of the C++ library to be linked in
//    (possibly because it wants to print a message if a pure virtual function is called).


// We have to temporarily allow 'array' and 'result' to be used as ordinary identifiers when including the ASF
#undef array
#undef result
#include "asf.h"


// Reinstate the eCv definitions of 'array' and 'result'
#define array _ecv_array
#define result _ecv_result

#include <cstring>
#include <cctype>

#include "Hardware/Mem.hpp"
#include "Hardware/UTFT.hpp"
#include "Hardware/UTouch.hpp"
#include "Hardware/SerialIo.hpp"
#include "Hardware/Buzzer.hpp"
#include "Hardware/SysTick.hpp"
#include "Hardware/Reset.hpp"
#include "Library/Misc.hpp"
#include "Library/Vector.hpp"
#include "GUI/ColourSchemes.hpp"


#if SAM4S
#include "flash_efc.h"
#else
#include "Hardware/FlashStorage.hpp"
#endif

#include "PanelDue.hpp"
#include "Configuration.hpp"
#include "UserInterfaceConstants.hpp"
#include "RequestTimer.hpp"
#include "PrinterStatus.hpp"

#include "Fusion3_GUI.hpp"

#include "Library/syslog.h"
#include "conf_usb.h"
#include "udc.h"
#include "Hardware/usb_handlers.h"
#include "FlashData.hpp"
#include "Machine.hpp"





// Variables

#if SAM4S

// Version 3.0
UTFT lcd(DISPLAY_CONTROLLER, 15, 14, 0, 39);
UTouch touch(8, 7, 6, 4, 1);

#elif SAM3S
// Version 1.0, 1.1, 2.0
UTFT lcd(DISPLAY_CONTROLLER, 16, 17, 18, 19);
UTouch touch(23, 24, 22, 21, 20);
#error "SAM3S"
#endif

static uint32_t lastTouchTime;
static uint32_t ignoreTouchTime;

const ColourScheme *colours = &colourSchemes[0];

Alert currentAlert;
uint32_t lastAlertSeq = 0;


#define  nvData FlashData::getInstance()


//RequestTimer machineConfigTimer(MachineConfigRequestTimeout, "M408 S1");


void Delay(uint32_t milliSeconds)
{
	const uint32_t now = SystemTick::GetTickCount();
	while (SystemTick::GetTickCount() - now < milliSeconds) { }
}


void InitLcd(DisplayOrientation dor, uint32_t language, uint32_t colourScheme)
{
	lcd.InitLCD(dor, IS_24BIT, IS_ER);									// set up the LCD
	colours = &colourSchemes[colourScheme];
	//UI::CreateFields(language, *colours);							// create all the fields
	lcd.fillScr(black);												// make sure the memory is clear
	Delay(100);														// give the LCD time to update
	Buzzer::SetBacklight(nvData.brightness);						// turn the display on
}

// Ignore touches for a long time
void DelayTouchLong()
{
	lastTouchTime = SystemTick::GetTickCount();
	ignoreTouchTime = longTouchDelay;
}

// Ignore touches for a short time instead of the long time we already asked for
void ShortenTouchDelay()
{
	ignoreTouchTime = shortTouchDelay;
}

void TouchBeep()
{
	Buzzer::Beep(touchBeepFrequency, touchBeepLength, nvData.touchVolume);	
}

void ErrorBeep()
{
	while (Buzzer::Noisy()) { }
	Buzzer::Beep(errorBeepFrequency, errorBeepLength, nvData.touchVolume);
}

// Draw a spot and wait until the user touches it, returning the touch coordinates in tx and ty.
// The alternative X and Y locations are so that the caller can allow for the touch panel being possibly inverted.
void DoTouchCalib(PixelNumber x, PixelNumber y, PixelNumber altX, PixelNumber altY, bool wantY, uint16_t& rawRslt)
{
	const PixelNumber touchCircleRadius = DisplayY/32;
	const PixelNumber touchCalibMaxError = DisplayY/6;
	
	lcd.setColor(colours->labelTextColour);
	lcd.fillCircle(x, y, touchCircleRadius);
	
	for (;;)
	{
		uint16_t tx, ty, rawX, rawY;
		if (touch.read(tx, ty, &rawX, &rawY))
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
	
	lcd.setColor(colours->defaultBackColour);
	lcd.fillCircle(x, y, touchCircleRadius);
}



/*
void CalibrateTouch()
{
	DisplayField *oldRoot = mgr.GetRoot();
	mgr.SetRoot(touchCalibInstruction);
	mgr.Refresh(true);

	touch.init(DisplayX, DisplayY, DefaultTouchOrientAdjust);				// initialize the driver and clear any existing calibration
	
	// Draw spots on the edges of the screen, one at a time, and ask the user to touch them.
	// For the first two, we allow for the touch panel being the wrong way round.
	DoTouchCalib(DisplayX/2, touchCalibMargin, DisplayX/2, DisplayY - 1 - touchCalibMargin, true, nvData.ymin);
	if (nvData.ymin >= 4096/2)
	{
		touch.adjustOrientation(ReverseY);
		nvData.ymin = 4095 - nvData.ymin;
	}
	DoTouchCalib(DisplayX - touchCalibMargin - 1, DisplayY/2, touchCalibMargin, DisplayY/2, false, nvData.xmax);
	if (nvData.xmax < 4096/2)
	{
		touch.adjustOrientation(ReverseX);
		nvData.xmax = 4095 - nvData.xmax;
	}
	DoTouchCalib(DisplayX/2, DisplayY - 1 - touchCalibMargin, DisplayX/2, DisplayY - 1 - touchCalibMargin, true, nvData.ymax);
	DoTouchCalib(touchCalibMargin, DisplayY/2, touchCalibMargin, DisplayY/2, false, nvData.xmin);
	
	nvData.touchOrientation = touch.getOrientation();
	touch.calibrate(nvData.xmin, nvData.xmax, nvData.ymin, nvData.ymax, touchCalibMargin);
	
	nvData.touchValid=true;
	nvData.Save();
	mgr.SetRoot(oldRoot);
	mgr.Refresh(true);
}
*/


// Factory reset
void FactoryReset()
{
	while (Buzzer::Noisy()) { }
	nvData.SetInvalid();
	nvData.Save();
	//savedNvData = nvData;
	Buzzer::Beep(touchBeepFrequency, 400, Buzzer::MaxVolume);		// long beep to acknowledge it
	while (Buzzer::Noisy()) { }
	Restart();														// reset the processor
}




//// Update those fields that display debug information
//void UpdateDebugInfo()
//{
//	//freeMem->SetValue(getFreeMemory());
//}

/**
 * \brief Application entry point.
 *
 * \return Unused (ANSI-C compatibility).
 */
Fusion3 Fusion3GUI(&touch, *colours);
int main(void)
{
    SystemInit();						// set up the clock etc.	
    sysclk_init();
	
	matrix_set_system_io(CCFG_SYSIO_SYSIO4 | CCFG_SYSIO_SYSIO5 | CCFG_SYSIO_SYSIO6 | CCFG_SYSIO_SYSIO7);	// enable PB4-PB7 pins
	pmc_enable_periph_clk(ID_PIOA);		// enable the PIO clock
	pmc_enable_periph_clk(ID_PIOB);		// enable the PIO clock
	pmc_enable_periph_clk(ID_PWM);		// enable the PWM clock
#if SAM4S
	pmc_enable_periph_clk(ID_UART0);	// enable UART1 clock
#else
	pmc_enable_periph_clk(ID_UART1);	// enable UART1 clock
#endif

	//flash_erase_user_signature();

	// Start USB stack to authorize VBus monitoring
	udc_start();

	SysLogInit(usbPutchar,LOG_DEBUG);

	Buzzer::Init();						// init the buzzer, must also call this before the backlight can be used

	wdt_init (WDT, WDT_MR_WDRSTEN, 1000, 1000);
	SysTick_Config(SystemCoreClock / 1000);
	lastTouchTime = SystemTick::GetTickCount();

//#warning "Remove the delay for production"
//	delay_ms(500); //this delay added for USB UART to become active

	// Read parameters from flash memory
	//nvData.SetDefaults();



	nvData.Load();





	if (nvData.IsValid())
	{
		WARNING("Loading from NVdata");
		// The touch panel has already been calibrated
		InitLcd(DefaultDisplayOrientAdjust, nvData.language,
				nvData.colourScheme); //,nvData.lcdOrientation
		touch.init(DisplayX, DisplayY, DefaultTouchOrientAdjust); //nvData.touchOrientation);
		touch.calibrate(nvData.xmin, nvData.xmax, nvData.ymin, nvData.ymax, touchCalibMargin);
	}
	else
	{
		WARNING("Setting nvData to defaults");
		// The touch panel has not been calibrated, and we do not know which way up it is
		nvData.SetDefaults();
		InitLcd(nvData.lcdOrientation, nvData.language, nvData.colourScheme);
		//touch.init(DisplayX, DisplayY, DefaultTouchOrientAdjust); //nvData.touchOrientation);
		//Fusion3 Fusion3GUI(&touch, *colours);
		Fusion3GUI.CalibrateTouch();							// this includes the touch driver initialisation
		//SaveSettings();
	}
	
	if (nvData.touchValid == false)
	{
		//Fusion3 Fusion3GUI(&touch, *colours);
		Fusion3GUI.CalibrateTouch();
	}

	// Set up the baud rate
	SerialIo::Init(nvData.baudRate);

	//Fusion3 Fusion3GUI(&touch, *colours);
	Fusion3GUI.SplashScreen(lcd);
	Fusion3GUI.CreateScreens();

	LOG("POWERUP");

	bool first=true;
	for (;;)
	{
		wdt_restart(WDT);
		//LOG("Fusion3 spin");
		Fusion3GUI.Spin();

		// 2. if displaying the message log, update the times
		wdt_restart(WDT);

		//UpdateDebugInfo();

		//LOG("MAchine spin");
		Machine::getInstance().Spin();
//
//		if (first)
//		{
//			WARNING("M115 response %s",Machine::getInstance().SendGcode("M115"));
//		}


	}
}


// Pure virtual function call handler, to avoid pulling in large chunks of the standard library
extern "C" void __cxa_pure_virtual() { while (1); }

extern "C" int _write(int iFileHandle, char *pcBuffer, int iLength) {};
extern "C" int _read(void) {};
// End

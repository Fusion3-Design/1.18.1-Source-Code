/*
 * PanelDue.hpp
 *
 * Created: 06/12/2014 14:23:38
 *  Author: David
 */ 

#ifndef PANELDUE_H_
#define PANELDUE_H_

#include "Hardware/UTFT.hpp"
#include "RequestTimer.hpp"
#include "PrinterStatus.hpp"
#include "FirmwareFeatures.hpp"
#include "Library/Vector.hpp"

const size_t alertTextLength = 110;		// maximum characters in the alert text
const size_t alertTitleLength = 50;		// maximum characters in the alert title



// Functions called from module UserInterface
extern bool PrintInProgress();
extern PrinterStatus GetStatus();
extern void DelayTouchLong();
extern void ShortenTouchDelay();
extern void TouchBeep();
extern void ErrorBeep();
extern void CalibrateTouch();

// Functions called from module UserInterface to manipulate non-volatile settings and associated hardware
extern void FactoryReset();
extern void SaveSettings();
extern bool IsSaveAndRestartNeeded();
extern bool IsSaveNeeded();
extern void MirrorDisplay();
extern void InvertDisplay();
extern void SetBaudRate(uint32_t rate);
extern void SetBrightness (int percent);
extern void SetVolume(uint32_t newVolume);
extern void SetColourScheme(uint32_t newColours);
extern void SetLanguage(uint32_t newLanguage);
extern uint32_t GetBaudRate();
extern int GetBrightness();
extern uint32_t GetVolume();
extern FirmwareFeatures GetFirmwareFeatures();
extern const char*  CondStripDrive(const char*  arg);
extern void Reconnect();
extern void Delay(uint32_t milliSeconds);

// Global data in PanelDue.cpp that is used elsewhere
extern UTFT lcd;
class ColourScheme;
extern const ColourScheme *colours;

const size_t MIN_AXES = 3;					// the minimum number of axes we support


struct Alert
{
	int32_t mode;
	uint32_t seq;
	uint32_t controls;
	float timeout;
	String<50> title;
	String<alertTextLength> text;
	uint8_t flags;

	static constexpr uint8_t GotMode = 0x01;
	static constexpr uint8_t GotSeq = 0x02;
	static constexpr uint8_t GotTimeout = 0x04;
	static constexpr uint8_t GotTitle = 0x08;
	static constexpr uint8_t GotText = 0x10;
	static constexpr uint8_t GotControls = 0x20;
	static constexpr uint8_t GotAll = GotMode | GotSeq | GotTimeout | GotTitle | GotText | GotControls;

	Alert() { flags = 0; }
};

#endif /* PANELDUE_H_ */

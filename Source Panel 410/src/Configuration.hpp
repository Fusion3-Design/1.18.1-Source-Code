/*
 * Configuration.hpp
 *
 * Created: 16/01/2015 13:18:16
 *  Author: David
 */ 


#ifndef CONFIGURATION_H_
#define CONFIGURATION_H_

#include <cstdint>

#define VERSION_TEXT		"1.20beta1"


// Controlling constants
const uint32_t touchBeepLength = 20;				// beep length in ms
const uint32_t touchBeepFrequency = 4500;			// beep frequency in Hz. Resonant frequency of the piezo sounder is 4.5kHz.
const uint32_t errorBeepLength = 100;
const uint32_t errorBeepFrequency = 2250;
const uint32_t longTouchDelay = 250;				// how long we ignore new touches for after pressing Set
const uint32_t shortTouchDelay = 100;				// how long we ignore new touches while pressing up/down, to get a reasonable repeat rate




#define DISPLAY_TYPE_ITDB02_43			(1)		// Itead 4.3 inch display (480 x 272) or alternative 4.3 inch display with 24-bit colour
#define DISPLAY_TYPE_ITDB02_50			(2)		// Itead 5.0 inch display (800 x 480) or alternative 5 or 7 inch display with 24-bit colour
#define DISPLAY_TYPE_ITDB02_70			(3)		// 7.0 inch display (800 x 480) with 18-bit colour
#define DISPLAY_TYPE_ER_70				(4)		// 7.0 inch East Rising display (800 x 480) with 24-bit colour
#define DISPLAY_TYPE_CPLD_70			(5)		// 7.0 inch CPLD display (800 x 480) with 24-bit colour

// Define DISPLAY_TYPE to be one of the above 3 types of display

#ifdef SCREEN_43
#define DISPLAY_TYPE	DISPLAY_TYPE_ITDB02_43
#define LARGE_FONT		(0)
#define IS_24BIT		(true)
#define IS_ER			(false)
#endif

#ifdef SCREEN_50
#define DISPLAY_TYPE	DISPLAY_TYPE_ITDB02_50
#define LARGE_FONT		(1)
#define IS_24BIT		(true)
#define IS_ER			(false)
#endif

#ifdef SCREEN_70
#define DISPLAY_TYPE	DISPLAY_TYPE_ITDB02_70
#define LARGE_FONT		(1)
#define IS_24BIT		(false)
#define IS_ER			(false)
#endif

#ifdef SCREEN_70E
#define DISPLAY_TYPE	DISPLAY_TYPE_ER_70
#define LARGE_FONT		(1)
#define IS_24BIT		(true)
#define IS_ER			(true)
#endif

#ifdef SCREEN_70CPLD
#define DISPLAY_TYPE	DISPLAY_TYPE_CPLD_70
#define LARGE_FONT		(1)
#define IS_24BIT		(true)
#define IS_ER			(false)
#endif

const uint32_t DefaultBaudRate = 57600;

#endif /* CONFIGURATION_H_ */

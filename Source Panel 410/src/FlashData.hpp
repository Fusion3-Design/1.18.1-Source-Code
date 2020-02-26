/*
 * FlashData.hpp
 *
 *  Created on: Feb 13, 2018
 *      Author: tstern
 */

#ifndef SRC_FLASHDATA_HPP_
#define SRC_FLASHDATA_HPP_

#include "asf.h"
#include "Hardware/Mem.hpp"
#include "Configuration.hpp"
#include "Hardware/Buzzer.hpp"
#include "Hardware/DisplayOrientation.hpp"
#include "Hardware/FlashStorage.hpp"
#include "GUI/DisplaySize.hpp"

class FlashData
{
public:
	static FlashData& getInstance()
		{
			static FlashData instance;
			return instance;
		}

	// We now use a different magic value for each display size, to force the "touch the spot" screen to be displayed when you change the display size
		static const uint32_t magicVal = 0x3AB629E0 + DISPLAY_TYPE;
		static const uint32_t muggleVal = 0xFFFFFFFF;

	uint32_t magic;
	uint32_t baudRate;
	uint16_t xmin;
	uint16_t xmax;
	uint16_t ymin;
	uint16_t ymax;
	bool touchValid;
	DisplayOrientation lcdOrientation;
	DisplayOrientation touchOrientation;
	uint32_t touchVolume;
	uint32_t language;
	uint32_t colourScheme;
	uint32_t brightness;
	char dummy;

	FlashData() : magic(muggleVal) { }
	bool operator==(const FlashData& other);
	bool operator!=(const FlashData& other) { return !operator==(other); }
	bool IsValid() const;
	void SetInvalid() { magic = muggleVal; }
	void SetDefaults();
	void Load();
	void Save() const;
private:
	FlashData(FlashData const&)               = delete;
    void operator=(FlashData const&)  = delete;
};


#endif /* SRC_FLASHDATA_HPP_ */

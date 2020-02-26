/*
 * FlashData.cpp
 *
 *  Created on: Feb 13, 2018
 *      Author: tstern
 */
#include "FlashData.hpp"
#include "Library\syslog.h"

#if SAM4S
// FlashData must fit in user signature flash area
static_assert(sizeof(FlashData) <= 512, "Flash data too large");
#else
// FlashData must fit in the area we have reserved
static_assert(sizeof(FlashData) <= FLASH_DATA_LENGTH, "Flash data too large");
#endif

bool FlashData::IsValid() const
{
	return magic == magicVal
		&& touchVolume <= Buzzer::MaxVolume
		&& brightness >= Buzzer::MinBrightness
		&& brightness <= Buzzer::MaxBrightness
		&& language < 1 //UI::GetNumLanguages()
		&& colourScheme < 1; //NumColourSchemes;
}

bool FlashData::operator==(const FlashData& other)
{
	return magic == other.magic
		&& baudRate == other.baudRate
		&& xmin == other.xmin
		&& xmax == other.xmax
		&& ymin == other.ymin
		&& ymax == other.ymax
		&& lcdOrientation == other.lcdOrientation
		&& touchOrientation == other.touchOrientation
		&& touchVolume == other.touchVolume
		&& language == other.language
		&& colourScheme == other.colourScheme
		&& brightness == other.brightness;
}

void FlashData::SetDefaults()
{
	baudRate = DefaultBaudRate;
	xmin = 0;
	xmax = DisplayX - 1;
	ymin = 0;
	ymax = DisplayY - 1;
	touchValid =false;
	lcdOrientation = DefaultDisplayOrientAdjust;
	touchOrientation = DefaultTouchOrientAdjust;
	touchVolume = Buzzer::DefaultVolume;
	brightness = Buzzer::DefaultBrightness;
	language = 0;
	colourScheme = 0;
	magic = magicVal;
}

// Load parameters from flash memory
void FlashData::Load()
{
	magic = 0xFFFFFFFF;				// to make sure we know if the read failed
#if SAM4S
	flash_read_user_signature(&(this->magic), (&(this->dummy) - reinterpret_cast<const char*>(&(this->magic)))/sizeof(uint32_t));
#else
	FlashStorage::read(0, &(this->magic), &(this->dummy) - reinterpret_cast<const char*>(&(this->magic)));
#endif
}

// Save parameters to flash memory
void FlashData::Save() const
{
	LOG("saving flash data");
#if SAM4S
	LOG("saving flash data SAM4S");
	flash_erase_user_signature();
	flash_write_user_signature(&(this->magic), (&(this->dummy) - reinterpret_cast<const char*>(&(this->magic)))/sizeof(uint32_t));
#else
	FlashStorage::write(0, &(this->magic), &(this->dummy) - reinterpret_cast<const char*>(&(this->magic)));
#endif
}

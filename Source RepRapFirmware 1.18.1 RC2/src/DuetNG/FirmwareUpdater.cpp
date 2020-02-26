/*
 * FirmwareUpdater.cpp
 *
 *  Created on: 21 May 2016
 *      Author: David
 */

#include "FirmwareUpdater.h"

#include "RepRapFirmware.h"
#include "Network.h"
#include "Platform.h"
#include "RepRap.h"

#ifdef DUET_WIFI
#include "WifiFirmwareUploader.h"
#endif

namespace FirmwareUpdater
{
	const unsigned int WifiFirmwareModule = 1;
	const unsigned int WifiFilesModule = 2;
	const unsigned int WifiExternalFirmwareModule = 3;

	// Check that the prerequisites are satisfied.
	// Return true if yes, else print a message and return false.
	bool CheckFirmwareUpdatePrerequisites(uint8_t moduleMap)
	{
#ifdef DUET_WIFI
		if ((moduleMap & (1 << WifiExternalFirmwareModule)) != 0 && (moduleMap & ((1 << WifiFirmwareModule) | (1 << WifiFilesModule))) != 0)
		{
			reprap.GetPlatform()->Message(GENERIC_MESSAGE, "Invalid combination of firmware update modules\n");
			return false;
		}
		if ((moduleMap & (1 << WifiFirmwareModule)) != 0 && !reprap.GetPlatform()->GetMassStorage()->FileExists(SYS_DIR, WIFI_FIRMWARE_FILE))
		{
			reprap.GetPlatform()->MessageF(GENERIC_MESSAGE, "File %s not found\n", WIFI_FIRMWARE_FILE);
			return false;
		}
		if ((moduleMap & (1 << WifiFilesModule)) != 0 && !reprap.GetPlatform()->GetMassStorage()->FileExists(SYS_DIR, WIFI_WEB_FILE))
		{
			reprap.GetPlatform()->MessageF(GENERIC_MESSAGE, "File %s not found\n", WIFI_WEB_FILE);
			return false;
		}
#endif
		return true;
	}

	bool IsReady()
	{
#ifdef DUET_WIFI
		return reprap.GetNetwork()->GetWifiUploader()->IsReady();
#endif
#ifdef DUET_ETHERNET
		return true;
#endif
	}

	void UpdateModule(unsigned int module)
	{
#ifdef DUET_WIFI
		switch(module)
		{
		case WifiExternalFirmwareModule:
			Network::ResetWiFiForUpload(true);
			break;

		case WifiFirmwareModule:
			reprap.GetNetwork()->GetWifiUploader()->SendUpdateFile(WIFI_FIRMWARE_FILE, SYS_DIR, WifiFirmwareUploader::FirmwareAddress);
			break;

		case WifiFilesModule:
			reprap.GetNetwork()->GetWifiUploader()->SendUpdateFile(WIFI_WEB_FILE, SYS_DIR, WifiFirmwareUploader::WebFilesAddress);
			break;
		}
#endif
	}
}

// End

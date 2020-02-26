/*
 * KeyboardPopup.hpp
 *
 *  Created on: Feb 12, 2018
 *      Author: tstern
 */

#ifndef SRC_GUI_WIDGETS_KEYBOARDPOPUP_HPP_
#define SRC_GUI_WIDGETS_KEYBOARDPOPUP_HPP_

#include <string>
#include <functional>
#include "PopupWindow.hpp"
#include "Hardware/UTFT.hpp"
#include "DisplaySize.hpp"
#include "ColourSchemes.hpp"
#include "Library/Vector.hpp"

constexpr int CMD_BUFFER_LENGTH= 10;

class KeyboardPopup : public PopupWindowWidget
{
	protected:
		Label *ptrLabel;
		int16_t cmdIndex, cmdBufferIndex;
		char command[WIDGET_TEXT_LEN];
		Vector<String<WIDGET_TEXT_LEN>,CMD_BUFFER_LENGTH> cmdBuffer;

		std::function<void(const char *str)> _enterCallback;
		std::function<void(void)> _closeCallback;

	public:
		KeyboardPopup( PixelNumber x, PixelNumber y, PixelNumber dx, PixelNumber dy,
			Colour background, Colour border,WidgetWindow *parent=nullptr);

		void SetEnterCallback(
				std::function<void(const char *str)> enterCallback); //this callback will be called when enter key is hit on keyboard.

		void SetClosedCallback(std::function<void(void)> closeCallback);

		virtual bool ProcessMousePress(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt =nullptr);
		virtual bool ProcessMouseRelease(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt =nullptr);
};


#endif /* SRC_GUI_WIDGETS_KEYBOARDPOPUP_HPP_ */

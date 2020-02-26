/*
 * options.hpp
 *
 *  Created on: Feb 12, 2018
 *      Author: xps15
 */

#ifndef SRC_GUI_WIDGETS_OPTIONS_HPP_
#define SRC_GUI_WIDGETS_OPTIONS_HPP_
#include <string>
#include <functional>
#include "PopupWindow.hpp"
#include "Hardware/UTFT.hpp"
#include "DisplaySize.hpp"
#include "ColourSchemes.hpp"

#define MAX_OPTIONS (10)

extern UTFT lcd;
extern uint8_t glcd19x21[];				// declare which fonts we will be using
extern uint8_t Roboto_Black19x23[];
extern uint8_t Roboto_Black24x28[];
extern uint8_t Roboto18x22[];
extern uint8_t Roboto25x31[];
extern uint8_t arrows41x40[];

extern const ColourScheme *colours;

#define DEFAULT_LARGE_FONT Roboto_Black24x28
#define DEFAULT_FONT			Roboto_Black19x23

class Options: public Widget
{
	protected:
		char _options[MAX_OPTIONS][WIDGET_TEXT_LEN];
		uint8_t _numOptions;
		uint8_t _currentSelectionIndex;
		Font_t _font;
		LinkedList<Widget*> widgets;
		std::function<void(uint8_t optionIndex)> _callback; //this function will be called when option is changed.

	public:
		Options(PixelNumber x, PixelNumber y, PixelNumber dx, PixelNumber dy, const char *options[], uint8_t numOptions,
				std::function<void(uint8_t optionIndex)> callback, Font_t font=DEFAULT_FONT);
		void SetOption(uint8_t x) {if (x<_numOptions) {_currentSelectionIndex=x; _changed=true;}}
		uint8_t GetOptionIndex() {return _currentSelectionIndex;}
		bool Refresh(bool full, PaintOptions_t *ptrOpt = nullptr);
		 Widget * ProcessMousePress(PixelNumber x, PixelNumber y, callbackOptions_t *ptrOpt);
		 Widget * ProcessMouseRelease(PixelNumber x, PixelNumber y, callbackOptions_t *ptrOpt);

};



#endif /* SRC_GUI_WIDGETS_OPTIONS_HPP_ */

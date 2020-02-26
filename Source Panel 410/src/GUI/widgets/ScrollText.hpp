/*
 * ScrollText.hpp
 *
 *  Created on: Feb 12, 2018
 *      Author: tstern
 */

#ifndef SRC_GUI_WIDGETS_SCROLLTEXT_HPP_
#define SRC_GUI_WIDGETS_SCROLLTEXT_HPP_

#include "window.hpp"
#include "Hardware/UTFT.hpp"
#include "DisplaySize.hpp"
#include "ColourSchemes.hpp"

constexpr int SCROLL_BUFFER_LENGTH= 2048;
constexpr int MAX_LINES= 200;

extern UTFT lcd;
extern uint8_t glcd19x21[];				// declare which fonts we will be using
extern uint8_t Roboto_Black19x23[];
extern uint8_t Roboto_Black24x28[];
extern uint8_t  Roboto18x22[];
extern uint8_t Roboto25x31[];
extern  uint8_t arrows41x40[];

extern const ColourScheme *colours;

#define DEFAULT_LARGE_FONT Roboto_Black24x28
#define DEFAULT_FONT			Roboto_Black19x23

typedef struct {
	char *ptr;
	uint8_t len;
} testLine_t;

class ScrollText : public Widget
{
protected:
	uint16_t textIndex;
	int16_t scrollIndex;
	int16_t numRowsWeCanDisplay;
	PixelNumber rowSpacing;
	Button *ptrUp, *ptrDown;
	Font_t _font;
	uint8_t lastLine;
	char text[SCROLL_BUFFER_LENGTH];
	testLine_t lines[MAX_LINES];


public:
	ScrollText(PixelNumber x, PixelNumber y, PixelNumber dx, PixelNumber dy, Font_t font=DEFAULT_FONT);
	void Append(const char *str);

		bool Refresh(bool full, PaintOptions_t *ptrOpt = nullptr);

private:
	PixelNumber GetTextWidth(const char* s, PixelNumber maxWidth);
	void SetLines(void);
	void AddLine(char *str, int len);
	bool ScrollUp(callbackOptions_t *);
	bool ScrollDown(callbackOptions_t *);
	virtual Widget * ProcessMousePress(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt);
	virtual Widget * ProcessMouseRelease(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt);
};



#endif /* SRC_GUI_WIDGETS_SCROLLTEXT_HPP_ */

/*
 * widgets.hpp
 *
 *  Created on: Jan 20, 2018
 *      Author: tstern
 */

#ifndef SRC_WIDGETS_HPP_
#define SRC_WIDGETS_HPP_

#undef min
#undef max
#undef array
#include <string>
#include <functional>
#include "Hardware/UTFT.hpp"
#include "DisplaySize.hpp"
#include "ColourSchemes.hpp"
#include "LinkedList.hpp"
#include "Vector.hpp"
#include "Icons/Icons.hpp"
#include "Hardware/Buzzer.hpp"
#include "PanelDue.hpp" //for the touch beep
#include "Hardware/UTouch.hpp"

// Unicode strings for special characters in our font
#define DECIMAL_POINT	"\xC2\xB7"		// Unicode middle-dot, code point B7
#define DEGREE_SYMBOL	"\xC2\xB0"		// Unicode degree-symbol, code point B0
#define THIN_SPACE		"\xC2\x80"		// Unicode control character, code point 0x80, we use it as thin space
#define LEFT_ARROW		"\xC2\x81"		// Unicode control character, code point 0x81, we use it as up arrow
#define UP_ARROW		"\xC2\x82"		// Unicode control character, code point 0x82, we use it as up arrow
#define RIGHT_ARROW		"\xC2\x83"		// Unicode control character, code point 0x83, we use it as down arrow
#define DOWN_ARROW		"\xC2\x84"		// Unicode control character, code point 0x84, we use it as down arrow



constexpr uint16_t WIDGET_TEXT_LEN=40;

typedef const uint8_t * Font_t;
enum class _TextAlignment : uint8_t { Left, Centre, Right };


const PixelNumber _AutoPlace = 0xFFFF;
const PixelNumber _AutoWidth = 0xFFFF;

typedef enum
{
	Type_None=0,
	Type_Integer, //value returned in iValue
	Type_Char,  	//value returned in char c
	Type_String,  //value returned in ptrVoid
	Type_PopupClosed,
	Type_ButtonPressed,  //
	Type_Command,

} WidgetValueType_t;



class Defaults
{
	public:
		static Font_t defaultFont;
		static Colour defaultFcolour, defaultBcolour;
		static Colour defaultButtonBorderColour, defaultGradColour, defaultPressedBackColour, defaultPressedGradColour;
		static Palette defaultIconPalette;
};


class Widget;

class PaintOptions_t
{
	public:
		PaintOptions_t() {xOffset=0; yOffset=0; dim=false; frameBuffer=-1; show=true;}
		PixelNumber xOffset, yOffset; //translation of the item
		bool dim; //if the object should be dimmed.
		int32_t frameBuffer; //-1 means use current
		bool show;
};

typedef struct
{
		UTouch *ptrTouch;
		Widget *ptrWidget;
		WidgetValueType_t type;
		int32_t touchDelay; //if -1 we wait for release
		char cmd[20];
		union {
			int32_t iValue;
			void *ptrVoid;
			char c;
		};
} callbackOptions_t;







//this is the base class for all graphic objects on the LCD
class Widget
{
	protected:
		PixelNumber _x, _y;
		PixelNumber _dx, _dy;
		Colour _fcolour, _bcolour, _pressedColor;
		uint8_t _changed : 1,
		_visible : 1,
		_pressed : 1,
		_lastPressedState:1;
		std::function<bool(callbackOptions_t *)> _callback;
		uint32_t userData; //sometimes we need some user data


	protected:
		Widget(PixelNumber x, PixelNumber y, PixelNumber dx, PixelNumber dy,
				std::function<bool(callbackOptions_t *)> callback = nullptr);
		virtual PixelNumber GetHeight() {return _dy;};
	public:
		char name[10];
		uint32_t getUserData(void) {return userData;}
		void setUserData(uint32_t data) {userData=data;}
		bool IsClickable() {return _callback!=NULL; }
		void setCallback(std::function<bool(callbackOptions_t *)> callback)
		{
			_callback = callback;
		}
		void SetYLoc(PixelNumber y) {_y=y;}
		bool DrawOutline(bool full, PaintOptions_t *ptrOpt); //draw box outline
		bool IsVisible() const { return _visible; }
		void SetVisible(bool x)  { if (_visible==x) {_changed=false;} _visible=x; }
		void SetPressed(bool pressed)
		{
			_pressed = pressed;
		}
		PixelNumber getX() {return _x;}
		PixelNumber getY() {return _y;}
		virtual bool Refresh(bool full, PaintOptions_t *ptrOpt = nullptr) = 0;
		void SetColours(Colour foreground, Colour background, Colour pressed) {_fcolour=foreground; _bcolour=background; _pressedColor=pressed;};
		void SetBackgroundColor(Colour background) {if (_bcolour!=background) {_changed=true;} _bcolour=background;}
		void SetForegroundColor(Colour color) {if (_fcolour!=color) {_changed=true;} _fcolour=color;}
		void SetChanged(bool x=true) { _changed = x; }
		bool GetChanged()
		{
			return _changed;
		}
		virtual Widget * ProcessMousePress(PixelNumber x, PixelNumber y, callbackOptions_t *ptrOpt); //if the click point is inside widget it will call the callbacl
		virtual Widget * ProcessMouseRelease(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt);
};

class WidgetWithText : public Widget
{
	protected:
		uint8_t
		_underlined : 1,
		_border : 1,
		_textRows : 6;
		Font_t _font;
		int16_t maxValue;
		_TextAlignment _align;
		char _text[WIDGET_TEXT_LEN];
		char _units[3] =
		{
		0
		};

		WidgetWithText(PixelNumber x, PixelNumber y,PixelNumber dx, PixelNumber dy=_AutoPlace, bool withBorder=true, _TextAlignment pa=_TextAlignment::Left, bool isUnderlined = false)
		: Widget(x, y, dx, dy), _font(Defaults::defaultFont), _align(pa)
		{
			_underlined = isUnderlined;
			_border = withBorder;
			_textRows = 1;
			_text[0] = '\0';
			_units[0] = '\0';
			strcpy(name,"text");
		}
		PixelNumber GetHeight();
	public:
		void SetMaxValue(int32_t value) {maxValue=value;}
		int32_t GetMaxValue() {return maxValue;}
		bool Refresh(bool full, PaintOptions_t *ptrOpt = nullptr)
				override;
		void SetUnits(const char *str);
		void SetFont(Font_t pf) { _font = pf; }
		void SetText(const char *str);
		const char *GetText() { return _text; }
		void SetUnderline(bool x) { _underlined=x; }
		void SetBorder(bool x) { _border=x; }
		PixelNumber GetTextWidth(const char* s, PixelNumber maxWidth);
};

class Label : public WidgetWithText
{
	public:
		Label(PixelNumber x, PixelNumber y, PixelNumber dx, PixelNumber dy,
				const char *str, _TextAlignment pa = _TextAlignment::Left,
				bool withBorder = false, bool isUnderlined = false)
	:WidgetWithText( x,  y, dx,  dy,  withBorder,  pa,  isUnderlined)
	{
			SetText(str);
			strcpy(name,"lab");
	}

		Label(PixelNumber x, PixelNumber y, PixelNumber dx, const char *str,
				_TextAlignment pa = _TextAlignment::Left, bool withBorder =
						false, bool isUnderlined = false) :
				WidgetWithText(x, y, dx, _AutoPlace, withBorder, pa,
						isUnderlined)
		{
			SetText(str);
		}
};

class Button : public WidgetWithText
{
	public:
		Button(PixelNumber x, PixelNumber y, PixelNumber dx, const char *str,
				std::function<bool(callbackOptions_t *)> callback,
				PixelNumber dy = _AutoPlace)
	:WidgetWithText( x,  y, dx,  dy,  true,  _TextAlignment::Centre,  false)
	{
			SetText(str);
			_callback = callback;
			strcpy(name,"lab");
	}
};


class HorizontalProgressBar : public Widget
{
	protected:
		PixelNumber lastNumPixelsSet;
		uint8_t percent;

	public:
		HorizontalProgressBar(PixelNumber x, PixelNumber y, PixelNumber dx,
				PixelNumber dy) :
				Widget(x, y, dx, dy), percent(0), lastNumPixelsSet(0)
	{
			strcpy(name,"hpro");
	}

		bool Refresh(bool full, PaintOptions_t *ptrOpt = nullptr) override;


		void SetPercent(uint8_t pc)
		{
			if (percent != pc)
			{
				if (pc>100) {pc=100;}
				percent = pc;
				_changed = true;
			}
		}
};

class VerticalProgressBar : public Widget
{
	protected:
		PixelNumber lastNumPixelsSet;
		uint8_t percent;

	public:
		VerticalProgressBar(PixelNumber x, PixelNumber y, PixelNumber dx,
				PixelNumber dy) :
				Widget(x, y, dx, dy), percent(0), lastNumPixelsSet(0)
	{
			strcpy(name,"vpro");
	}

		bool Refresh(bool full, PaintOptions_t *ptrOpt = nullptr) override;


		void SetPercent(uint8_t pc)
		{
			if (percent != pc)
			{
				if (pc>100) {pc=100;}
				percent = pc;
				_changed = true;

			}
		}
};

class IconButtonWidget : public Widget
{
	Icon icon;
	uint8_t _scale;

protected:
	PixelNumber GetHeight(){ return GetIconHeight(icon)*_scale + 2 * 1 + 2; }

public:
	IconButtonWidget(PixelNumber x, PixelNumber y, PixelNumber dx, Icon ic,
			std::function<bool(callbackOptions_t *)> callback = nullptr, PixelNumber dy=_AutoPlace, uint8_t scale=1):
				Widget(x, y, dx, dy, callback), _scale(scale), icon(ic) {strcpy(name,"icon");}


	void SetScale(uint8_t s) {_scale=s;}
		bool Refresh(bool full, PaintOptions_t *ptrOpt = nullptr)
				override final;
};


class KeyboardWidget : public Widget
{
	protected:
	Font_t _font;
	const char* _keys[4] =
	{
			"1234567890-+",
			"QWERTYUIOP",
			"ASDFGHJKL:",
			"ZXCVBNM./",
	};

	LinkedList<Widget*> widgets;
public:
	KeyboardWidget(PixelNumber x, PixelNumber y, PixelNumber dx,
				PixelNumber dy, std::function<bool(callbackOptions_t *)> callback = nullptr);

		bool Refresh(bool full, PaintOptions_t *ptrOpt = nullptr)
				override final;
	void SetFont(Font_t pf) { _font = pf; }
	Widget * ProcessMousePress(PixelNumber x, PixelNumber y, callbackOptions_t *ptrOpt) override final; //if the click point is inside widget it will call the callbacl
	Widget * ProcessMouseRelease(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt) override final;
};

class CheckBoxWidget : public WidgetWithText
{
	bool checked;

public:
	CheckBoxWidget(PixelNumber x, PixelNumber y, PixelNumber dx, PixelNumber dy,  const char *str, std::function<bool(callbackOptions_t *)> callback);
	void SetChecked(bool x) {if (checked !=x) {_changed=true;} checked=x;}
	bool IsChecked() {return checked;}
	bool Refresh(bool full, PaintOptions_t *ptrOpt = nullptr) override final;
};



#endif /* SRC_WIDGETS_HPP_ */

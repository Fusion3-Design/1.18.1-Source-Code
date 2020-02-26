/*
 * widgets.cpp
 *
 *  Created on: Jan 20, 2018
 *      Author: tstern
 */

#include "widgets.hpp"
#include "ColourSchemes.hpp"
#include "Icons/Icons.hpp"
#include "Hardware/SerialIo.hpp"
#include "syslog.h"

extern UTFT lcd;
extern uint8_t glcd19x21[];				// declare which fonts we will be using
extern uint8_t Roboto_Black19x23[];
extern uint8_t Roboto_Black24x28[];
extern uint8_t  Roboto18x22[];
extern uint8_t Roboto25x31[];
extern  uint8_t arrows41x40[];

#define DEFAULT_LARGE_FONT Roboto_Black24x28
#define DEFAULT_FONT			Roboto_Black19x23

extern const ColourScheme *colours;

// Unicode strings for special characters in the  glcd19x21[];
#define DECIMAL_POINT	"\xC2\xB7"		// Unicode middle-dot, code point B7
#define DEGREE_SYMBOL	"\xC2\xB0"		// Unicode degree-symbol, code point B0
#define THIN_SPACE		"\xC2\x80"		// Unicode control character, code point 0x80, we use it as thin space
#define LEFT_ARROW		"\xC2\x81"		// Unicode control character, code point 0x81, we use it as up arrow
#define UP_ARROW		"\xC2\x82"		// Unicode control character, code point 0x82, we use it as up arrow
#define RIGHT_ARROW		"\xC2\x83"		// Unicode control character, code point 0x83, we use it as down arrow
#define DOWN_ARROW		"\xC2\x84"		// Unicode control character, code point 0x84, we use it as down arrow

// Static fields of class DisplayField
Font_t Defaults::defaultFont = DEFAULT_FONT;
Colour Defaults::defaultFcolour = white;//olours->infoTextColour;
Colour Defaults::defaultBcolour = slate;//colours->defaultBackColour;
Colour Defaults::defaultButtonBorderColour = white;//colours->infoTextColour;
Colour Defaults::defaultGradColour = 0;
Colour Defaults::defaultPressedBackColour = lightGreen;//colours->buttonPressedBackColour;
Colour Defaults::defaultPressedGradColour = 0;
Palette Defaults::defaultIconPalette = IconPaletteLight;

callbackOptions_t opt;

Widget::Widget(PixelNumber x, PixelNumber y, PixelNumber dx, PixelNumber dy,
		std::function<bool(callbackOptions_t *)> callback)
{
	_x=x;
	_y=y;
	_dx=dx;
	_dy=dy;

	if (_x>DISPLAY_X ||
			_y>=DISPLAY_Y )
	{
		ERROR("Widget is not fully on the LCD %d %d (%d %d)",_x,_y,_dx, _dy);

	}
	_callback=callback;
	_fcolour= Defaults::defaultFcolour;
	_bcolour=Defaults::defaultBcolour;
	_pressedColor=Defaults::defaultPressedBackColour ;
	_changed=true;
	_visible=true;
	_pressed=false;
	_lastPressedState=false;
}

Widget * Widget::ProcessMouseRelease(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt)
{
	if (_callback==NULL)
	{
		return nullptr;
	}

	if (x >= _x && x <= (_x+_dx)
			&& y >= _y && y <= (_y+_dy) )
	{
		if (_pressed)
		{
			_pressed = false;
			_changed=true;
			return this;
			//Refresh(true);
		}
	}

	if (_pressed)
	{
		_pressed=false;
		_changed=true;
		return this;
		//Refresh(true);
	}
	return nullptr;
}

Widget * Widget::ProcessMousePress(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt)
{
	if (_callback==NULL || _visible==false)
	{
		return nullptr;
	}

	if (x >= _x && x <= (_x+_dx)
			&& y >= _y && y <= (_y+_dy) )
	{
		if (_pressed==false)
		{
			_pressed=true;
			_changed=true;
			if (ptrOpt == nullptr)
			{

				ptrOpt = &opt;
			}

			ptrOpt->ptrWidget = this;
			ptrOpt->touchDelay=100;
			if (_callback(ptrOpt))
			{
				return this;
			}
			//Refresh(true);
		}
	}
	return nullptr;
}

bool Widget::DrawOutline(bool full, PaintOptions_t *ptrOpt) //draw box outline
{
	PixelNumber xOffset=0, yOffset=0;
	Colour fg,bg;
	fg=_fcolour;
	bg=_bcolour;


	if (ptrOpt!= nullptr)
	{
		xOffset=ptrOpt->xOffset;
		yOffset=ptrOpt->yOffset;

		if (ptrOpt->dim)
		{
			fg=lcd.applyColorScale(50,fg);
			bg=lcd.applyColorScale(50,bg);
		}
	}

	xOffset+=_x;
	yOffset+=_y;

	Colour bcolor=bg;
//
//	if (_pressed)
//	{
//		//if button is currently pressed use default colors
//		bcolor=_pressedColor;
//	}

	if (full || _changed)
	{

		PixelNumber width =xOffset + _dx;
		if (width >= DISPLAY_X)
		{
			width = DISPLAY_X-1;
		}

		//lcd.setColor(fg);
		lcd.setBackColor(bcolor);
		lcd.setColor(bcolor);
		lcd.fillRoundRect(xOffset, yOffset, width - 1, yOffset + _dy - 1);
		lcd.setColor(fg);
		lcd.setBackColor(bg);
	}

}
PixelNumber WidgetWithText::GetTextWidth(const char* s, PixelNumber maxWidth)
{
	lcd.setFont(_font);
	lcd.setTextPos(0, 9999, maxWidth);
	lcd.print(s);    // dummy print to get text width
	return lcd.getTextX();
}


PixelNumber WidgetWithText::GetHeight()
{
	PixelNumber height = UTFT::GetFontHeight(_font) * _textRows;
	height += (_textRows - 1) * 2;		// 2px space between lines
	if (_underlined)
	{
		height += 2;					// one space and the underline
	}
	if (_border)
	{
		height += 4;					// one space abd border top and bottom
	}
	return height;
}
void WidgetWithText::SetUnits(const char *str)
{
	if (strcmp(_units, str) == 0)
	{
		return;
	}
	strncpy(_units, str, 3);
	_units[2]='\0';
	_changed = true;
}
void WidgetWithText::SetText(const char *str)
{
	uint32_t c, i;

	//if the text is the same do not change
	// we only compare up to the maximum text lenght we can
	// save
	i=WIDGET_TEXT_LEN-1;
	if (i>strlen(str))
	{
		i=strlen(str);
	}
	if (strncmp(_text,str,i)==0)
	{
		return;
	}

	strncpy(_text, str,WIDGET_TEXT_LEN);
	_text[WIDGET_TEXT_LEN-1]='\0';
	i = 0;
	c = 1;
	while (_text[i] != 0)
	{
		if (_text[i] == '\n')
		{
			c++;
		}
		i++;
	}
	_textRows = c;
	_changed=true;
}
bool WidgetWithText::Refresh(bool full, PaintOptions_t *ptrOpt)
{
	char str[50];

	if (_visible == false)
	{
		return false;
	}
	PixelNumber xOffset=0, yOffset=0;
	Colour fg,bg;
	fg=_fcolour;
	bg=_bcolour;


	if (ptrOpt!= nullptr)
	{
		xOffset=ptrOpt->xOffset;
		yOffset=ptrOpt->yOffset;

		if (ptrOpt->dim)
		{
			fg=lcd.applyColorScale(50,fg);
			bg=lcd.applyColorScale(50,bg);
		}
	}

	xOffset+=_x;
	yOffset+=_y;

	Colour bcolor=bg;
	//LOG("got here");
	snprintf(str, 50, "%s%s", _text, _units);

//	if (_pressed)
//	{
//		//if button is currently pressed use default colors
//		bcolor=_pressedColor;
//	}

	if (_dy==_AutoPlace)
	{
		_dy=GetHeight();
	}

	if (_dx==_AutoPlace)
	{
		_dx = GetTextWidth(str, DISPLAY_X) + 4;
		if (_dx>DISPLAY_X)
		{
			_dx=DISPLAY_X;
		}
	}




	if (full || _changed)
	{
		//LOG("refresh of %s",_text);
		DrawOutline(full, ptrOpt);
		PixelNumber width =xOffset + _dx;
		if (width >= DISPLAY_X)
		{
			width = DISPLAY_X-1;
		}

		PixelNumber textWidth = _dx;

		if (_border)
		{
			if (full || _changed)
			{
				lcd.setColor(fg);
				lcd.setBackColor(bg);
				lcd.drawRoundRect(xOffset, yOffset, width, yOffset + _dy);
			}
			xOffset += 2;
			yOffset += 2;
			textWidth -= 4;
		}

		int32_t yRow = (int32_t) yOffset + _dy / 2
				- (UTFT::GetFontHeight(_font))
				- (_textRows - 1) * (UTFT::GetFontHeight(_font) / 2)
				+ UTFT::GetFontHeight(_font) / 2;
		if (yRow < 0)
		{
			yRow = 2;
		}

		lcd.setFont(_font);
		lcd.setColor(fg);
		int16_t spare;
		const PixelNumber actualWidth = GetTextWidth(str, DISPLAY_X);
		const PixelNumber underlineY = yRow + UTFT::GetFontHeight(_font) + 1;
		if (_underlined)
		{
			// Remove previous underlining
			lcd.setColor(bcolor);
			lcd.drawLine(xOffset, underlineY, xOffset + textWidth - 1, underlineY);
			lcd.setColor(fg);
		}


		lcd.setColor(fg);
		lcd.setFont(_font);
		lcd.setBackColor(bcolor);

		if (fg==bg)
		{
			ERROR("Foreground and background same text will not be visable: %s",_text);
		}
		lcd.setTextPos(xOffset, yRow, xOffset + textWidth);
		if (_align == _TextAlignment::Left)
		{

			lcd.print(_text);
			lcd.clearToMargin();
			if (_underlined)
			{
				lcd.drawLine(xOffset, underlineY,xOffset + actualWidth, underlineY);
			}
		}
		else
		{

			lcd.clearToMargin();
			if (_align == _TextAlignment::Centre)
			{

				uint32_t rows = _textRows;
				uint8_t index = 0;
				uint16_t y = yRow;
				while (rows > 0)
				{
					spare = textWidth
							- GetTextWidth(&str[index], DISPLAY_X);

					if (spare<0)
					{
						spare=0;
					}
					const PixelNumber textX = xOffset + spare / 2;

					lcd.setTextPos(textX, y, xOffset + textWidth);

					lcd.print(&str[index]);
					if (_underlined)
					{
						lcd.drawLine(textX, underlineY, textX + actualWidth - 1,
								underlineY);
					}
					if (rows > 1)
					{
						while (str[index] != '\n' && str[index] != '\0'
								&& index < 40)
						{
							index++;
						}
						if (str[index] == '\n')
						{
							index++;
						}
						y = y + UTFT::GetFontHeight(_font) + 2;
					}
					rows--;
				}


			}
			else
			{
				spare = textWidth - GetTextWidth(str, DISPLAY_X);
				// Must be right aligned. Try to add a right margin of up to 3 pixels for better appearance.
				if (spare <= 3)
				{
					spare = 0;
				}
				else
				{
					spare -= 3;
				}
				const PixelNumber textX = xOffset + spare;
				lcd.setTextPos(textX, yRow, xOffset + textWidth);
				lcd.print(str);
				if (_underlined)
				{
					lcd.drawLine(textX, underlineY, textX + actualWidth, underlineY);
				}
			}
		}
		_changed = false;
		return true;
	}
	return false;
}


bool HorizontalProgressBar::Refresh(bool full, PaintOptions_t *ptrOpt)
{
	if (full || _changed)
	{
		PixelNumber xOffset=0, yOffset=0;
		Colour fg,bg;
		fg=_fcolour;
		bg=_bcolour;


		if (ptrOpt!= nullptr)
		{
			xOffset=ptrOpt->xOffset;
			yOffset=ptrOpt->yOffset;

			if (ptrOpt->dim)
			{
				fg=lcd.applyColorScale(50,fg);
				bg=lcd.applyColorScale(50,bg);
			}
		}

		uint32_t gradStep=0;
		PixelNumber pixelsSet = ((_dx - 2) * percent)/100;
		if (1)
		{
			lcd.setColor(fg);
			lcd.drawLine(_x + xOffset, _y, _x + xOffset + _dx - 1, _y + yOffset);
			lcd.drawLine(_x + xOffset, _y + yOffset + _dy - 1, _x + xOffset + _dx - 1, _y + yOffset + _dy - 1);
			lcd.drawLine(_x + xOffset + _dx - 1, _y + yOffset + 1, _x + xOffset + _dx - 1, _y + yOffset + _dy - 2);

			if (pixelsSet/10 >gradStep)
			{
				gradStep=pixelsSet/10;
			}
			lcd.fillRect(_x + xOffset, _y + yOffset + 1, _x + xOffset + pixelsSet, _y + yOffset + _dy - 2, Defaults::defaultGradColour,gradStep);
			if (pixelsSet < _dx - 2)
			{
				lcd.setColor(bg);
				lcd.fillRect(_x + xOffset + pixelsSet + 1, _y + yOffset + 1, _x + xOffset + _dx - 2, _y + yOffset + _dy - 2);
			}
		}
		else if (pixelsSet > lastNumPixelsSet)
		{
			lcd.setColor(fg);
			lcd.fillRect(_x + xOffset + lastNumPixelsSet, _y + yOffset + 1, _x + xOffset + pixelsSet, _y + yOffset + _dy - 2);
		}
		else if (pixelsSet < lastNumPixelsSet)
		{
			lcd.setColor(bg);
			lcd.fillRect(_x + xOffset + pixelsSet + 1, _y + yOffset + 1, _x + xOffset + lastNumPixelsSet, _y + yOffset + _dy - 2);
		}
		_changed = false;
		lastNumPixelsSet = pixelsSet;
		return true;
	}
	return false;
}

bool VerticalProgressBar::Refresh(bool full, PaintOptions_t *ptrOpt)
{

	if (full || _changed)
	{
		PixelNumber xOffset=0, yOffset=0;
		PixelNumber x=_x, y=_y;
		Colour fg,bg;
		fg=_fcolour;
		bg=_bcolour;


		if (ptrOpt!= nullptr)
		{
			xOffset=ptrOpt->xOffset;
			yOffset=ptrOpt->yOffset;

			if (ptrOpt->dim)
			{
				fg=lcd.applyColorScale(50,fg);
				bg=lcd.applyColorScale(50,bg);
			}
		}


		PixelNumber pixelsSet =(_dy - 2) - ((_dy - 2) * percent)/100;
		if (1) //(full || _changed)
		{
			lcd.setColor(bg);
			lcd.fillRect(x + xOffset, y + yOffset + _dy-2, x + xOffset + _dx - 1 , y + yOffset  - 2,Defaults::defaultGradColour,0,true);

			lcd.setColor(fg);
			lcd.fillRect(x + xOffset, y + yOffset + _dy, x + xOffset + _dx - 1 , y + yOffset + pixelsSet - 2,Defaults::defaultGradColour,0,true);

			lcd.setColor(white);
			lcd.drawLine(x + xOffset, y + yOffset, x + xOffset + _dx - 1, y + yOffset);
			lcd.drawLine(x + xOffset, y + yOffset, x + xOffset, y + yOffset + _dy - 1);
			lcd.drawLine(x + xOffset, y + yOffset + _dy - 1, x + xOffset + _dx - 1, y + yOffset + _dy - 1);
			lcd.drawLine(x + xOffset + _dx - 1, y + yOffset + 1, x + xOffset + _dx - 1, y + yOffset + _dy - 2);


		}
//		else if (pixelsSet < lastNumPixelsSet)
//		{
//			lcd.setColor(fg);
//			lcd.fillRect(x + xOffset+1, y + yOffset + lastNumPixelsSet, x + xOffset + _dx - 2 , y + yOffset + pixelsSet - 2);
//		}
//		else if (pixelsSet > lastNumPixelsSet)
//		{
//			lcd.setColor(bg);
//			lcd.fillRect(x + xOffset+1, y + yOffset + pixelsSet, x + xOffset + _dx - 2 , y + yOffset +  lastNumPixelsSet - 2);
//			//lcd.fillRect(x + xOffset + pixelsSet + 1, y + yOffset + 1, x + xOffset + lastNumPixelsSet, y + yOffset + height - 2);
//		}
		_changed = false;
		lastNumPixelsSet = pixelsSet;
		return true;
	}
	return false;
}


bool IconButtonWidget::Refresh(bool full, PaintOptions_t *ptrOpt)
{
	PixelNumber xOffset=0, yOffset=0;
	Colour fg,bg;
	fg=_fcolour;
	bg=_bcolour;

	if (_visible == false)
	{
		return false;
	}


	if (ptrOpt!= nullptr)
	{
		xOffset=ptrOpt->xOffset;
		yOffset=ptrOpt->yOffset;

		if (ptrOpt->dim)
		{
			fg=lcd.applyColorScale(50,fg);
			bg=lcd.applyColorScale(50,bg);
		}
	}

	xOffset+=_x;
	yOffset+=_y;

	if (_dy==_AutoPlace)
	{
		_dy=GetHeight();
	}

	if (_dx==_AutoPlace)
	{
		_dx= GetIconWidth(icon)*_scale+4;
		if (_dx>DISPLAY_X)
		{
			_dx=DISPLAY_X;
		}
	}



	if (full || _changed)
	{
		DrawOutline(full,ptrOpt);
		const uint16_t sx = GetIconWidth(icon), sy = GetIconHeight(icon);
		lcd.setTransparentBackground(true);
		lcd.drawBitmap4(xOffset + (_dx - sx*_scale)/2, yOffset + 1 + 1, sx, sy, GetIconData(icon), Defaults::defaultIconPalette,_scale);
		lcd.setTransparentBackground(false);
		_changed = false;
		return true;
	}
	return false;
}

KeyboardWidget::KeyboardWidget(PixelNumber x, PixelNumber y, PixelNumber dx,
		PixelNumber dy, std::function<bool(callbackOptions_t *)> callback):
								Widget(x, y, dx, dy, callback), _font(Defaults::defaultFont)
{
	int i,row;

	int rowx, rowy;


	int buttonHeight=27;
	int buttonWidth=30;
	int xstep=buttonWidth+10;
	int yspace=12;



	for(row=0; row<4; row++)
	{
		rowy=y + (row) * (UTFT::GetFontHeight(_font)+yspace);
		rowx=x + row *15;
		for (i = 0; i < 12; i++)
		{
			char str[2] =
			{
					0
			};
			str[0] = _keys[row][i];
			if (str[0] != '\0')
			{
				//LOG("loc %d,%d, %s",rowx+step*i,rowy,str);
				widgets.add(
						new Button(rowx + xstep * i, rowy, buttonWidth,
								(char *) str,
								[](callbackOptions_t *ptrOpt)
								{   ptrOpt->type=Type_Char; ptrOpt->c=((WidgetWithText *)ptrOpt->ptrWidget)->GetText()[0]; return true;},
								buttonHeight));
			}
			else
			{
				break;
			}
		}
	}



	rowy=y + 1 * (UTFT::GetFontHeight(_font)+yspace);
	widgets.add(new  IconButtonWidget(x+415, rowy, 55, IconBackspace, [](callbackOptions_t *ptrOpt)
			{   ptrOpt->type=Type_Char; ptrOpt->c=8; return true;},
			buttonHeight));

	rowy=y + 4 * (UTFT::GetFontHeight(_font)+yspace);
	widgets.add(new  IconButtonWidget(x+325, rowy, 70, IconEnter,  [](callbackOptions_t *ptrOpt)
			{   ptrOpt->type=Type_Char; ptrOpt->c=13; return true;},
			buttonHeight));
	char *str=" ";
	widgets.add(new Button(x+100,rowy,200,(char *)str, [](callbackOptions_t *ptrOpt)
			{   ptrOpt->type=Type_Char; ptrOpt->c=((WidgetWithText *)ptrOpt->ptrWidget)->GetText()[0]; return true;},
			buttonHeight));

	rowy=y + 2 * (UTFT::GetFontHeight(_font)+yspace);
	Button *btn=new Button(x+430,rowy,37,UP_ARROW, [](callbackOptions_t *ptrOpt)
								{   ptrOpt->type=Type_Char; ptrOpt->c=127; return true;} ,buttonHeight );
	btn->SetFont(glcd19x21);
	widgets.add(btn);

	rowy=y + 3 * (UTFT::GetFontHeight(_font)+yspace);
	btn=new Button(x+430,rowy,37,DOWN_ARROW, [](callbackOptions_t *ptrOpt)
								{   ptrOpt->type=Type_Char; ptrOpt->c=128; return true;} ,buttonHeight );
	btn->SetFont(glcd19x21);
	widgets.add(btn);



}

bool KeyboardWidget::Refresh(bool full, PaintOptions_t *ptrOpt)
{
	Widget *ptr;
	uint32_t i;
	bool ret = false;
	i=0;

	ptr=widgets[i];
	while (ptr != NULL)
	{
		//LOG("Refreshing %x", (uint32_t)ptr);
		if (ptr->Refresh(full, ptrOpt))
		{
			ret = true;
		}
		i++;
		ptr=widgets[i];
	}
	return ret;
}


Widget * KeyboardWidget::ProcessMousePress(PixelNumber x, PixelNumber y, callbackOptions_t *ptrOpt)
{
	uint32_t x1,y1,i=0;
	Widget *ptr;
	Widget *ptr2;

	x1=x;
	y1=y;

	//TODO we should check if mouse press is in our window if not bail out
	ptr=widgets[i];
	while (ptr != nullptr)
	{
		ptr2=ptr->ProcessMousePress(x1,y1,ptrOpt);
		if (ptr2)
		{
			return ptr2;
		}
		i++;
		ptr=widgets[i];
	}
	return nullptr;
}
Widget * KeyboardWidget::ProcessMouseRelease(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt)
{
	uint32_t x1,y1,i=0;
	Widget *ptr;
	Widget *ptr2;

	x1=x;
	y1=y;

	//TODO we should check if mouse press is in our window if not bail out
	ptr=widgets[i];
	while (ptr != nullptr)
	{
		ptr2=ptr->ProcessMouseRelease(x1,y1,ptrOpt);
		if (ptr2)
		{
			return ptr2;
		}
		i++;
		ptr=widgets[i];
	}
	return nullptr;
}

CheckBoxWidget::CheckBoxWidget(PixelNumber x, PixelNumber y, PixelNumber dx, PixelNumber dy,  const char *str, std::function<bool(callbackOptions_t *)> callback):
									WidgetWithText(x, y,dx, dy)
{
	_callback=callback;
	SetText(str);
	checked=false;
}

bool CheckBoxWidget::Refresh(bool full, PaintOptions_t *ptrOpt )
{
	if (full || _changed)
	{
		PixelNumber xOffset=0, yOffset=0;
		PixelNumber x=_x, y=_y;
		Colour fg,bg;
		fg=_fcolour;
		bg=_bcolour;


		if (ptrOpt!= nullptr)
		{
			xOffset=ptrOpt->xOffset;
			yOffset=ptrOpt->yOffset;

			if (ptrOpt->dim)
			{
				fg=lcd.applyColorScale(50,fg);
				bg=lcd.applyColorScale(50,bg);
			}
		}
		xOffset+=_x;
		yOffset+=_y;

		if (checked)
		{
			lcd.setColor(_pressedColor );
		}else
		{
			lcd.setColor(bg );
		}
		// Note that we draw the filled rounded rectangle with the full width but 2 pixels less height than the border.
		// This means that we start with the requested colour inside the border.
		lcd.fillRoundRect(xOffset, yOffset + 1, xOffset +GetHeight() , yOffset + GetHeight() );
		lcd.setColor(fg);
		lcd.drawRoundRect(xOffset, yOffset, xOffset + GetHeight() ,yOffset +GetHeight() );

//		if (checked)
//		{
//			lcd.setColor(orange);
//			lcd.fillCircle(xOffset+GetHeight()/2, yOffset +GetHeight()/2, GetHeight()/2);
//			//lcd.drawLine(x + xOffset,y + yOffset,x + xOffset + GetHeight(), y + yOffset +GetHeight());
//			//lcd.drawLine(x + xOffset,y + yOffset +GetHeight(), x + xOffset + GetHeight(), y + yOffset);
//		}

		lcd.setTransparentBackground(true);
		lcd.setColor(fg);
		lcd.setFont(_font);

		PixelNumber rowY=yOffset + 2 + 1;
		if (_dy != 0)
		{
			rowY = GetHeight() / 2 + yOffset - (UTFT::GetFontHeight(_font) + 2) * _textRows + UTFT::GetFontHeight(_font)/2;
		}


		lcd.setTextPos(xOffset + 3+30   , rowY, xOffset + _dx - 3);	// text is always left-aligned
		lcd.print(_text);


		lcd.setTransparentBackground(false);
		_changed = false;
		return true;
	}
	return false;
}




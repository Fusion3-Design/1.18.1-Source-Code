/*
 * ScrollText.cpp
 *
 *  Created on: Feb 12, 2018
 *      Author: tstern
 */
#include <string>
#include <functional>
#include "ScrollText.hpp"
#include "DisplaySize.hpp"
#include "widgets.hpp"
#include "memory.h"
#include "ColourSchemes.hpp"


ScrollText::ScrollText(PixelNumber x, PixelNumber y, PixelNumber dx, PixelNumber dy, Font_t font):
Widget(x, y, dx, dy, nullptr)
{

	ptrUp=new Button(DisplayX-30, y, 30, UP_ARROW, std::bind(&ScrollText::ScrollUp, this,
			std::placeholders::_1),30);
	ptrUp->SetFont(glcd19x21);


	ptrDown=new Button(DisplayX-30, DisplayY-30, 30, DOWN_ARROW, std::bind(&ScrollText::ScrollDown, this,
			std::placeholders::_1),30);
	ptrDown->SetFont(glcd19x21);



	textIndex=0;
	scrollIndex=0;
	text[0]='\0';
	_font=font;
	_fcolour=black;

	//find the number of rows we can display
	rowSpacing=UTFT::GetFontHeight(_font)+2; //add two for space between rows
	numRowsWeCanDisplay=_dy/rowSpacing;

	memset(lines,0,sizeof(testLine_t)*MAX_LINES);
	lastLine=0;
	_changed=true;
}


bool ScrollText::ScrollUp(callbackOptions_t *)
{
	//LOG("Scroll up pushed %d %d %d", scrollIndex,lastLine, numRowsWeCanDisplay);
	if (scrollIndex<(lastLine-numRowsWeCanDisplay))
	{
		scrollIndex++;
		_changed=true;
		return true;
	}
	return false;
}

bool ScrollText::ScrollDown(callbackOptions_t *)
{
	//LOG("Scroll down pushed");
	if (scrollIndex>0)
	{
		scrollIndex--;
		_changed=true;

		return true;
	}
	return false;
}

bool ScrollText::Refresh(bool full, PaintOptions_t *ptrOpt)
{
	PixelNumber xOffset=0, yOffset=0;
	Colour fg,bg;

	fg=_fcolour;
	bg=_bcolour;

	//LOG("refresh called");
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

	if (ptrUp->GetChanged() || ptrDown->GetChanged())
	{
		ptrUp->Refresh(full, ptrOpt);
		ptrDown->Refresh(full, ptrOpt);
	}
	if (full || _changed)
	{
		if (lastLine > numRowsWeCanDisplay) //if we have more than one screen of data
		{
			//draw background for text area
			lcd.setColor(bg);
			lcd.fillRect(xOffset, yOffset, _dx - 30 - 2, yOffset + _dy - 1);
			lcd.setColor(fg);

			//draw the scroll bars
			lcd.setColor(grey);
			//lcd.setBackColor(red);
			lcd.fillRect(DisplayX - 30, yOffset + 30, DisplayX,
					yOffset + _dy - 30);

			int16_t scrollPixelsPerLine = _dy - 60;

			//LOG("line info %d %d %d",lastLine,scrollPixelsPerLine,numRowsWeCanDisplay);

			scrollPixelsPerLine = (_dy - 60)
					/ (lastLine - numRowsWeCanDisplay + 1);

			//LOG("pels %d",scrollPixelsPerLine);
			int16_t y1 = (yOffset + _dy - 30)
					- scrollPixelsPerLine * (scrollIndex + 1);

			//draw the scroll bar "slider"
			lcd.setColor(slate);
			lcd.fillRect(DisplayX - 30, y1, DisplayX, y1 + scrollPixelsPerLine);
			ptrUp->Refresh(full, ptrOpt);
			ptrDown->Refresh(full, ptrOpt);

		}
		else
		{
			lcd.setColor(bg);
			lcd.fillRect(xOffset, yOffset, _dx - 1, yOffset + _dy - 1);
			lcd.setColor(fg);

		}

		lcd.setColor(fg);
		lcd.setFont(_font);
		lcd.setBackColor(bg);
		int16_t y = _y + _dy - rowSpacing;
		int line;
		line = lastLine - 1 - scrollIndex;
		//LOG("starting with line %d",line);
		while (y > _y && line >= 0)
		{
			char str[100];
			memcpy(str, lines[line].ptr, lines[line].len);
			str[lines[line].len]='\0';
			//LOG("len %d",lines[line].len);
			lcd.setTextPos(_x + 2, y, DisplayX);
			lcd.print(str);
			line--;
			y = y - rowSpacing;
		}
		_changed = false;
		return true;
	}
	return false;
}

void ScrollText::AddLine(char *str, int len)
{

	if (len==0 || str==nullptr)
	{
		return;
	}
	if (lastLine<MAX_LINES)
	{
		lines[lastLine].ptr=str;
		lines[lastLine].len=len;
		lastLine++;
	} else
	{
		for(int i=1; i<lastLine; i++)
		{
			memcpy(&lines[i-1],&lines[i],sizeof(testLine_t));
		}
		lines[lastLine].ptr=str;
		lines[lastLine].len=len;
	}


}
void ScrollText::SetLines(void)
{
	uint16_t ix=0;
	uint16_t st=0;

	lastLine=0;
	memset(lines,0,sizeof(testLine_t)*MAX_LINES);

	//LOG("Calling set line");

	st=ix;
	//increment to next line feed or next break point
	while (text[ix]!='\0')
	{
		if (text[ix]=='\n')
		{
			if (st!=ix)
			{
				AddLine(&text[st],ix-st);
			}
			ix++;
			st=ix;
			while(text[st]=='\n' && text[st]!='\0')
			{
				st++;
				ix=st;
			}
		}else if ((ix-st)>20 && (ix-st)<35) //start looking for space to wrap text
		{
			//LOG("Long String");
			if (text[ix]==' ')
			{
				if (st!=ix)
				{
					//LOG("Breaking long string");
					AddLine(&text[st],ix-st);
				}
				ix++;
				st=ix;
				while(text[st]=='\n' && text[st]!='\0')
				{
					st++;
					ix=st;
				}

			}
		}else if ((ix-st)>=35) //No space force a wrap
		{
			if (st!=ix)
			{
				AddLine(&text[st],ix-st);
			}
			ix++;
			st=ix;
			while(text[st]=='\n' && text[st]!='\0')
			{
				st++;
				ix=st;
			}
		}
		if (text[ix]!='\0')
		{
			ix++;
		}
	}

	if ((ix-st)>0 && text[st]!='\0')
	{
		//LOG("Last line %d %d, 0x%X  0x%X", ix,st,text[st-1],text[st]);
		AddLine(&text[st],ix-st);
		st=ix+1;
	}

}
void ScrollText::Append(const char *str)
{
	char *ptr=(char *)str;


	while(*ptr)
	{

		if (textIndex<(SCROLL_BUFFER_LENGTH-1))
		{
			//LOG("appending: %c",*ptr);
			text[textIndex]=*ptr;
			ptr++;
			textIndex++;
			text[textIndex]='\0';
		}else
		{
			for(int i=1; i<textIndex; i++)
			{
				text[i-1]=text[i];
			}
			text[textIndex-1]=*ptr;
			ptr++;
			text[textIndex]='\0';
		}
	}
	text[SCROLL_BUFFER_LENGTH-1]='\0';

	SetLines();
	_changed=true;
}
PixelNumber ScrollText::GetTextWidth(const char* s, PixelNumber maxWidth)
{
	lcd.setFont(_font);
	lcd.setTextPos(0, 9999, maxWidth);
	lcd.print(s);    // dummy print to get text width
	return lcd.getTextX();
}

Widget * ScrollText::ProcessMousePress(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt)
{
	if (ptrUp->ProcessMousePress(x,y,ptrOpt))
	{
		return this;
	}
	if (ptrDown->ProcessMousePress(x,y,ptrOpt))
	{
		return this;
	}
	return nullptr;
}

Widget * ScrollText::ProcessMouseRelease(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt)
{
	if (ptrUp->ProcessMouseRelease(x,y,ptrOpt))
	{
		return this;
	}
	if (ptrDown->ProcessMouseRelease(x,y,ptrOpt))
	{
		return this;
	}
	return nullptr;
}

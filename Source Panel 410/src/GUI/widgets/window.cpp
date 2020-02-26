/*
 * window.cpp
 *
 *  Created on: Feb 8, 2018
 *      Author: tstern
 */


#include "window.hpp"
#include "widgets.hpp"
#include "ColourSchemes.hpp"
#include "Icons/Icons.hpp"
#include "Hardware/SerialIo.hpp"

extern UTFT lcd;


bool WidgetWindow::Refresh(bool full, PaintOptions_t *ptrOpt)
{
	Widget *ptr;
	uint32_t i;
	bool ret = false;
	uint8_t fbIndex = -1; //framebuffer index
	bool show=true;

	if (_changed)
	{
		full = true;
	}


	if (ptrOpt!=nullptr)
	{
		show=ptrOpt->show;
//		if (ptrOpt->frameBuffer !=-1 && ptrOpt->frameBuffer<2)
//		{
//			fbIndex=ptrOpt->frameBuffer;
//			lcd.SetWriteFrameBuffer(fbIndex);
//			show=ptrOpt->show;
//		}
	}
//	if (full && fbIndex==-1)
//	{
//		//LOG("doing full refresh");
//		fbIndex=0;
//		if (lcd.getWriteFrameBuffer() == 0)
//		{
//			fbIndex = 1;
//		}
//		lcd.SetWriteFrameBuffer(fbIndex);
//	}


	//check and see if we are a popup window?
	// we are popup if we have a parent window.

	if (full)
	{
		//clear the LCD

		Colour bg;
		bg=_bcolour;
		if (ptrOpt!= nullptr)
		{
			if (ptrOpt->dim)
			{
				bg=lcd.applyColorScale(50,bg);
			}
		}
		lcd.fillScr(bg);
		ret = true;
	}

	i=0;
	ptr=widgets[i];
	while (ptr != NULL)
	{
		//LOG("Refreshing %x", (uint32_t)ptr);
		if (ptr->Refresh(full, ptrOpt))
		{
			//LOG("refresh changed %d", full);
			ret = true;
		}
		i++;
		ptr=widgets[i];
	}

	if (show)
	{
		//LOG("showing %d",lcd.getWriteFrameBuffer());
		lcd.ShowFrameBuffer(lcd.getWriteFrameBuffer());
	}
	_changed=false;
	return ret;
}

bool WidgetWindow::IsDirty()
{
	Widget *ptr;
	uint32_t i;

	if (_changed)
	{
		//LOG("window changed");
		return true;
	}

	i=0;
	ptr=widgets[i];
	while (ptr != NULL)
	{
		if (ptr->GetChanged())
		{
			//LOG("Widget changed %s %s",ptr->name, ((WidgetWithText *)ptr)->GetText());
			return true;
		}
		i++;
		ptr=widgets[i];
	}
	return false;
}

bool WidgetWindow::ProcessMousePress(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt )
{
	uint32_t x1,y1,i=0;
	Widget *ptr;

	x1=x;
	y1=y;

	if (ptrOpt==nullptr)
	{
		ptrOpt=&options;
	}

	ptr=widgets[i];
	while (ptr != nullptr)
	{
		if (ptr->ProcessMousePress(x1,y1,ptrOpt))
		{
			return true;
		}
		i++;
		ptr=widgets[i];
	}
	return false;
}

bool WidgetWindow::ProcessMouseRelease(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt)
{
	uint32_t x1,y1,i=0;
	Widget *ptr;
	Widget *ptr2;

	x1=x;
	y1=y;

	if (ptrOpt==nullptr)
	{
		ptrOpt=&options;
	}
	ptr=widgets[i];
	while (ptr != nullptr)
	{
		if (ptr2=ptr->ProcessMouseRelease(x1,y1,ptrOpt))
		{
			return true;
		}
		i++;
		ptr=widgets[i];
	}
	false;
}


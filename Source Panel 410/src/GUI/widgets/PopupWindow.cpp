/*
 * PopupWindow.cpp
 *
 *  Created on: Feb 9, 2018
 *      Author: tstern
 */

#include "PopupWindow.hpp"
#include "Hardware/SysTick.hpp"
extern UTFT lcd;

bool PopupWindowWidget::Refresh(bool full, PaintOptions_t *ptrOpt)
{

	uint32_t i;
	Widget *ptr;
	bool ret = false;
	int8_t fbIndex = -1; //framebuffer index
	static int8_t lastfbIndex=-1;
	static uint32_t last_refresh=0;

	last_refresh=SystemTick::GetTickCount();

	paintOptions.dim=true;
	paintOptions.xOffset=0;
	paintOptions.yOffset=0;
	paintOptions.frameBuffer=-1;
	paintOptions.show=false;

	//if parent is dirty or we are we need to do a full refresh
	if (_changed)
	{
		full = true;
	}

	if (ptrParent != nullptr)
	{
		if (ptrParent->IsDirty())
		{
			full=true;
			WARNING("Parent dirty");
		}
	}

	//full=true;

	//to do a full refresh we want to draw on new frame buffer
	fbIndex=lcd.getWriteFrameBuffer();
	if (full)
	{
		fbIndex=0;
		if (lcd.getWriteFrameBuffer() == 0)
		{
			fbIndex = 1;
		}
		// set paint option to tell parent which frame buffer to use
		paintOptions.frameBuffer=fbIndex;
		LOG("Setting frame buffer %d",fbIndex);
		lcd.SetWriteFrameBuffer(fbIndex);
	}


	// refresh parent if needed
	if (ptrParent != nullptr)
	{
		ret=ptrParent->Refresh(full, &paintOptions);
		if (ret && ptrWidgetChaging != nullptr)
		{
			//draw widget that is changing without diming
			paintOptions.dim=false;
			ptrWidgetChaging->Refresh(true, &paintOptions);
		}
	}

	if (ret && forceRedrawWithParent)
	{
		full = true;
	}
	
	if (fbIndex != lastfbIndex)
	{
		full=true;
		lastfbIndex=fbIndex;
	}


	//LOG("ret is %d", ret);

	if (full)
	{
		//LOG("Drawing popup background %d %d ",full,ret);
		//draw our background window
		lcd.setColor(_bcolour);
		lcd.fillRect(xPos, yPos, xPos+width-1, yPos+height- 1);
		full = true;

	}

	
	paintOptions.dim = false;
	paintOptions.xOffset = xPos;
	paintOptions.yOffset = yPos;

	i=0;
	ptr=widgets[i];
	while (ptr != NULL)
	{
		//LOG("Refreshing popup %x", (uint32_t)ptr);
		if (ptr->Refresh(full, &paintOptions))
		{
			ret = true;
		}
		i++;
		ptr=widgets[i];
	}

	//draw boarder
	if (ret || full)
	{
		lcd.setColor(borderColour);
		lcd.drawRect(xPos+1, yPos+1, xPos+width-2, yPos+height- 2);
	}

	//switch to correct frame buffer
	LOG("showing frame buffer %d", lcd.getWriteFrameBuffer());
	lcd.ShowFrameBuffer(lcd.getWriteFrameBuffer());
	_changed=false;


	return ret;
}


bool PopupWindowWidget::ProcessMousePress(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt)
{
	uint32_t x1,y1,i=0;
	Widget *ptr;
	Widget *btnPressed;

	x1=x-xPos;
	y1=y-yPos;

	if (ptrOpt==nullptr)
	{
		ptrOpt=&options;
	}

	//LOG("press %d %d",x,y);
	ptr=widgets[i];
	while (ptr != NULL)
	{
		ptrOpt->iValue=0;
		btnPressed=ptr->ProcessMousePress(x1,y1,ptrOpt);
		if (btnPressed)
		{
			paintOptions.dim=false;
			paintOptions.xOffset=xPos;
			paintOptions.yOffset=yPos;
			btnPressed->Refresh(true,&paintOptions);


			if (ptrWidgetChaging != nullptr && ptrOpt->type==Type_Integer)
			{
				//todo handle different types
				char str[40];
				value=value+ptrOpt->iValue;
				if (value<0) {value=0;}
				if (value>ptrWidgetChaging->GetMaxValue())
					{value=ptrWidgetChaging->GetMaxValue();}
				itoa(value, str, 10);
				//LOG("Str is %s",str);
				ptrWidgetChaging->SetText(str);
				ptrWidgetChaging->Refresh(true, nullptr);
			}
			return true;
		}
		i++;
		ptr=widgets[i];
	}
	return false;
}

bool PopupWindowWidget::ProcessMouseRelease(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt)
{
	uint32_t x1,y1,i=0;
	Widget *ptr;
	Widget *btnPressed;
	bool pressed=false;

	x1=x-xPos;
	y1=y-yPos;

	if (ptrOpt==nullptr)
	{
		ptrOpt=&options;
	}
	//LOG("release %d %d",x,y);
	ptr=widgets[i];
	while (ptr != NULL)
	{
		btnPressed=ptr->ProcessMouseRelease(x1,y1,ptrOpt);
		if (btnPressed)
		{
			paintOptions.dim=false;
			paintOptions.xOffset=xPos;
			paintOptions.yOffset=yPos;
			btnPressed->Refresh(true,&paintOptions);
			pressed=true;
			//return;
		}
		i++;
		ptr=widgets[i];
	}
	return pressed;
}


void PopupWindowWidget::SetWidgetToChange(WidgetWithText *ptrWidget, WidgetValueType_t type)
{
	if (ptrWidget == nullptr)
	{
		if (ptrWidgetChaging != nullptr)
		{
			ptrWidgetChaging->SetPressed(false);
		}
		ptrWidgetChaging = ptrWidget;
		return;
	}
	ptrWidgetChaging=ptrWidget;
	_type=type;
	char str[40];

	strncpy(str,ptrWidget->GetText(),40);
	str[39]='\0';
	LOG("Setting to %s",str);
	switch (_type)
	{
	case Type_Integer:
		value=atoi(str);
		break;
	}

}


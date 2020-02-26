/*
 * options.cpp
 *
 *  Created on: Feb 12, 2018
 *      Author: xps15
 */

#include "options.hpp"
#include "widgets.hpp"

Options::Options(PixelNumber x, PixelNumber y, PixelNumber dx, PixelNumber dy, const char *options[], uint8_t numOptions,
		std::function<void(uint8_t optionIndex)> callback, Font_t font):
		Widget(x, y, dx, dy)
{
	_font=font;
	_numOptions=numOptions;
	_currentSelectionIndex= numOptions-1;
	_callback=callback;

	uint16_t rowHeight=dy; //UTFT::GetFontHeight(_font) + 2;
	uint16_t rowY=y;
	for(int i=0; i<_numOptions; i++)
	{
		strncpy(_options[i],options[i],WIDGET_TEXT_LEN);
		_options[i][WIDGET_TEXT_LEN-1]='\0';
		CheckBoxWidget *ptr=new CheckBoxWidget(x,rowY,dx,dy,_options[i],[](callbackOptions_t *ptr) { if(ptr !=nullptr) {ptr->iValue=1; ptr->type=Type_Integer;} return true;});
		ptr->SetColours(white,white,orange);
		widgets.add(ptr);
		rowY+=rowHeight;
	}
	_changed=true;
}

bool Options::Refresh(bool full, PaintOptions_t *ptrOpt)
{
	Widget *ptr;
	uint32_t i;
	bool ret = false;

	i=0;
	ptr=widgets[i];
	while (ptr != NULL)
	{
		if (_currentSelectionIndex == i)
		{
			((CheckBoxWidget *)ptr)->SetChecked(true);
		}else
		{
			((CheckBoxWidget *)ptr)->SetChecked(false);
		}
		if (ptr->Refresh(full, ptrOpt))
		{
			ret = true;
		}
		i++;
		ptr=widgets[i];
	}
	return ret;
}



Widget * Options::ProcessMousePress(PixelNumber x, PixelNumber y, callbackOptions_t *ptrOpt)
{
	uint32_t x1,y1,i=0;
	Widget *ptr;
	Widget *ptr2;

	callbackOptions_t options;
	x1=x;
	y1=y;

	if (ptrOpt==nullptr)
	{
		ptrOpt=&options;
	}
	ptr=widgets[i];
	while (ptr != nullptr)
	{
		if(ptr2=ptr->ProcessMousePress(x1,y1,ptrOpt))
		{
			if (ptrOpt->type==Type_Integer && ptrOpt->iValue!=0)
			{

				_currentSelectionIndex=i;
				return ptr2;
			}
		}
		i++;
		ptr=widgets[i];
	}
	return nullptr;
}

Widget * Options::ProcessMouseRelease(PixelNumber x, PixelNumber y, callbackOptions_t *ptrOpt)
{
	uint32_t x1,y1,i=0;
	Widget *ptr;
	Widget *ptr2;

	x1=x;
	y1=y;

	ptr=widgets[i];
	while (ptr != nullptr)
	{
		if (ptr2=ptr->ProcessMouseRelease(x1,y1,ptrOpt))
		{
			return ptr2;
		}
		i++;
		ptr=widgets[i];
	}
	nullptr;
}


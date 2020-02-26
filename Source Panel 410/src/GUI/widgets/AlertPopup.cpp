/*
 * AlertPopup.cpp
 *
 *  Created on: Feb 22, 2018
 *      Author: xps15
 */

#include "AlertPopup.hpp"
#include "window.hpp"
#include "Hardware/UTFT.hpp"
#include "DisplaySize.hpp"
#include "ColourSchemes.hpp"
#include "PopupWindow.hpp"
#include "Machine/Machine.hpp"
#include "Hardware/SysTick.hpp"
#include "Library/JSONParser.h"

AlertPopup::AlertPopup(const ColourScheme& colours) :
		PopupWindowWidget(6, 100, DISPLAY_X - 12, 100,
				colours.alertPopupBackColour, colours.popupBorderColour)
{
	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;

	type=Window_Popup_Alert;
	widgets.add(
			new IconButtonWidget(5, 6, 30, IconCancel,
					[this](callbackOptions_t *ptrOpt)
					{
						if (this->cancelMacro.size()>0)
						{
							Machine::getInstance().RunMacro(this->cancelMacro.c_str());
						}
						this->_isActive=false;
						ptrOpt->type=Type_PopupClosed;
						ptrOpt->iValue=0;
						ptrOpt->touchDelay=-1;
						return true;
					},
					27));
	Defaults::defaultFcolour = colours.alertPopupTextColour;
	Defaults::defaultBcolour = colours.alertPopupBackColour;
	ptrTitle = new Label(40, 6, width - 50, 27, "Alert Title",_TextAlignment::Centre);
	ptrText = new Label(10, 50, width - 20, 27, "Alert Text",_TextAlignment::Centre);
	widgets.add(ptrTitle);
	widgets.add(ptrText);


	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;

	uint32_t y = 80;
	uint32_t x = width-100;
	uint32_t dy = 70;
	//DO the X and Y movement buttons
	zUp=(new IconButtonWidget(x , y, 60, ArrowsIn, [this](callbackOptions_t *ptrOpt) {
		uint32_t startTime,lastTick;
		Machine::getInstance().MoveZRelative(-0.01);
		if (ptrOpt==nullptr)
		{
			return true;
		}
		startTime=SystemTick::GetTickCount();
		lastTick=SystemTick::GetTickCount();
		LOG("touch");
		while (ptrOpt->ptrTouch->pressed())
		{

			if ((SystemTick::GetTickCount()-lastTick)>50 && (SystemTick::GetTickCount()-startTime)>200)
			{
				int32_t feedRate;
				float x=-0.01;
				LOG("press again");
				if ((SystemTick::GetTickCount()-startTime)>2000)
				{
					x=-0.1;
				}else
				{
					x=(float)(SystemTick::GetTickCount()-startTime)/-2000.0*0.1 -0.01;
				}

				feedRate=(uint32_t)(60000.0*-x)/(SystemTick::GetTickCount()-lastTick)-140;
				if (feedRate<=0)
				{
					feedRate=100;
				}
				Machine::getInstance().MoveZRelative(x,feedRate);
				lastTick=SystemTick::GetTickCount();
			}
		}
		return true;

	}));
	widgets.add(zUp);

	zDown=(new IconButtonWidget(x , y+dy, 60, ArrowsOut, [this](callbackOptions_t *ptrOpt) {

		uint32_t startTime,lastTick;
		Machine::getInstance().MoveZRelative(-0.01);
		if (ptrOpt==nullptr)
		{
			return true;
		}
		startTime=SystemTick::GetTickCount();
		lastTick=SystemTick::GetTickCount();
		LOG("touch");
		while (ptrOpt->ptrTouch->pressed())
		{

			if ((SystemTick::GetTickCount()-lastTick)>50 && (SystemTick::GetTickCount()-startTime)>200)
			{
				uint32_t feedRate;
				float x=0.01;
				LOG("press again");
				if ((SystemTick::GetTickCount()-startTime)>2000)
				{
					x=0.1;

				}else
				{
					x=(float)(SystemTick::GetTickCount()-startTime)/2000.0*0.1 +0.01;
				}
				feedRate=(uint32_t)(60000.0*x)/(SystemTick::GetTickCount()-lastTick)-140;
				if (feedRate<=0)
				{
					feedRate=100;
				}

				Machine::getInstance().MoveZRelative(x,feedRate);
				lastTick=SystemTick::GetTickCount();
			}
		}
		return true;
	}));
	widgets.add(zDown);

	Defaults::defaultFcolour = colours.buttonTextColour;
	Defaults::defaultBcolour = colours.buttonTextBackColour;
	ptrBtn1 =new Button(40, 100, 80, "Ok",
					[this](callbackOptions_t *ptrOpt)
					{
						if (this->btn1Macro.size()>0)
						{
							Machine::getInstance().RunMacro(this->btn1Macro.c_str());
							ptrOpt->touchDelay=-1;
						}
						return true;
					});
	widgets.add(ptrBtn1);

	ptrBtn2 =new Button(200, 100, 80, "Cancel",
					[this](callbackOptions_t *ptrOpt)
					{
						if (this->btn2Macro.size()>0)
						{
							Machine::getInstance().RunMacro(this->btn2Macro.c_str());
							ptrOpt->touchDelay=-1;
						}
						return true;
					});
	widgets.add(ptrBtn2);

	zUp->SetVisible(false);
	zDown->SetVisible(false);
	ptrBtn1->SetVisible(false);
	ptrBtn2->SetVisible(false);

	_changed = true;
	_isActive = false;
}

void AlertPopup::reset()
{
	zUp->SetVisible(false);
	zDown->SetVisible(false);
	ptrBtn1->SetVisible(false);
	ptrBtn2->SetVisible(false);
	ptrBtn1->SetYLoc(100);
	ptrBtn2->SetYLoc(100);
	this->yPos=100;
	this->height=100;
	btn1Macro.clear();
	btn2Macro.clear();
	cancelMacro.clear();
}

void AlertPopup::WindowLostFocus()
{

	reset();
}

void AlertPopup::SetJSON(const char *jsonStr)
{
	char key[50];
	char value[50];
	JSONParser parser;

//	json.clear();
//	json.copy(jsonStr);

	parser.setString(jsonStr);

	while (parser.getNextKeyValue(key,50,value,50))
	{
		LOG("Json '%s':'%s'",key,value);
		if (strcmp(key,"reboot")==0)
		{
			if (strcmp(value,"true")==0 && SystemTick::GetTickCount()>5000)
			{
				NVIC_SystemReset() ;
			}
		}
		if (strcmp(key,"erase")==0)
		{
			if (strcmp(value,"true")==0 && SystemTick::GetTickCount()>5000)
			{
				flash_erase_user_signature();
			}
		}
		if (strcmp(key,"zaxis")==0)
		{
			this->yPos=20;
			this->height=220;
			zUp->SetVisible(true);
			zDown->SetVisible(true);
		}
		if (strcmp(key,"btn1")==0)
		{
			if (this->height<140)
			{
				this->height=140;
			}
			ptrBtn1->SetText(value);
			ptrBtn1->SetVisible(true);
		}
		if (strcmp(key,"btn2")==0)
		{
			if (this->height<140)
			{
				this->height=140;
			}
			ptrBtn2->SetText(value);
			ptrBtn2->SetVisible(true);
		}
		if (strcmp(key,"btn1Macro")==0)
		{
			btn1Macro.clear();
			btn1Macro.copy(value);
		}
		if (strcmp(key,"btn2Macro")==0)
		{
			btn2Macro.clear();
			btn2Macro.copy(value);
		}
		if (strcmp(key,"cancelMacro")==0)
		{
			cancelMacro.clear();
			cancelMacro.copy(value);
		}
	}

	if (this->height == 220)
	{
		ptrBtn1->SetYLoc(180);
		ptrBtn2->SetYLoc(180);
	}




}

bool AlertPopup::Clear()
{
	reset();
	_isActive = false;
}
void AlertPopup::Set(const char *title, const char *text, int32_t mode,
		uint32_t controls)
{
	LOG("Message set called: %s",text);
	ptrTitle->SetText(title);
	ptrText->SetText(text);
	if (text==nullptr || strlen(text)==0) //if we have an empty string Duet wants us to close the active popup.
	{
		reset();
		_isActive = false;
	}else
	{
		_isActive = true;
	}
	_changed = true;
}


/*
 * FileInfoPopup.cpp
 *
 *  Created on: Feb 20, 2018
 *      Author: tstern
 */
#include <string>
#include <functional>
#include "DisplaySize.hpp"
#include "widgets.hpp"
#include "memory.h"
#include "ColourSchemes.hpp"
#include "FileInfoPopup.hpp"
#include "Machine/Machine.hpp"
#include "Library/ftoa.h"
#include "Hardware/Mem.hpp"

//const ColourScheme *colours = &colourSchemes[0];

FileInfoPopup::FileInfoPopup(PixelNumber x, PixelNumber y, PixelNumber dx, PixelNumber dy,
		Colour background, Colour border,WidgetWindow *parent):
		PopupWindowWidget(x,y,dx,dy,background,border,parent)
{

	Defaults::defaultFcolour = colours->buttonTextColour;
	Defaults::defaultBcolour = colours->buttonTextBackColour;
	widgets.add(new IconButtonWidget(5, 6, 30, IconCancel,[](callbackOptions_t *ptrOpt) {ptrOpt->touchDelay=-1; ptrOpt->type=Type_PopupClosed; ptrOpt->iValue=0; return true;}, 27));
	Defaults::defaultFcolour=white;
	Defaults::defaultBcolour=background;
	widgets.add(new Label(150, 6, 160, 27,"File Information"));

	for (int i=0; i<6; i++)
	{
		ptrLabels[i]=new Label(6,30*i+40, dx+x-10,27,"Test");
		ptrLabels[i]->SetColours(white, background ,lightGreen);
		widgets.add(ptrLabels[i]);
	}


		Defaults::defaultFcolour=colourSchemes[0].buttonTextColour;
		Defaults::defaultBcolour=colourSchemes[0].buttonTextBackColour;
		widgets.add(new Button(6,y+dy-35, 100,"Print",[](callbackOptions_t *ptrOpt) {
			ptrOpt->type=Type_Command;
			snprintf(ptrOpt->cmd,20,"print");
			ptrOpt->touchDelay=-1;
			return true;}));


	_changed=false;

}

void FileInfoPopup::setFileName(const char *str)
{
	char str2[50];
	snprintf(str2,50,"Filename: %s",str);
	ptrLabels[0]->SetText(str2);
	_changed=true;
}

void FileInfoPopup::setSize(const char *str)
{
	char str2[50];
	snprintf(str2,50,"Size: %s bytes",str);
	ptrLabels[1]->SetText(str2);
	_changed=true;
}
void FileInfoPopup::setLayerHeight(const char *str)
{
	char str2[50];
	LOG("Layer height changed");
	snprintf(str2,50,"Layer Height: %smm",str);
	ptrLabels[2]->SetText(str2);
	_changed=true;
}
void FileInfoPopup::setFileObjectHeight(const char *str)
{
	char str2[50];
	snprintf(str2,50,"Object Height: %smm",str);
	ptrLabels[3]->SetText(str2);
	_changed=true;
}
void FileInfoPopup::setFilamentNeeded(float f)
{
	char str2[50];
	char str[20];
	ftoa(f, str, 0, 'f');
	snprintf(str2,50,"Filament Needed: %smm",str);
	ptrLabels[4]->SetText(str2);
	_changed=true;
}
void FileInfoPopup::setSlicer(const char *str)
{
	char str2[50];
	snprintf(str2,50,"Slicer: %s",str);
	ptrLabels[5]->SetText(str2);
	_changed=true;
}


bool FileInfoPopup::Refresh(bool full, PaintOptions_t *ptrOpt)
{

	uint32_t i;
	Widget *ptr;
	bool ret = false;


	paintOptions.dim=true;
	paintOptions.xOffset=0;
	paintOptions.yOffset=0;
//
//	if (ptrParent != nullptr)
//	{
//		if (ptrParent->Refresh(full, &paintOptions))
//		{
//			ret = true;
//		}
//	}

	LOG("Infor Popup refresh");
	if (full || ret)
	{
		//draw our background window
		lcd.setColor(_bcolour);
		lcd.fillRect(xPos, yPos, xPos+width-1, yPos+height- 1);
		lcd.setColor(borderColour);
		lcd.drawRect(xPos+1, yPos+1, xPos+width-2, yPos+height- 2);
		full = true;
	}


	paintOptions.dim=false;
	paintOptions.xOffset=xPos;
	paintOptions.yOffset=yPos;

	i=0;
	ptr=widgets[i];
	while (ptr != NULL)
	{
		LOG("Refreshing popup %x %d %d %d", (uint32_t)ptr, ptr->getX(), ptr->getY(),getFreeMemory());
		paintOptions.dim=false;
		paintOptions.xOffset=xPos;
		paintOptions.yOffset=yPos;
		if (ptr->Refresh(full, &paintOptions))
		{
			ret = true;
		}
		LOG("Refresh done");
		i++;
		ptr=widgets[i];
	}
	_changed=false;
	LOG("refresh done");
	return ret;
}

bool FileInfoPopup::ProcessMousePress(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt)
{
	return PopupWindowWidget::ProcessMousePress(x,y,ptrOpt);
}

bool FileInfoPopup::ProcessMouseRelease(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt)
{
	return PopupWindowWidget::ProcessMouseRelease(x,y,ptrOpt);
}

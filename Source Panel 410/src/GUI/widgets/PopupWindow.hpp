/*
 * PopupWindow.hpp
 *
 *  Created on: Feb 9, 2018
 *      Author: tstern
 */

#ifndef SRC_GUI_WIDGETS_POPUPWINDOW_HPP_
#define SRC_GUI_WIDGETS_POPUPWINDOW_HPP_

#include "window.hpp"
#include "Hardware/UTFT.hpp"
#include "DisplaySize.hpp"
#include "ColourSchemes.hpp"



class PopupWindowWidget : public WidgetWindow
{
protected:
	PixelNumber height, width, xPos, yPos;
	Colour borderColour;
	WidgetWindow *ptrParent;
	bool visable;

	WidgetWithText *ptrWidgetChaging;
	WidgetValueType_t _type;
	PaintOptions_t paintOptions;
	int32_t value;

	bool forceRedrawWithParent=false;

public:
	PopupWindowWidget( PixelNumber x, PixelNumber y, PixelNumber dx, PixelNumber dy,
			Colour background, Colour border,WidgetWindow *parent=nullptr):
				WidgetWindow(background), borderColour(border),
			xPos(x), yPos(y),width(dx),height(dy), ptrParent(parent),
			visable(false),ptrWidgetChaging(nullptr){ type =Window_Popup;}

	void SetParent(WidgetWindow *parent) {ptrParent=parent;}
	WidgetWindow *GetParent()
		{
			return ptrParent;
		}

	WidgetWithText *GetWidgetToChange() {return ptrWidgetChaging;}
	void SetWidgetToChange(WidgetWithText *ptrWidget, WidgetValueType_t type);

	virtual bool Refresh(bool full, PaintOptions_t *ptrOpt = nullptr);
	virtual bool ProcessMousePress(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt =nullptr);
	virtual bool ProcessMouseRelease(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt =nullptr);
	virtual void WindowLostFocus() {LOG("lost focus");};
};




#endif /* SRC_GUI_WIDGETS_POPUPWINDOW_HPP_ */

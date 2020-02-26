/*
 * window.hpp
 *
 *  Created on: Feb 8, 2018
 *      Author: tstern
 */

#ifndef SRC_GUI_WIDGETS_WINDOW_HPP_
#define SRC_GUI_WIDGETS_WINDOW_HPP_

#include "widgets.hpp"
#include "LinkedList.hpp"
#include "Library/syslog.h"

typedef enum {
	Window_Normal=0,
	Window_Popup,
	Window_Popup_Alert,
} WindowType_t;

class WidgetWindow
{
	protected:
		LinkedList<Widget*> widgets;
		WidgetWindow *ptrPopup;
		Colour _bcolour; //background color
		callbackOptions_t options;
		bool _changed;


	public:
		WindowType_t type;

		bool IsChanged() {return _changed;}
		void SetDirty() {_changed=true;}
		bool IsDirty();
		WidgetWindow(Colour bcolour=Defaults::defaultBcolour): _bcolour(bcolour), ptrPopup(nullptr), type(Window_Normal){};
		void add(Widget *ptrWidget) {widgets.add(ptrWidget);}
	    void add(LinkedList<Widget*> list) {widgets.add(list);}
		virtual bool Refresh(bool full, PaintOptions_t *ptrOpt = nullptr);
		virtual bool ProcessMousePress(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt =nullptr); //returns true if we touched something
		virtual bool ProcessMouseRelease(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt =nullptr);
		virtual void WindowLostFocus() {LOG("lost focus");};
};




#endif /* SRC_GUI_WIDGETS_WINDOW_HPP_ */

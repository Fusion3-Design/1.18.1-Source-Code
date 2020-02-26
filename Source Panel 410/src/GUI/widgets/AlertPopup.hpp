/*
 * AlertPopup.hpp
 *
 *  Created on: Feb 22, 2018
 *      Author: xps15
 */

#ifndef SRC_GUI_WIDGETS_ALERTPOPUP_HPP_
#define SRC_GUI_WIDGETS_ALERTPOPUP_HPP_

#include "window.hpp"
#include "Hardware/UTFT.hpp"
#include "DisplaySize.hpp"
#include "ColourSchemes.hpp"
#include "PopupWindow.hpp"
#include "Machine/Machine.hpp"

#include "Library/Vector.hpp"
#include "Library/JSONParser.h"

class AlertPopup: public PopupWindowWidget
{
	protected:
		Label *ptrTitle;
		Label *ptrText;
		bool _isActive;

		IconButtonWidget *zUp, *zDown;
		Button *ptrBtn1, *ptrBtn2;
		String<50> btn1Macro, btn2Macro, cancelMacro;
	public:
		static AlertPopup& getInstance()
		{
			static AlertPopup instance(colourSchemes[0]);
			return instance;
		}
		AlertPopup(const ColourScheme& colours);

		const char *GetTitle() {return ptrTitle->GetText();}
		void SetJSON(const char *jsonStr);
		void Set(const char *title, const char *text, int32_t mode,
				uint32_t controls);
		bool IsActive()
		{
			return _isActive;
		}

		bool Clear();
		virtual void WindowLostFocus();
	private:
		AlertPopup(const AlertPopup&) = delete;
		void operator=(const AlertPopup&) = delete;
		void reset();
};




#endif /* SRC_GUI_WIDGETS_ALERTPOPUP_HPP_ */

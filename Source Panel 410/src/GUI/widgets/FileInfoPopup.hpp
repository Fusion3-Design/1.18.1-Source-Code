/*
 * FileInfoPopup.hpp
 *
 *  Created on: Feb 20, 2018
 *      Author: tstern
 */

#ifndef SRC_GUI_WIDGETS_FILEINFOPOPUP_HPP_
#define SRC_GUI_WIDGETS_FILEINFOPOPUP_HPP_

#include "window.hpp"
#include "Hardware/UTFT.hpp"
#include "DisplaySize.hpp"
#include "ColourSchemes.hpp"
#include "PopupWindow.hpp"
#include "Machine/Machine.hpp"

#define MAX_NUM_CARDS 2
#define MAX_FILE_STRING 2048


extern UTFT lcd;
extern uint8_t glcd19x21[];				// declare which fonts we will be using
extern uint8_t Roboto_Black19x23[];
extern uint8_t Roboto_Black24x28[];
extern uint8_t  Roboto18x22[];
extern uint8_t Roboto25x31[];
extern  uint8_t arrows41x40[];

extern const ColourScheme *colours;

#define DEFAULT_LARGE_FONT Roboto_Black24x28
#define DEFAULT_FONT			Roboto_Black19x23


class FileInfoPopup : public PopupWindowWidget
{
	protected:


	Label *ptrLabels[6];
	public:
		static FileInfoPopup& getInstance()
		{
			static FileInfoPopup instance(0,0,480,250,slate,red);
			return instance;
		}
		FileInfoPopup(PixelNumber x, PixelNumber y, PixelNumber dx, PixelNumber dy,
			Colour background, Colour border,WidgetWindow *parent=nullptr);



		void setFileName(const char *str);
		void setSize(const char *str);
		void setLayerHeight(const char *str) ;
		void setFileObjectHeight(const char *str);
		void setFilamentNeeded(float f);
		void setSlicer(const char *str);

		virtual bool Refresh(bool full, PaintOptions_t *ptrOpt = nullptr);
		virtual bool ProcessMousePress(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt = nullptr);
		virtual bool ProcessMouseRelease(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt =nullptr);


	private:
		FileInfoPopup(FileInfoPopup const&)               = delete;
		void operator=(FileInfoPopup const&)  = delete;
};



#endif /* SRC_GUI_WIDGETS_FILEINFOPOPUP_HPP_ */

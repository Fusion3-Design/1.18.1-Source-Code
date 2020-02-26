/*
 * FileListPopup.hpp
 *
 *  Created on: Feb 13, 2018
 *      Author: tstern
 */

#ifndef SRC_GUI_WIDGETS_FILELISTPOPUP_HPP_
#define SRC_GUI_WIDGETS_FILELISTPOPUP_HPP_

#include "window.hpp"
#include "Hardware/UTFT.hpp"
#include "DisplaySize.hpp"
#include "ColourSchemes.hpp"
#include "PopupWindow.hpp"
#include "Machine/Machine.hpp"

#define MAX_NUM_FILE_BUFFERS 2
#define MAX_FILE_STRING 1024



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

class FileListPopup : public PopupWindowWidget
{
	protected:
		uint8_t card;
		uint8_t activeBuffer, secondaryBuffer;
		Path path;
		bool _error = false;
		bool _ignoreFiles = false;
		Vector<char, MAX_FILE_STRING> fileNames[MAX_NUM_FILE_BUFFERS];
		Vector<char *, 260> fileNameIndex[MAX_NUM_FILE_BUFFERS];

		Button *ptrUp, *ptrDown, *ptrUpDir;
		Font_t _font;
		Label *ptrLabel;
		Label *ptrError;
		Button *buttons[5];
		uint16_t scrollIndex;
		uint16_t _numSDCards = 1;
		IconButtonWidget *ptrIconButton;
		uint32_t lastDirRead;
		char dir[100];

		char selectedFile[200];
		//char selectedFile[100];

		void DrawScrollbars(bool full, PaintOptions_t *ptrOpt);
		void ChangeCard(void);
		void UpDirectory(void);
	public:
		static FileListPopup& getInstance()
		{
			static FileListPopup instance(0,0,480,250,slate,red);
			return instance;
		}

		FileListPopup(PixelNumber x, PixelNumber y, PixelNumber dx, PixelNumber dy,
			Colour background, Colour border,WidgetWindow *parent=nullptr);

		void SetNumberSDCards(uint16_t x)
		{
			_numSDCards = x;
		}
	
	//these are called from the machine class
	void AddFile(const char *fname);
	void ClearFileList();
	void CommandDone(); //this should be called affer all files added

	void UpdateDir(const char *dir); //updates the current directory
	void SetErrorCode(bool error);

	bool ScrollUp(callbackOptions_t *ptrOpt);
	bool ScrollDown(callbackOptions_t *ptrOpt);

	bool FileSelectedCallback(callbackOptions_t *ptrOptions);

	virtual bool Refresh(bool full, PaintOptions_t *ptrOpt = nullptr);
	virtual bool ProcessMousePress(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt=nullptr);
	virtual bool ProcessMouseRelease(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt=nullptr);

	private:
		void ClearButtons();
		FileListPopup(const FileListPopup&) = delete;
		void operator=(const FileListPopup&) = delete;
};


#endif /* SRC_GUI_WIDGETS_FILELISTPOPUP_HPP_ */

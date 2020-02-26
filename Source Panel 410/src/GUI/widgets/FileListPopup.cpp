/*
 * FileListPopup.cpp
 *
 *  Created on: Feb 13, 2018
 *      Author: tstern
 */

#include <string>
#include <functional>
#include "DisplaySize.hpp"
#include "widgets.hpp"
#include "memory.h"
#include "ColourSchemes.hpp"
#include "FileListPopup.hpp"
#include "Machine/Machine.hpp"
#include "FileInfoPopup.hpp"
#include "Hardware/SysTick.hpp"


bool FileListPopup::FileSelectedCallback(callbackOptions_t *ptrOptions)
{
	const char *str;

	Button *ptrButton=(Button *)ptrOptions->ptrWidget;

	str=ptrButton->GetText();
	dir[0]='\0';
	if (str[0] == '*')
	{
		//we are a winner we have a directory!!! Yes I am excited
		snprintf(dir, 50, "%s\%s",path.c_ptr(),&str[1]);
		Machine::getInstance().RequestDirList(dir);
		ptrUpDir->SetVisible(true);
			//clear all the file buffers
		for(int i=0; i<MAX_NUM_FILE_BUFFERS; i++)
		{
			fileNames[i].clear();
			fileNameIndex[i].clear();
		}
		ClearButtons();
		_changed=true;
		return true;
	}
	//use the user data to get index into the fileNameIndex
	uint32_t activeBuffer, i;
	activeBuffer=ptrButton->getUserData()>>16;
	i= ptrButton->getUserData() & 0x0FFFF;
	//the filename index has the file names with up to 260 characters.
	snprintf(selectedFile,200,"%s/%s",path.c_ptr(),fileNameIndex[activeBuffer][i]);
	Machine::getInstance().RequestFileInfo(path.c_ptr(),fileNameIndex[activeBuffer][i]);
	FileInfoPopup::getInstance().setFileName(fileNameIndex[activeBuffer][i]);

	//TODO pop up file info
	LOG("adding the info popup");
	ptrPopup=&FileInfoPopup::getInstance();
	return true;

}

void FileListPopup::UpDirectory(void)
{
	char dir[100];
	char *target;
	char *ptr;
	strncpy(dir,path.c_str(),100);
	dir[99]='\0';
	ptr=dir;
	target=&dir[strlen(dir)];
	while (*ptr)
	{
		if (*ptr=='/')
		{
			target=ptr;
		}
		ptr++;
	}
	target++;
	*target='\0';

	if (strcmp(dir, Machine::getInstance().GetRootPath(card)) == 0)
	{
		ptrUpDir->SetVisible(false);
	}
	Machine::getInstance().RequestDirList(dir);
	UpdateDir(dir);
	ClearButtons();
	_changed=true;
}

void FileListPopup::ChangeCard(void)
{
	char str[100];
	if (_numSDCards >= 1)
	{
		if (card == 0)
		{
			card = 1;

		}
		else
		{
			card = 0;
		}
	}
	LOG("Card changed to %d",card);

	snprintf(str,100,"%s",Machine::getInstance().GetRootPath(card));

	ptrUpDir->SetVisible(false);
	Machine::getInstance().InitSDCard(card);
	Machine::getInstance().RequestDirList(str,true);
	UpdateDir(str);

	//clear all the file buffers
	for(int i=0; i<MAX_NUM_FILE_BUFFERS; i++)
	{
		fileNames[i].clear();
		fileNameIndex[i].clear();
	}

	ptrError->SetVisible(false);
	ptrError->SetChanged(true);
	_error = false;
	ClearButtons();
	_changed=true;
}

void FileListPopup::UpdateDir(const char *dir)
{
	uint8_t c;
	c = dir[0] - '0';
	if (c == card)
	{
		path.clear();
		path.copy(dir);
		ptrLabel->SetText(dir);
		_ignoreFiles = false;
	}
	else
	{
		//clear all the file buffers
		for (int i = 0; i < MAX_NUM_FILE_BUFFERS; i++)
		{
			fileNames[i].clear();
			fileNameIndex[i].clear();
		}

		ptrError->SetVisible(false);
		ptrError->SetChanged(true);
		_error = false;
		ClearButtons();
		_ignoreFiles = true;
		activeBuffer = 0;
		secondaryBuffer = 1;
	}
	LOG("got dir cmd %d", dir[0] - '0');
}

void FileListPopup::CommandDone()
{
	if (secondaryBuffer!= activeBuffer)
	{
		activeBuffer=secondaryBuffer;

		lastDirRead=SystemTick::GetTickCount();
		//LOG("f0 %d", fileNames[0].size());
		//LOG("f1 %d",fileNames[1].size());
		//LOG("buffer %d",activeBuffer);
		if (0 != strcmp(fileNames[0].c_ptr(), fileNames[1].c_ptr())
				|| buttons[0]->IsVisible() == false)
		{
			WARNING("File list changed");
			ClearButtons();
			_changed=true;
		}
	}
	_ignoreFiles = false;
}

FileListPopup::FileListPopup(PixelNumber x, PixelNumber y, PixelNumber dx, PixelNumber dy,
		Colour background, Colour border,WidgetWindow *parent):
		PopupWindowWidget(x,y,dx,dy,background,border,parent)
{
	card=0;
	path.clear();
	path.copy(Machine::getInstance().GetRootPath(card));
	for(int i=0; i<MAX_NUM_FILE_BUFFERS; i++)
	{
		fileNames[i].clear();
		fileNameIndex[i].clear();
	}
	lastDirRead=0;
	activeBuffer=0;
	secondaryBuffer=1;
	_font=DEFAULT_FONT;

	ptrIconButton = (new IconButtonWidget(50, 6, 40, IconFiles,
			[this](callbackOptions_t *ptrOpt)
			{   this->ChangeCard(); return true;}, 27));
	widgets.add(ptrIconButton);
	widgets.add(new IconButtonWidget(5, 6, 30, IconCancel,[](callbackOptions_t *ptrOpt) {ptrOpt->touchDelay=-1; ptrOpt->type=Type_PopupClosed; ptrOpt->iValue=0; return true;}, 27));

	ptrLabel=new Label(100,5,dx+x-158,27 ,path.c_str(),_TextAlignment::Left,true);
	ptrLabel->SetColours(black, lightGrey ,lightGreen);
	widgets.add(ptrLabel);


	ptrUpDir=new Button(x+425,5,50,UP_ARROW,
			[this](callbackOptions_t *ptrOpt)
			{
				this->UpDirectory();
					return true;
			}
	,27 );
	ptrUpDir->SetFont(glcd19x21);
	ptrUpDir->SetVisible(false);
	widgets.add(ptrUpDir);


	int16_t rowY= y+40;

	for (int i=0; i<5; i++)
	{
		buttons[i]=new Button(20,rowY,x+width-40-20,"Button",
				std::bind(&FileListPopup::FileSelectedCallback, this,std::placeholders::_1)
				,30);
		buttons[i]->SetVisible(false);
		widgets.add(buttons[i]);
		rowY+=40;
	}

	scrollIndex=0;
	ptrUp=new Button(DisplayX-36, y+40, 30, UP_ARROW, std::bind(&FileListPopup::ScrollDown, this,
			std::placeholders::_1),30);
	ptrUp->SetFont(glcd19x21);


	ptrDown=new Button(DisplayX-36, y+dy-50, 30, DOWN_ARROW, std::bind(&FileListPopup::ScrollUp, this,
			std::placeholders::_1),30);
	ptrDown->SetFont(glcd19x21);


	ptrError=new Label(20,dy/2,dx-40,27 ,"Could not read SD card",_TextAlignment::Centre);
	ptrError->SetColours(black, white ,lightGreen);
	ptrError->SetVisible(false);
	widgets.add(ptrError);

	_changed=true;



}


bool FileListPopup::ScrollUp(callbackOptions_t * ptrOpt)
{
	//LOG("Scroll up pushed %d %d %d", scrollIndex,lastLine, numRowsWeCanDisplay);
	if (scrollIndex<(fileNameIndex[activeBuffer].size()-5))
	{
		scrollIndex++;
		_changed=true;
		return true;
	}
	ptrOpt->touchDelay=300;
	return false;
}

bool FileListPopup::ScrollDown(callbackOptions_t *ptrOpt)
{
	//LOG("Scroll down pushed");
	//LOG("scroll %d",scrollIndex);
	if (scrollIndex>0)
	{
		scrollIndex--;
		_changed=true;
		return true;
	}
	ptrOpt->touchDelay=300;
	//LOG("scroll %d",scrollIndex);
	return false;
}

void FileListPopup::ClearButtons()
{
	WARNING("clearing buttons");
	for (int i=0 ;i<5; i++)
	{
		buttons[i]->SetText("");
		buttons[i]->SetVisible(false);
	}
}
void FileListPopup::ClearFileList()
{
	LOG("activeBuffer %d",activeBuffer);
		secondaryBuffer= (activeBuffer+1) & 0x01;
		LOG("Second %d",secondaryBuffer);

	fileNameIndex[secondaryBuffer].clear();
	fileNames[secondaryBuffer].clear();
	ptrError->SetVisible(false);


}

void FileListPopup::AddFile(const char *fname)
{
	if (_ignoreFiles)
	{
		return;
	}
	size_t len = strlen(fname) + 1;		// we are going to copy the null terminator as well
	if (len + fileNames[secondaryBuffer].size() < fileNames[secondaryBuffer].capacity() && fileNameIndex[secondaryBuffer].size() < fileNameIndex[secondaryBuffer].capacity())
	{
		fileNameIndex[secondaryBuffer].add((char *) (fileNames[secondaryBuffer].c_ptr() + fileNames[secondaryBuffer].size()));
		fileNames[secondaryBuffer].add(fname, len);
		LOG("Added %s",fname);
	}

	//Refresh(false,nullptr);
}

void FileListPopup::SetErrorCode(bool error)
{
	if (_ignoreFiles)
	{
		return;
	}
	if (error)
	{
		ClearFileList();
		ClearButtons();
		ptrError->SetVisible(true);
		ptrError->SetChanged(true);
		_changed = true;
		_error = true;
	}
	else
	{
		LOG("No error");
		if (ptrError->IsVisible() || _error)
		{
			LOG("clearing error");
			ptrError->SetVisible(false);
			ptrError->SetChanged(true);
			_changed = true;
			_error = false;
		}
	}
}

void FileListPopup::DrawScrollbars(bool full, PaintOptions_t *ptrOpt)
{
	PixelNumber xOffset=0, yOffset=0;
	Colour fg,bg;

	fg=black;
	bg=_bcolour;

	ptrUp->SetVisible(true);
	ptrDown->SetVisible(true);
	//LOG("refresh called");
	if (ptrOpt!= nullptr)
	{
		xOffset=ptrOpt->xOffset;
		yOffset=ptrOpt->yOffset;

		if (ptrOpt->dim)
		{
			fg=lcd.applyColorScale(50,fg);
			bg=lcd.applyColorScale(50,bg);
		}
	}

	xOffset+=xPos;
	yOffset+=yPos;


	//draw the scroll bars
	lcd.setColor(grey);
	//lcd.setBackColor(red);
	lcd.fillRect((xOffset+width) - 36, yOffset + 70, (xOffset+width)-6,
			yOffset + height -50);

	int16_t scrollPixelsPerLine =height - 120;


	scrollPixelsPerLine = (height - 120)
									/ (fileNameIndex[activeBuffer].size() - 5 + 1);

	//LOG("pels %d",scrollPixelsPerLine);
	int16_t y1 = (yOffset + 70)+scrollPixelsPerLine * scrollIndex;

	//LOG("y1 is %d",y1);
	//draw the scroll bar "slider"
	lcd.setColor(darkGrey);
	lcd.fillRect((xOffset+width) - 36, y1, (xOffset+width)-6, y1 + scrollPixelsPerLine);

	ptrUp->Refresh(full, ptrOpt);
	ptrDown->Refresh(full, ptrOpt);
}

bool FileListPopup::Refresh(bool full, PaintOptions_t *ptrOpt)
{
	uint32_t i;
	Widget *ptr;
	static uint32_t lastRefresh = 0;
	bool ret = false;
	static bool first=true;

	if ((SystemTick::GetTickCount() - lastDirRead) > 5000)
	{
		LOG("Reading dir %s",path.c_str());
		if (strlen(path.c_str())>0)
		{
			lastDirRead=SystemTick::GetTickCount();
			Machine::getInstance().RequestDirList(path.c_str());
		}
	}
	if (_changed) {full=true;}

// 3-30-2018 always show SD card icon to force directory refersh
//	if (_numSDCards == 1)
//	{
//		ptrIconButton->SetVisible(false);
//	}

	paintOptions.dim=true;
	paintOptions.xOffset=0;
	paintOptions.yOffset=0;


	if (ptrPopup != nullptr)
	{
		//we have a fileInfoPopup
		if (FileInfoPopup::getInstance().IsChanged())
		{
			_changed=true;
			LOG("Calling the file info refresh");
			return FileInfoPopup::getInstance().Refresh(true,ptrOpt);
		}
		return false;
	}

	//LOG("Refresh called");
	if (ptrParent != nullptr)
	{
		if (first || full || ptrParent->IsDirty())
		{
			if (ptrParent->Refresh(full, &paintOptions))
			{
				LOG("refresh parent");
			}
			ret = true;
			full = true;
		}
	}



	if (full || ret)
	{
		LOG("Frame buffer is %d", lcd.getWriteFrameBuffer());
		lcd.ShowFrameBuffer(lcd.getWriteFrameBuffer());
		//draw our background window
		lcd.setColor(_bcolour);
		lcd.fillRect(xPos, yPos, xPos+width-1, yPos+height- 1);
		lcd.setColor(borderColour);
		lcd.drawRect(xPos+1, yPos+1, xPos+width-2, yPos+height- 2);
		full = true;
	}

	if (full || _changed)
	{
		uint16_t x=fileNameIndex[activeBuffer].size();
		LOG("filename size %u",x);
		if (x>5)
		{
			x=5;
			DrawScrollbars(true,ptrOpt);
		}else
		{
			ptrUp->SetVisible(false);
			ptrDown->SetVisible(false);
		}
		for (i=0; i<x; i++)
		{
			LOG("scroll %d %d",scrollIndex,i+scrollIndex);
			buttons[i]->SetText(fileNameIndex[activeBuffer][i+scrollIndex]);
			buttons[i]->SetVisible(true);
			buttons[i]->SetChanged(true);
			buttons[i]->setUserData(activeBuffer<<16 | i+scrollIndex);
		}


	}



	paintOptions.dim=false;
	paintOptions.xOffset=xPos;
	paintOptions.yOffset=yPos;

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
	_changed=false;
	first=false;
	return ret;
}



bool FileListPopup::ProcessMousePress(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt)
{
	uint32_t x1,y1,i=0;
	Widget *ptr;
	Widget *btnPressed;
	bool ret=false;

	x1=x-xPos;
	y1=y-yPos;

		if (ptrOpt==nullptr)
	{
		ptrOpt=&options;
	}

	LOG("ptrPopup %d",(uint32_t)ptrPopup);
	if (ptrPopup != nullptr)
	{

		//we have a fileInfoPopup
		LOG("Checking popup");
		ret= FileInfoPopup::getInstance().ProcessMousePress(x,y,ptrOpt);
		if (ret == false)
		{
			return ret;
		}

		LOG("Button pressed");
		if (ptrOpt->type == Type_PopupClosed)
		{
			LOG("Closed pressed");
			_changed=true;
			ptrPopup=nullptr;
			ptrOpt->type=Type_None;
		}else if (ptrOpt->type == Type_Command)
		{
			//only button is the pressed button...
			LOG("Print pressed: %s",selectedFile);
			if (strcmp(ptrOpt->cmd,"print") == 0)
			{
				ptrOpt->ptrVoid=selectedFile;
			}
			_changed=true;
			ptrPopup=nullptr;
		}
		return ret;
	}


	if (ptrUp->ProcessMousePress(x,y,&options))
	{
		ptrUp->SetPressed(false);
		ret=true;
	}
	if (ptrDown->ProcessMousePress(x,y,&options))
	{
		ptrDown->SetPressed(false);
		ret=true;
	}
	ptr=widgets[i];
	while (ptr != NULL)
	{


		btnPressed=ptr->ProcessMousePress(x1,y1,ptrOpt);
		if (btnPressed)
		{
			paintOptions.dim=false;
			paintOptions.xOffset=xPos;
			paintOptions.yOffset=yPos;
			btnPressed->Refresh(true,&paintOptions);
			ret=true;
		}
		i++;
		ptr=widgets[i];
	}
	return ret;
}

bool FileListPopup::ProcessMouseRelease(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt)
{
	uint32_t x1,y1,i=0;
	Widget *ptr;
	Widget *btnPressed;
	bool pressed=false;

	x1=x-xPos;
	y1=y-yPos;

	if (ptrPopup != nullptr)
	{
		//we have a fileInfoPopup
		return FileInfoPopup::getInstance().ProcessMouseRelease(x,y,&options);
	}

	//LOG("release %d %d",x,y);
	ptr=widgets[i];
	while (ptr != NULL)
	{
		btnPressed=ptr->ProcessMouseRelease(x1,y1,&options);
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

	if (ptrUp->ProcessMouseRelease(x,y,&options))
	{
		pressed=true;
	}
	if (ptrDown->ProcessMouseRelease(x,y,&options))
	{
		pressed=true;
	}
	return pressed;
}




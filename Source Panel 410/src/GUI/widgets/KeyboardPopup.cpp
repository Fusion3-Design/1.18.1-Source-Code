/*
 * KeyboardPopup.cpp
 *
 *  Created on: Feb 12, 2018
 *      Author: tstern
 */

#include "KeyboardPopup.hpp"
#include "widgets.hpp"


KeyboardPopup::KeyboardPopup( PixelNumber x, PixelNumber y, PixelNumber dx, PixelNumber dy,
		Colour background, Colour border,WidgetWindow *parent):
		PopupWindowWidget(x,y,dx,dy,background,border,parent)
{
	ptrLabel=new Label(15,6,420,27 ,"_",_TextAlignment::Left,true);
	ptrLabel->SetColours(black, lightGrey ,lightGreen);
	widgets.add(ptrLabel);

	widgets.add(
			new IconButtonWidget(5 + 440, 6, 30, IconCancel,
					[this](callbackOptions_t *ptrOpt)
	{   if (this->_closeCallback != nullptr)
						{ptrOpt->touchDelay=-1;  this->_closeCallback();}return false;}, 27));

	Defaults::defaultFcolour=black;
	Defaults::defaultBcolour=white;
	widgets.add((Widget *)new KeyboardWidget(5,40,475,200,nullptr));

	cmdIndex=0;
	cmdBufferIndex=-1;
	_enterCallback = nullptr;
	_closeCallback = nullptr;
	forceRedrawWithParent=true;
}

void KeyboardPopup::SetClosedCallback(std::function<void(void)> closeCallback)
{
	_closeCallback=closeCallback;
}

void KeyboardPopup::SetEnterCallback(
		std::function<void(const char *str)> enterCallback)
{
	_enterCallback = enterCallback;
}

bool KeyboardPopup::ProcessMousePress(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt)
{
	uint32_t x1,y1,i=0;
	Widget *ptr;
	Widget *btnPressed;
	bool pressed=false;

	x1=x-xPos;
	y1=y-yPos;

	//LOG("press %d %d",x,y);
	ptr=widgets[i];
	while (ptr != NULL)
	{
		btnPressed=ptr->ProcessMousePress(x1,y1,&options);
		if (btnPressed)
		{
			//LOG("found a push");
			//LOG("push options %d",options.iValue);
			paintOptions.dim=false;
			paintOptions.xOffset=xPos;
			paintOptions.yOffset=yPos;
			btnPressed->Refresh(true,&paintOptions);
			pressed=true;

			if (options.type==Type_Char)
			{
				//we have a button press.
				switch (options.c)
				{
					case 8: //backspace key pressed
					{
						if (cmdIndex>0)
						{
							cmdIndex--;
							command[cmdIndex]='_';
							command[cmdIndex+1]='\0';
							//update the label
							ptrLabel->SetText(command);
							ptrLabel->Refresh(true,&paintOptions);
						}
						break;
					}
					case 127: //upArrow

						LOG("Up arrow %d %d",cmdBuffer.size(),cmdBufferIndex );
						if (cmdBuffer.size()>=cmdBufferIndex)
						{
							if (cmdBufferIndex>0)
							{
								cmdBufferIndex--;
							}
							strcpy(command,cmdBuffer[cmdBufferIndex].c_str());
							uint32_t x;
							x=strlen(command);
							command[x]='_';
							command[x+1]='\0';
							cmdIndex=x;
							ptrLabel->SetText(command);
							ptrLabel->Refresh(true,&paintOptions);

						}
						break;
					case 128: //downArrow
						if (cmdBuffer.size()>(cmdBufferIndex+1))
						{
							if (cmdBufferIndex<(cmdBuffer.size()-1))
							{
								cmdBufferIndex++;
							}
							strcpy(command,cmdBuffer[cmdBufferIndex].c_str());
							uint32_t x;
							x=strlen(command);
							command[x]='_';
							command[x+1]='\0';
							cmdIndex=x;
							ptrLabel->SetText(command);
							ptrLabel->Refresh(true,&paintOptions);
						}
						break;

					case 13: //enter keypressed
					{

						if (_enterCallback != nullptr)
						{
							String<WIDGET_TEXT_LEN> x;
							command[cmdIndex]='\0';
							x.copy(command);
							cmdBuffer.push(x);
							cmdBufferIndex=cmdBuffer.size();

							command[cmdIndex] = '\n'; //remove the cursor add newline

							_enterCallback(command);
							memset(command, 0, sizeof(command));
							cmdIndex = 0;
							command[cmdIndex] = '_';
							command[cmdIndex + 1] = '\0';
							ptrLabel->SetText(command);
							//ptrLabel->Refresh(true,&paintOptions);
						}
						break;
					}
					default:
					{
						if (cmdIndex<(WIDGET_TEXT_LEN-2))
						{
							command[cmdIndex]=options.c;
							cmdIndex++;
							command[cmdIndex]='_';
							command[cmdIndex+1]='\0';
							//update the label
							ptrLabel->SetText(command);
							ptrLabel->Refresh(true,&paintOptions);
						}
					}
				}//switch (options.c)
			}// if (options.type==Type_Char)


			//
			//			if (ptrWidgetChaging != nullptr)
			//			{
			//				//todo handle different types
			//				char str[40];
			//				itoa(options.iValue, str, 10);
			//				ptrWidgetChaging->SetText(str);
			//				ptrWidgetChaging->Refresh(true, nullptr);
			//			}
			return pressed;
		}
		i++;
		ptr=widgets[i];
	}
	return pressed;
}

bool KeyboardPopup::ProcessMouseRelease(PixelNumber x, PixelNumber y,callbackOptions_t *ptrOpt)
{
	uint32_t x1,y1,i=0;
	Widget *ptr;
	Widget *btnPressed;
	bool pressed=false;

	x1=x-xPos;
	y1=y-yPos;

	//LOG("release %d %d",x,y);
	ptr=widgets[i];
	while (ptr != NULL)
	{
		btnPressed=ptr->ProcessMouseRelease(x1,y1,&options);
		if (btnPressed)
		{
			LOG("options %d",options.iValue);
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

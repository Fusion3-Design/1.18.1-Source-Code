/*
 * RequestTimer.cpp
 *
 * Created: 06/11/2015 14:22:55
 *  Author: David
 */ 


#include "asf.h"
#include "RequestTimer.hpp"
#include "Hardware/SysTick.hpp"
#include "Hardware/SerialIo.hpp"
#include "Machine.hpp"


RequestTimer::RequestTimer(uint32_t del, const char * cmd, const char *  ex)
	: delayTime(del), command(cmd), extra(ex)
{
	timerState = stopped;
}

bool RequestTimer::Process()
{
	if (timerState == running)
	{
		uint32_t now = SystemTick::GetTickCount();
		if (now - startTime > delayTime)
		{
			timerState = ready;
		}
	}

	if (timerState == ready && Machine::getInstance().OkToSend())
	{
		Machine::getInstance().Send(command);
		if (extra != nullptr)
		{
			Machine::getInstance().Send(extra);
		}
		Machine::getInstance().Send('\n');
		startTime = SystemTick::GetTickCount();
		timerState = running;
		return true;
	}
	return false;
}

// End

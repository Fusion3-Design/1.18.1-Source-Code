/*
 * RequestTimer.h
 *
 * Created: 06/11/2015 14:22:05
 *  Author: David
 */ 


#ifndef REQUESTTIMER_H_
#define REQUESTTIMER_H_


class RequestTimer
{
	enum { stopped, running, ready } timerState;
	uint32_t startTime;
	uint32_t delayTime;
	const char *  command;
	const char *   extra;
	
public:
	RequestTimer(uint32_t del, const char *  cmd, const char *   ex = nullptr);
	void SetCommand(const char *  cmd) { command = cmd; }
	void SetArgument(const char *   arg) { extra = arg; }
	void SetPending() { timerState = ready; }
	void Stop() { timerState = stopped; }
	bool Process();
};

#endif /* REQUESTTIMER_H_ */

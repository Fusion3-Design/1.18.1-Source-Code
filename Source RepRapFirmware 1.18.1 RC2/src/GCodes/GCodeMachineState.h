/*
 * GCodeMachineState.h
 *
 *  Created on: 15 Nov 2016
 *      Author: David
 */

#ifndef SRC_GCODES_GCODEMACHINESTATE_H_
#define SRC_GCODES_GCODEMACHINESTATE_H_

#include "RepRapFirmware.h"
#include "Storage/FileData.h"

// Enumeration to list all the possible states that the Gcode processing machine may be in
enum class GCodeState : uint8_t
{
	normal,												// not doing anything and ready to process a new GCode
	waitingForMoveToComplete,							// doing a homing move, so we must wait for it to finish before processing another GCode
	homing,
	setBed,

	// These next 4 must be contiguous
	toolChange0,
	toolChange1,
	toolChange2,
	toolChangeComplete,
	// These next 4 must be contiguous
	m109ToolChange0,
	m109ToolChange1,
	m109ToolChange2,
	m109ToolChangeComplete,

	pausing1,
	pausing2,
	resuming1,
	resuming2,
	resuming3,
	flashing1,
	flashing2,
	stopping,
	sleeping,
	// These next 5 must be contiguous
	gridProbing1,
	gridProbing2,
	gridProbing2a,
	gridProbing3,
	gridProbing4
};

// Class to hold the state of gcode execution for some input source
class GCodeMachineState
{
public:
	GCodeMachineState();

	GCodeMachineState *previous;
	float feedrate;
	FileData fileState;
	uint32_t lockedResources;
	GCodeState state;
	unsigned int
		drivesRelative : 1,
		axesRelative : 1,
		doingFileMacro : 1,
		waitWhileCooling : 1,
		runningM502 : 1;

	static GCodeMachineState *Allocate()
	post(!result.IsLive(); result.state == GCodeState::normal);

	// Copy values that may have been altered by config.g into this state record
	void CopyStateFrom(const GCodeMachineState& other)
	{
		drivesRelative = other.drivesRelative;
		axesRelative = other.axesRelative;
		feedrate = other.feedrate;
	}

	static void Release(GCodeMachineState *ms);
	static unsigned int GetNumAllocated() { return numAllocated; }
	static unsigned int GetNumInUse();

private:
	static GCodeMachineState *freeList;
	static unsigned int numAllocated;
};

#endif /* SRC_GCODES_GCODEMACHINESTATE_H_ */

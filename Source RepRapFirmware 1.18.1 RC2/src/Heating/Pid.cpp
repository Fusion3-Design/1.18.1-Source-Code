/*
 * Pid.cpp
 *
 *  Created on: 21 Jul 2016
 *      Author: David
 */

#include "Pid.h"
#include "GCodes/GCodes.h"
#include "Heat.h"
#include "Platform.h"
#ifdef HEATER_FAULT_G_MACRO // packetmax
#include "PrintMonitor.h"
#endif
#include "RepRap.h"

// Private constants
const uint32_t InitialTuningReadingInterval = 250;	// the initial reading interval in milliseconds
const uint32_t TempSettleTimeout = 20000;	// how long we allow the initial temperature to settle

// Static class variables

float *PID::tuningTempReadings = nullptr;	// the readings from the heater being tuned
float PID::tuningStartTemp;					// the temperature when we turned on the heater
float PID::tuningPwm;						// the PWM to use
float PID::tuningTargetTemp;					// the maximum temperature we are allowed to reach
uint32_t PID::tuningBeginTime;				// when we started the tuning process
uint32_t PID::tuningPhaseStartTime;			// when we started the current tuning phase
uint32_t PID::tuningReadingInterval;		// how often we are sampling
size_t PID::tuningReadingsTaken;			// how many samples we have taken

#ifdef NEW_TUNING
float PID::tuningHeaterOffTemp;				// the temperature when we turned the heater off
float PID::tuningPeakTemperature;			// the peak temperature reached, averaged over 3 readings (so slightly less than the true peak)
uint32_t PID::tuningHeatingTime;			// how long we had the heating on for
uint32_t PID::tuningPeakDelay;				// how many milliseconds the temperature continues to rise after turning the heater off
#else
float PID::tuningTimeOfFastestRate;			// how long after turn-on the fastest temperature rise occurred
float PID::tuningFastestRate;				// the fastest temperature rise
#endif

// Member functions and constructors

PID::PID(Platform* p, int8_t h) : platform(p), heater(h), mode(HeaterMode::off)
{
}

inline void PID::SetHeater(float power) const
{
	platform->SetHeater(heater, power);
}

void PID::Init(float pGain, float pTc, float pTd, float tempLimit, bool usePid)
{
	temperatureLimit = tempLimit;
	maxTempExcursion = DefaultMaxTempExcursion;
	maxHeatingFaultTime = DefaultMaxHeatingFaultTime;
	model.SetParameters(pGain, pTc, pTd, 1.0, usePid);
	Reset();

	if (model.IsEnabled())
	{
		SetHeater(0.0);
	}

	// Time the sensor was last sampled.  During startup, we use the current
	// time as the initial value so as to not trigger an immediate warning from the Tick ISR.
	lastSampleTime = millis();
}

void PID::Reset()
{
	mode = HeaterMode::off;
	previousTemperaturesGood = 0;
	previousTemperatureIndex = 0;
	activeTemperature = 0.0;
	standbyTemperature = 0.0;
	iAccumulator = 0.0;
	badTemperatureCount = 0;
	active = false; 						// default to standby temperature
	tuned = false;
	averagePWM = lastPwm = 0.0;
	heatingFaultCount = 0;
	temperature = BAD_ERROR_TEMPERATURE;
}

// Set the process model
bool PID::SetModel(float gain, float tc, float td, float maxPwm, bool usePid)
{
	const bool rslt = model.SetParameters(gain, tc, td, maxPwm, usePid);
	if (rslt)
	{
#if !defined(DUET_NG) && !defined(__RADDS__)
		if (heater == HEATERS - 1)
		{
			// The last heater on the Duet 0.8.5 + DueX4 shares its pin with Fan1
			reprap.GetPlatform()->EnableSharedFan(!model.IsEnabled());
		}
#endif
		if (model.IsEnabled())
		{
			const float safeGain = (heater == reprap.GetHeat()->GetBedHeater() || heater == reprap.GetHeat()->GetChamberHeater())
									? 170.0 : 480.0;
			if (gain > safeGain)
			{
#ifdef SPURIOUS_FIRE_WARNING_CHRIS_PADGETT		// packetmax: added compile guard at Chris's request
				platform->MessageF(GENERIC_MESSAGE,
						"Warning: Heater %u appears to be over-powered and a fire risk! If left on at full power, its temperature is predicted to reach %uC.\n",
						heater, (unsigned int)gain + 20);
#endif
			}
		}
		else
		{
			Reset();
		}
	}
	return rslt;
}

// Read and store the temperature of this heater and returns the error code.
TemperatureError PID::ReadTemperature()
{
	TemperatureError err = TemperatureError::success;				// assume no error
	temperature = platform->GetTemperature(heater, err);			// in the event of an error, err is set and BAD_ERROR_TEMPERATURE is returned
	if (err == TemperatureError::success)
	{
		if (temperature < BAD_LOW_TEMPERATURE)
		{
			err = TemperatureError::openCircuit;
		}
		else if (temperature > temperatureLimit)
		{
			err = TemperatureError::tooHigh;
		}
	}
	return err;
}

// This must be called whenever the heater is turned on, and any time the heater is active and the target temperature is changed
void PID::SwitchOn()
{
	if (mode == HeaterMode::fault)
	{
		if (reprap.Debug(Module::moduleHeat))
		{
			platform->MessageF(GENERIC_MESSAGE, "Heater %d not switched on due to temperature fault\n", heater);
		}
	}
	else if (model.IsEnabled())
	{
//debugPrintf("Heater %d on temp %.1f\n", heater, temperature);
		const float target = (active) ? activeTemperature : standbyTemperature;
		const HeaterMode oldMode = mode;
		mode = (temperature + TEMPERATURE_CLOSE_ENOUGH < target) ? HeaterMode::heating
				: (temperature > target + TEMPERATURE_CLOSE_ENOUGH) ? HeaterMode::cooling
					: HeaterMode::stable;
		if (mode != oldMode)
		{
			heatingFaultCount = 0;
			if (mode == HeaterMode::heating)
			{
				timeSetHeating = millis();
			}
			if (reprap.Debug(Module::moduleHeat) && oldMode == HeaterMode::off)
			{
				platform->MessageF(GENERIC_MESSAGE, "Heater %d switched on\n", heater);
			}
		}
	}
}

// Switch off the specified heater. If in tuning mode, delete the array used to store tuning temperature readings.
void PID::SwitchOff()
{
	lastPwm = 0.0;
	if (model.IsEnabled())
	{
		SetHeater(0.0);
		if (IsTuning())
		{
			delete tuningTempReadings;
			tuningTempReadings = nullptr;
		}
		if (mode > HeaterMode::off)
		{
			mode = HeaterMode::off;
			if (reprap.Debug(Module::moduleHeat))
			{
				platform->MessageF(GENERIC_MESSAGE, "Heater %d switched off\n", heater);
			}
		}
	}
}

// This is the main heater control loop function
void PID::Spin()
{
	if (model.IsEnabled())
	{
		// Read the temperature
		const TemperatureError err = ReadTemperature();

		// Handle any temperature reading error and calculate the temperature rate of change, if possible
		if (err != TemperatureError::success)
		{
			previousTemperaturesGood <<= 1;				// this reading isn't a good one
			if (mode > HeaterMode::off)					// don't worry about errors when reading heaters that are switched off or flagged as having faults
			{
				// Error may be a temporary error and may correct itself after a few additional reads
				badTemperatureCount++;
				if (badTemperatureCount > MAX_BAD_TEMPERATURE_COUNT)
				{
					lastPwm = 0.0;
					SetHeater(0.0);						// do this here just to be sure, in case the call to platform->Message causes a delay
					if (IsTuning())
					{
						delete tuningTempReadings;
						tuningTempReadings = nullptr;
					}
					mode = HeaterMode::fault;
#ifdef HEATER_FAULT_G_MACRO // packetmax
					if (reprap.GetPrintMonitor()->IsPrinting()) {
						reprap.GetGCodes()->HeaterFaultPause();
					}
#endif
					platform->MessageF(GENERIC_MESSAGE, "Error: Temperature reading fault on heater %d: %s\n", heater, TemperatureErrorString(err));
					reprap.FlagTemperatureFault(heater);
#ifdef HEATER_FAULT_G_MACRO // packetmax
					reprap.GetGCodes()->HeaterFault(); // GHW: DoFileMacro call...see GCodes.cpp
#endif
				}
			}
			// We leave lastPWM alone if we have a temporary temperature reading error
		}
		else
		{
			// We have an apparently-good temperature reading. Calculate the derivative, if possible.
			float derivative = 0.0;
			bool gotDerivative = false;
			badTemperatureCount = 0;
			if ((previousTemperaturesGood & (1 << (NumPreviousTemperatures - 1))) != 0)
			{
				const float tentativeDerivative = SecondsToMillis * (temperature - previousTemperatures[previousTemperatureIndex])
								/ (float)(platform->HeatSampleInterval() * NumPreviousTemperatures);
				// Some sensors give occasional temperature spikes. We don't expect the temperature to increase by more than 10C/second.
				if (fabsf(tentativeDerivative) <= 10.0)
				{
					derivative = tentativeDerivative;
					gotDerivative = true;
				}
			}
			previousTemperatures[previousTemperatureIndex] = temperature;
			previousTemperaturesGood = (previousTemperaturesGood << 1) | 1;

			// Get the target temperature and the error
			const float targetTemperature = (active) ? activeTemperature : standbyTemperature;
			const float error = targetTemperature - temperature;

			// Do the heating checks
			switch(mode)
			{
			case HeaterMode::heating:
				{
					if (error <= TEMPERATURE_CLOSE_ENOUGH)
					{
						mode = HeaterMode::stable;
						heatingFaultCount = 0;
					}
					else if (gotDerivative)
					{
						const float expectedRate = GetExpectedHeatingRate();
						if (derivative + AllowedTemperatureDerivativeNoise < expectedRate
							&& (float)(millis() - timeSetHeating) > model.GetDeadTime() * SecondsToMillis * 2)
						{
							++heatingFaultCount;
							if (heatingFaultCount * platform->HeatSampleInterval() > maxHeatingFaultTime * SecondsToMillis)
							{
								SetHeater(0.0);					// do this here just to be sure
								mode = HeaterMode::fault;
#ifdef HEATER_FAULT_G_MACRO // packetmax
								if (reprap.GetPrintMonitor()->IsPrinting()) {
									reprap.GetGCodes()->HeaterFaultPause();
								}
#else
								reprap.GetGCodes()->CancelPrint();
#endif
								platform->MessageF(GENERIC_MESSAGE,
											"Error: heating fault on heater %d, temperature rising much more slowly than the expected %.1f" DEGREE_SYMBOL "C/sec\n",
											heater, expectedRate);
								reprap.FlagTemperatureFault(heater);
#ifdef HEATER_FAULT_G_MACRO // packetmax
								reprap.GetGCodes()->HeaterFault(); // GHW: DoFileMacro call...see GCodes.cpp
#endif
							}
						}
						else if (heatingFaultCount != 0)
						{
							--heatingFaultCount;
						}
					}
					else
					{
						// Leave the heating fault count alone
					}
				}
				break;

			case HeaterMode::stable:
				if (fabsf(error) > maxTempExcursion && temperature > MaxAmbientTemperature)
				{
					++heatingFaultCount;
					if (heatingFaultCount * platform->HeatSampleInterval() > maxHeatingFaultTime * SecondsToMillis)
					{
						SetHeater(0.0);					// do this here just to be sure
						mode = HeaterMode::fault;
#ifdef HEATER_FAULT_G_MACRO // packetmax
						if (reprap.GetPrintMonitor()->IsPrinting()) {
							reprap.GetGCodes()->HeaterFaultPause();
						}
#else
						reprap.GetGCodes()->CancelPrint();
#endif
						platform->MessageF(GENERIC_MESSAGE, "Error: heating fault on heater %d, temperature excursion exceeded %.1fC\n", heater, maxTempExcursion);
#ifdef HEATER_FAULT_G_MACRO // packetmax
						reprap.GetGCodes()->HeaterFault(); // GHW: DoFileMacro call...see GCodes.cpp
#endif
					}
				}
				else if (heatingFaultCount != 0)
				{
					--heatingFaultCount;
				}
				break;

			case HeaterMode::cooling:
				if (-error <= TEMPERATURE_CLOSE_ENOUGH && targetTemperature > MaxAmbientTemperature)
				{
					// We have cooled to close to the target temperature, so we should now maintain that temperature
					mode = HeaterMode::stable;
					heatingFaultCount = 0;
				}
				else
				{
					// We could check for temperature excessive or not falling here, but without an alarm or a power-off mechanism, there is not much we can do
					// TODO emergency stop?
				}
				break;

			default:		// this covers off, fault, and the auto tuning states
				break;
			}

			// Calculate the PWM
			if (mode <= HeaterMode::off)
			{
				lastPwm = 0.0;
			}
			else if (mode < HeaterMode::tuning0)
			{
				// Performing normal temperature control
				if (model.UsePid())
				{
					// Using PID mode. Determine the PID parameters to use.
					const bool inLoadMode = (mode == HeaterMode::stable);	// use standard PID when maintaining temperature
					const PidParameters& params = model.GetPidParameters(inLoadMode);

					// If the P and D terms together demand that the heater is full on or full off, disregard the I term
					const float errorMinusDterm = error - (params.tD * derivative);
					const float pPlusD = params.kP * errorMinusDterm;
					const float expectedPwm = constrain<float>((temperature - NormalAmbientTemperature)/model.GetGain(), 0.0, model.GetMaxPwm());
					if (pPlusD + expectedPwm > model.GetMaxPwm())
					{
						lastPwm = model.GetMaxPwm();
						// If we are heating up, preset the I term to the expected PWM at this temperature, ready for the switch over to PID
						if (mode == HeaterMode::heating && error > 0.0 && derivative > 0.0)
						{
							iAccumulator = expectedPwm;
						}
					}
					else if (pPlusD + expectedPwm < 0.0)
					{
						lastPwm = 0.0;
					}
					else
					{
						// In the following we use a modified PID when the temperature is a long way off target.
						// During initial heating or cooling, the D term represents expected overshoot, which we don't want to add to the I accumulator.
						// When we are in load mode, the I term is much larger and the D term doesn't represent overshoot, so use normal PID.
						const float errorToUse = (inLoadMode || model.ArePidParametersOverridden()) ? error : errorMinusDterm;
						iAccumulator = constrain<float>
										(iAccumulator + (errorToUse * params.kP * params.recipTi * platform->HeatSampleInterval() * MillisToSeconds),
											0.0, model.GetMaxPwm());
						lastPwm = constrain<float>(pPlusD + iAccumulator, 0.0, model.GetMaxPwm());
					}
				}
				else
				{
					// Using bang-bang mode
					lastPwm = (error > 0.0) ? model.GetMaxPwm() : 0.0;
				}
			}
			else
			{
				DoTuningStep();
			}
		}

		// Set the heater power and update the average PWM
		SetHeater(lastPwm);
		averagePWM = averagePWM * (1.0 - platform->HeatSampleInterval()/(HEAT_PWM_AVERAGE_TIME * SecondsToMillis)) + lastPwm;
		previousTemperatureIndex = (previousTemperatureIndex + 1) % NumPreviousTemperatures;

		// For temperature sensors which do not require frequent sampling and averaging,
		// their temperature is read here and error/safety handling performed.  However,
		// unlike the Tick ISR, this code is not executed at interrupt level and consequently
		// runs the risk of having undesirable delays between calls.  To guard against this,
		// we record for each PID object when it was last sampled and have the Tick ISR
		// take action if there is a significant delay since the time of last sampling.
		lastSampleTime = millis();

//  	debugPrintf("Heater %d: e=%f, P=%f, I=%f, d=%f, r=%f\n", heater, error, pp.kP*error, temp_iState, temp_dState, result);
	}
}

void PID::SetActiveTemperature(float t)
{
	if (t > temperatureLimit)
	{
		platform->MessageF(GENERIC_MESSAGE, "Error: Temperature %.1f too high for heater %d!\n", t, heater);
	}
	else
	{
		activeTemperature = t;
		if (mode > HeaterMode::off && active)
		{
			SwitchOn();
		}
	}
}

void PID::SetStandbyTemperature(float t)
{
	if (t > temperatureLimit)
	{
		platform->MessageF(GENERIC_MESSAGE, "Error: Temperature %.1f too high for heater %d!\n", t, heater);
	}
	else
	{
		standbyTemperature = t;
		if (mode > HeaterMode::off && !active)
		{
			SwitchOn();
		}
	}
}

void PID::Activate()
{
	if (mode != HeaterMode::fault)
	{
		active = true;
		SwitchOn();
	}
}

void PID::Standby()
{
	if (mode != HeaterMode::fault)
	{
		active = false;
		SwitchOn();
	}
}

void PID::ResetFault()
{
	mode = HeaterMode::off;
	SwitchOff();
	badTemperatureCount = 0;
}

float PID::GetAveragePWM() const
{
	return averagePWM * platform->HeatSampleInterval()/(HEAT_PWM_AVERAGE_TIME * SecondsToMillis);
}

// Get a conservative estimate of the expected heating rate at the current temperature and average PWM. The result may be negative.
float PID::GetExpectedHeatingRate() const
{
	// In the following we allow for the gain being only 75% of what we think it should be, to avoid false alarms
	const float maxTemperatureRise = 0.75 * model.GetGain() * GetAveragePWM();		// this is the highest temperature above ambient we expect the heater can reach at this PWM
	const float initialHeatingRate = maxTemperatureRise/model.GetTimeConstant();	// this is the expected heating rate at ambient temperature
	return (maxTemperatureRise >= 20.0)
			? (maxTemperatureRise + NormalAmbientTemperature - temperature) * initialHeatingRate/maxTemperatureRise
			: 0.0;
}

// Auto tune this PID
void PID::StartAutoTune(float targetTemp, float maxPwm, StringRef& reply)
{
	// Starting an auto tune
	if (!model.IsEnabled())
	{
		reply.printf("Error: heater %d cannot be auto tuned while it is disabled", heater);
	}
	else if (lastPwm > 0.0 || GetAveragePWM() > 0.02)
	{
		reply.printf("Error: heater %d must be off and cold before auto tuning it", heater);
	}
	else
	{
		const TemperatureError err = ReadTemperature();
		if (err != TemperatureError::success)
		{
			reply.printf("Error: heater %d reported error '%s' at start of auto tuning", heater, TemperatureErrorString(err));
		}
		else
		{
			mode = HeaterMode::tuning0;
			tuningReadingsTaken = 0;
			tuned = false;					// assume failure

			// We don't normally allow dynamic memory allocation when running. However, auto tuning is rarely done and it
			// would be wasteful to allocate a permanent array just in case we are going to run it, so we make an exception here.
			tuningTempReadings = new float[MaxTuningTempReadings];
			tuningTempReadings[0] = temperature;
			tuningReadingInterval = platform->HeatSampleInterval();
			tuningPwm = min<float>(maxPwm, model.GetMaxPwm());
			tuningTargetTemp = targetTemp;
			reply.printf("Auto tuning heater %d using target temperature %.1fC and PWM %.2f - do not leave printer unattended", heater, targetTemp, maxPwm);
		}
	}
}

void PID::GetAutoTuneStatus(StringRef& reply)	// Get the auto tune status or last result
{
	if (mode >= HeaterMode::tuning0)
	{
		reply.printf("Heater %d is being tuned, phase %u of %u",
						heater,
						(unsigned int)mode - (unsigned int)HeaterMode::tuning0 + 1,
						(unsigned int)HeaterMode::lastTuningMode - (unsigned int)HeaterMode::tuning0 + 1);
	}
	else if (tuned)
	{
		reply.printf("Heater %d tuning succeeded, use M307 H%d to see result", heater, heater);
	}
	else
	{
		reply.printf("Heater %d tuning failed");
	}
}

/* Notes on the auto tune algorithm
 *
 * Most 3D printer firmwares use the �str�m-H�gglund relay tuning method (sometimes called Ziegler-Nichols + relay).
 * This gives results  of variable quality, but they seem to be generally satisfactory.
 *
 * We use Cohen-Coon tuning instead. This models the heating process as a first-order process (i.e. one that with constant heating
 * power approaches the equilibrium temperature exponentially) with dead time. This process is defined by three constants:
 *
 *  G is the gain of the system, i.e. the increase in ultimate temperature increase per unit of additional PWM
 *  td is the dead time, i.e. the time between increasing the heater PWM and the temperature following an exponential curve
 *  tc is the time constant of the exponential curve
 *
 * If the temperature is stable at T0 to begin with, the temperature at time t after increasing heater PWM by p is:
 *  T = T0 when t <= td
 *  T = T0 + G * p * (1 - exp((t - td)/tc)) when t >= td
 * In practice the transition from no change to the exponential curve is not instant, however this model is a reasonable approximation.
 *
 * Having a process model allows us to preset the I accumulator to a suitable value when switching between heater full on/off and using PID.
 * It will also make it easier to include feedforward terms in future.
 *
 * The auto tune procedure follows the following steps:
 * 1. Turn on any thermostatically-controlled fans that are triggered by the heater being tuned. This is done by code in the Platform module
 *    when it sees that a heater is being auto tuned.
 * 2. Accumulate temperature readings and wait for the starting temperature to stabilise. Abandon auto tuning if the starting temperature
 *    is not stable.
 * 3. Apply a known power to the heater and take temperature readings.
 * 4. Wait until the temperature vs time curve has flattened off, such that the temperature rise over the last 1/3 of the readings is less than the
 *    total temperature rise - which means we have been heating for about 3 time constants. Abandon auto tuning if we don't see a temperature rise
 *    after 30 seconds, or we exceed the target temperature plus 10C.
 * 5. Calculate the G, td and tc values that best fit the model to the temperature readings.
 * 6. Calculate the P, I and D parameters from G, td and tc using the modified Cohen-Coon tuning rules, or the Ho et al tuning rules.
 *    Cohen-Coon (modified to use half the original Kc value):
 *     Kc = (0.67/G) * (tc/td + 0.185)
 *     Ti = 2.5 * td * (tc + 0.185 * td)/(tc + 0.611 * td)
 *     Td = 0.37 * td * tc/(tc + 0.185 * td)
 *    Ho et al, best response to load changes:
 *     Kc = (1.435/G) * (td/tc)^-0.921
 *     Ti = 1.14 * (td/tc)^0.749
 *     Td = 0.482 * tc * (td/tc)^1.137
 *    Ho et al, best response to setpoint changes:
 *     Kc = (1.086/G) * (td/tc)^-0.869
 *     Ti = tc/(0.74 - 0.13 * td/tc)
 *     Td = 0.348 * tc * (td/tc)^0.914
 */

// This is called on each temperature sample when auto tuning
// It must set lastPWM to the required PWM, unless it is the same as last time.
void PID::DoTuningStep()
{
	// See if another sample is due
	if (tuningReadingsTaken == 0)
	{
		tuningPhaseStartTime = millis();
		if (mode == HeaterMode::tuning0)
		{
			tuningBeginTime = tuningPhaseStartTime;
		}
	}
	else if (millis() - tuningPhaseStartTime < tuningReadingsTaken * tuningReadingInterval)
	{
		return;		// not due yet
	}

	// See if we have room to store the new reading, and if not, double the sample interval
	if (tuningReadingsTaken == MaxTuningTempReadings)
	{
		// Double the sample interval
		tuningReadingsTaken /= 2;
		for (size_t i = 1; i < tuningReadingsTaken; ++i)
		{
			tuningTempReadings[i] = tuningTempReadings[i * 2];
		}
		tuningReadingInterval *= 2;
	}

	tuningTempReadings[tuningReadingsTaken] = temperature;
	++tuningReadingsTaken;

#ifdef NEW_TUNING
	switch(mode)
	{
	case HeaterMode::tuning0:
		// Waiting for initial temperature to settle after any thermostatic fans have turned on
		if (ReadingsStable(6000/platform->HeatSampleInterval(), 2.0))	// expect temperature to be stable within a 2C band for 6 seconds
		{
			// Starting temperature is stable, so move on
			tuningReadingsTaken = 1;
			tuningTempReadings[0] = tuningStartTemp = temperature;
			timeSetHeating = tuningPhaseStartTime = millis();
			lastPwm = tuningPwm;										// turn on heater at specified power
			tuningReadingInterval = platform->HeatSampleInterval();		// reset sampling interval
			mode = HeaterMode::tuning1;
			platform->Message(GENERIC_MESSAGE, "Auto tune phase 1, heater on\n");
			return;
		}
		if (millis() - tuningPhaseStartTime < 20000)
		{
			// Allow up to 20 seconds for starting temperature to settle
			return;
		}
		platform->Message(GENERIC_MESSAGE, "Auto tune cancelled because starting temperature is not stable\n");
		break;

	case HeaterMode::tuning1:
		// Heating up
		{
			const uint32_t heatingTime = millis() - tuningPhaseStartTime;
			if (heatingTime > (uint32_t)(model.GetDeadTime() * SecondsToMillis) + (30 * 1000) && (temperature - tuningStartTemp) < 3.0)
			{
				platform->Message(GENERIC_MESSAGE, "Auto tune cancelled because temperature is not increasing\n");
				break;
			}

			const uint32_t timeoutMinutes = (heater == reprap.GetHeat()->GetBedHeater() || heater == reprap.GetHeat()->GetChamberHeater()) ? 20 : 5;
			if (heatingTime >= timeoutMinutes * 60 * 1000)
			{
				platform->Message(GENERIC_MESSAGE, "Auto tune cancelled because target temperature was not reached\n");
				break;
			}

			if (temperature >= tuningTargetTemp)							// if reached target
			{
				tuningHeatingTime = heatingTime;

				// Move on to next phase
				tuningReadingsTaken = 1;
				tuningHeaterOffTemp = tuningTempReadings[0] = temperature;
				tuningPhaseStartTime = millis();
				tuningReadingInterval = platform->HeatSampleInterval();		// reset sampling interval
				mode = HeaterMode::tuning2;
				lastPwm = 0.0;
				SetHeater(0.0);
				platform->Message(GENERIC_MESSAGE, "Auto tune phase 2, heater off\n");
			}
		}
		return;

	case HeaterMode::tuning2:
		// Heater turned off, looking for peak temperature
		{
			const int peakIndex = GetPeakTempIndex();
			if (peakIndex < 0)
			{
				if (millis() - tuningPhaseStartTime < 120 * 1000)			// allow 2 minutes for the bed temperature to start falling
				{
					return;			// still waiting for peak temperature
				}
				platform->Message(GENERIC_MESSAGE, "Auto tune cancelled because temperature is not falling\n");
			}
			else if (peakIndex == 0)
			{
				if (reprap.Debug(moduleHeat))
				{
					DisplayBuffer("At no peak found");
				}
				platform->Message(GENERIC_MESSAGE, "Auto tune cancelled because temperature peak was not identified\n");
			}
			else
			{
				tuningPeakTemperature = tuningTempReadings[peakIndex];
				tuningPeakDelay = peakIndex * tuningReadingInterval;

				// Move on to next phase
				tuningReadingsTaken = 1;
				tuningTempReadings[0] = temperature;
				tuningPhaseStartTime = millis();
				tuningReadingInterval = platform->HeatSampleInterval();		// reset sampling interval
				mode = HeaterMode::tuning3;
				platform->MessageF(GENERIC_MESSAGE, "Auto tune phase 3, peak temperature was %.1f\n", tuningPeakTemperature);
				return;
			}
		}
		break;

	case HeaterMode::tuning3:
		{
			// Heater is past the peak temperature and cooling down. Wait until it is part way back to the starting temperature so we can measure the cooling rate.
			// In the case of a bed that shows a reservoir effect, the choice of how far we wait for it to cool down will effect the result.
			// If we wait for it to cool down by 50% then we get a short time constant and a low gain, which causes overshoot. So try a bit more.
			const float coolDownProportion = 0.6;
			if (temperature > (tuningTempReadings[0] * (1.0 - coolDownProportion)) + (tuningStartTemp * coolDownProportion))
			{
				return;
			}
			CalculateModel();
		}
		break;

	default:
		// Should not happen, but if it does then quit
		break;
	}

	// If we get here, we have finished
	SwitchOff();								// sets mode and lastPWM, also deletes tuningTempReadings
#else
	if (temperature > tuningMaxTemp)
	{
		platform->MessageF(GENERIC_MESSAGE,
				"Auto tune of heater %u with P=%.2f S=%.1f cancelled because temperature limit exceeded. Use lower P or higher S in m303 command.\n",
				heater, tuningPwm, tuningTargetTemp);
	}
	else
	{
		switch(mode)
		{
		case HeaterMode::tuning0:
			// Waiting for initial temperature to settle after any thermostatic fans have turned on
			if (ReadingsStable(6000/platform->HeatSampleInterval(), 0.5))	// expect temperature to be stable within a 0.5C band for 6 seconds
			{
				// Starting temperature is stable, so move on
				tuningReadingsTaken = 1;
				tuningTempReadings[0] = tuningStartTemp = temperature;
				timeSetHeating = tuningPhaseStartTime = millis();
				lastPwm = tuningPwm;										// turn on heater at specified power
				tuningReadingInterval = platform->HeatSampleInterval();		// reset sampling interval
				mode = HeaterMode::tuning1;
				return;
			}
			if (millis() - tuningPhaseStartTime < 20000)
			{
				// Allow up to 20 seconds for starting temperature to settle
				return;
			}
			platform->Message(GENERIC_MESSAGE, "Auto tune cancelled because starting temperature is not stable\n");
			break;

		case HeaterMode::tuning1:
			if (millis() - tuningPhaseStartTime > (uint32_t)(model.GetDeadTime() * SecondsToMillis) + 30000 && (temperature - tuningStartTemp) < 3.0)
			{
				platform->Message(GENERIC_MESSAGE, "Auto tune cancelled because temperature is not increasing\n");
				break;
			}

			// If we have a reasonable number of readings, try to identify the point of maximum rate of temperature increase
			if (tuningReadingsTaken >= 50)
			{
				const size_t index = GetMaxRateIndex();
				if (index <= tuningReadingsTaken/2)
				{
					// We have found the point of inflection, so start the next phase
					if (reprap.Debug(moduleHeat))
					{
						DisplayBuffer("At phase 1 end");
					}
					tuningTimeOfFastestRate = index * tuningReadingInterval * MillisToSeconds;
					tuningFastestRate = (tuningTempReadings[index + 2] - tuningTempReadings[index - 2]) / (tuningReadingInterval * 4 * MillisToSeconds);

					// Move the readings down so as to start at the max rate index
					tuningPhaseStartTime += index * tuningReadingInterval;
					tuningReadingsTaken -= index;
					for (size_t i = 0; i < tuningReadingsTaken; ++i)
					{
						tuningTempReadings[i] = tuningTempReadings[i + index];
					}
					mode = HeaterMode::tuning2;
				}
			}
			return;

		case HeaterMode::tuning2:
			// Note: there is no check for temperature increasing here, because it may increase very slowly towards the end of the tuning process.
			{
				// In the following, the figure of 2.75 was chosen because a value of 2 is too low to handle the bed heater
				// with embedded thermistor on my Kossel (reservoir effect)
				if (ReadingsStable(tuningReadingsTaken/2, (temperature - tuningTempReadings[0]) * 0.2))		// if we have been going for ~2.75 time constants
				{
					// We have been heating for long enough, so we can do a fit
					FitCurve();
					break;
				}
				else
				{
					return;
				}
			}
			break;

		default:
			// Should not happen, but if it does then quit
			break;
		}
	}

	// If we get here, we have finished
	SwitchOff();								// sets mode and lastPWM, also deletes tuningTempReadings
#endif
}

// Return true if the last 'numReadings' readings are stable
/*static*/ bool PID::ReadingsStable(size_t numReadings, float maxDiff)
{
	if (tuningTempReadings == nullptr || tuningReadingsTaken < numReadings)
	{
		return false;
	}

	float minReading = tuningTempReadings[tuningReadingsTaken - numReadings];
	float maxReading = minReading;
	for (size_t i = tuningReadingsTaken - numReadings + 1; i < tuningReadingsTaken; ++i)
	{
		const float t = tuningTempReadings[i];
		if (t < minReading) { minReading = t; }
		if (t > maxReading) { maxReading = t; }
	}

	return maxReading - minReading <= maxDiff;
}

#ifdef NEW_TUNING

// Calculate which reading gave us the peak temperature.
// Return -1 if peak not identified yet, 0 if we failed to find a peak, else the index of the peak (which can't be zero because we always average 3 readings)
/*static*/ int PID::GetPeakTempIndex()
{
	// Check we have enough readings to look for the peak
	if (tuningReadingsTaken < 15)
	{
		return -1;							// too few readings
	}

	// Look for the peak
	int peakIndex = IdentifyPeak(1);
	if (peakIndex < 0)
	{
		peakIndex = IdentifyPeak(3);
		if (peakIndex < 0)
		{
			peakIndex = IdentifyPeak(5);
			if (peakIndex < 0)
			{
				return 0;					// more than one peak
			}
		}
	}

	// If we have found one peak and it's not too near the end of the readings, return it
	return ((size_t)peakIndex + 6 < tuningReadingsTaken) ? peakIndex : -1;
}

// See if there is exactly one peak in the readings.
// Return -1 if more than one peak, else the index of the peak. The so-called peak may be right at the end , in which case it isn't really a peak.
/*static*/ int PID::IdentifyPeak(size_t numToAverage)
{
	int firstPeakIndex = -1;
	float peakTempTimesN = -999.0;
	for (size_t i = 0; i + numToAverage <= tuningReadingsTaken; ++i)
	{
		float peak = 0.0;
		for (size_t j = 0; j < numToAverage; ++j)
		{
			peak += tuningTempReadings[i + j];
		}
		if (peak >= peakTempTimesN)
		{
			if ((int)i == firstPeakIndex + 1)
			{
				firstPeakIndex = (int)i;	// readings still going up or staying the same, so advance the first peak index
				peakTempTimesN = peak;
			}
			else
			{
				return -1;					// error, more than one peak
			}
		}
	}
	return firstPeakIndex + (numToAverage - 1)/2;
}

// Calculate the heater model from the accumulated heater parameters
void PID::CalculateModel()
{
	if (reprap.Debug(moduleHeat))
	{
		DisplayBuffer("At completion");
	}
	const float tc = (float)((tuningReadingsTaken - 1) * tuningReadingInterval)/(1000.0 * log((tuningTempReadings[0] - tuningStartTemp)/(tuningTempReadings[tuningReadingsTaken - 1] - tuningStartTemp)));
	const float td = (float)tuningPeakDelay * 0.001;
	const float heatingTime = (tuningHeatingTime - tuningPeakDelay) * 0.001;
	const float gain = (tuningHeaterOffTemp - tuningStartTemp)/(1.0 - exp(-heatingTime/tc));

	tuned = SetModel(gain, tc, td, model.GetMaxPwm(), true);
	if (tuned)
	{
		platform->MessageF(GENERIC_MESSAGE,
				"Auto tune heater %d completed in %u sec\n"
				"Use M307 H%d to see the result, or M500 to save the result in config-override.g\n",
				heater, (millis() - tuningBeginTime)/(uint32_t)SecondsToMillis, heater);
	}
	else
	{
		platform->MessageF(GENERIC_MESSAGE, "Auto tune of heater %u failed due to bad curve fit (G=%.1f, tc=%.1f, td=%.1f)\n", heater, gain, tc, td);
	}
}

#else

// Return the index in the temperature readings of the maximum rate of increase
// In view of the poor resolution of most thermistors at low temperatures, we measure over 4 time intervals instead of 2.
/*static*/ size_t PID::GetMaxRateIndex()
{
	size_t index = 2;
	float maxIncrease = 0.0;
	for (size_t i = 2; i + 2 < tuningReadingsTaken; ++i)
	{
		const float increase = tuningTempReadings[i + 2] - tuningTempReadings[i - 2];
		if (increase > maxIncrease)
		{
			maxIncrease = increase;
			index = i;
		}
	}
	return index;
}

// Calculate G, td and tc from the accumulated readings and print the auto tune success/fail message
// Before calling this we must have already identified the point of inflection and re-based the readings to start at it.
void PID::FitCurve()
{
	if (reprap.Debug(moduleHeat))
	{
		DisplayBuffer("At completion");
	}

	// We need 3 points equally-spaced in time to do the calculation
	const size_t lowIndex = 0;
	size_t highIndex = tuningReadingsTaken - 1;
	if ((highIndex - lowIndex) % 2 != 0)
	{
		--highIndex;
	}

	// Calculate tc, td, G
	const float T1 = tuningTempReadings[lowIndex] - tuningStartTemp;
	const size_t midIndex = (lowIndex + highIndex)/2;
	const float T2 = tuningTempReadings[midIndex] - tuningStartTemp;
	const float T3 = tuningTempReadings[highIndex] - tuningStartTemp;
	//const float t1 = lowIndex * tuningReadingInterval * MillisToSeconds;
	const float dt = (midIndex - lowIndex) * tuningReadingInterval * MillisToSeconds;
	const float t3 = highIndex * tuningReadingInterval * MillisToSeconds;
	const float tc = dt/log((T2 - T1)/(T3 - T2));

	// In theory we should calculate the delay time like this:
	// td = tc * log((T3 - T1)/(T3 * exp(-t1/tc) - T1 * exp(-t3/tc)));
	// However, the calculated td is highly inaccurate in some situations e.g. bed heater with reservoir effect.
	// Better to estimate it from the point of inflection.
	const float td = tuningTimeOfFastestRate - (tuningTempReadings[0] - tuningStartTemp)/tuningFastestRate;

	// I'm not sure which td value we should use to calculate the gain, but it probably doesn't make much difference because usually, td << t3.
	const float gain = T3 / (lastPwm * (1.0 - exp((td - t3)/tc)));

	tuned = SetModel(gain, tc, td, model.GetMaxPwm(), true);
	if (tuned)
	{
		platform->MessageF(GENERIC_MESSAGE,
				"Auto tune heater %d with PWM=%.2f completed in %u sec, maximum temperature reached %.1fC\n"
				"Use M307 H%d to see the result\n",
				heater, tuningPwm, (millis() - tuningBeginTime)/(uint32_t)SecondsToMillis, tuningTempReadings[tuningReadingsTaken - 1], heater);
	}
	else
	{
		platform->MessageF(GENERIC_MESSAGE, "Auto tune of heater %u failed due to bad curve fit (G=%.1f, tc=%.1f, td=%.1f)\n", heater, gain, tc, td);
	}
}

#endif

void PID::DisplayBuffer(const char *intro)
{
	OutputBuffer *buf;
	if (OutputBuffer::Allocate(buf))
	{
		buf->catf("%s: interval %.1f sec, readings", intro, tuningReadingInterval * MillisToSeconds);
		for (size_t i = 0; i < tuningReadingsTaken; ++i)
		{
			buf->catf(" %.1f", tuningTempReadings[i]);
		}
		buf->cat("\n");
		platform->Message(HOST_MESSAGE, buf);
	}
}

// End

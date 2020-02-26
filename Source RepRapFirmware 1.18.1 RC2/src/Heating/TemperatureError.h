/*
 * TemperatureError.h
 *
 *  Created on: 21 Apr 2016
 *      Author: David
 */

#ifndef TEMPERATUREERROR_H_
#define TEMPERATUREERROR_H_

#include <cstdint>

// Result codes returned by temperature sensor drivers
enum class TemperatureError : uint8_t
{
	success,
	shortCircuit,
	shortToVcc,
	shortToGround,
	openCircuit,
	tooHigh,
	timeout,
	ioError,
	hardwareError,
	busBusy,
	badResponse,
	unknownChannel
};

const char* TemperatureErrorString(TemperatureError err);

#endif /* TEMPERATUREERROR_H_ */

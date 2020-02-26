################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Heating/FOPDT.cpp \
../src/Heating/Heat.cpp \
../src/Heating/Pid.cpp \
../src/Heating/TemperatureError.cpp \
../src/Heating/TemperatureSensor.cpp \
../src/Heating/Thermistor.cpp 

OBJS += \
./src/Heating/FOPDT.o \
./src/Heating/Heat.o \
./src/Heating/Pid.o \
./src/Heating/TemperatureError.o \
./src/Heating/TemperatureSensor.o \
./src/Heating/Thermistor.o 

CPP_DEPS += \
./src/Heating/FOPDT.d \
./src/Heating/Heat.d \
./src/Heating/Pid.d \
./src/Heating/TemperatureError.d \
./src/Heating/TemperatureSensor.d \
./src/Heating/Thermistor.d 


# Each subdirectory must supply rules for building sources it contributes
src/Heating/%.o: ../src/Heating/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-none-eabi-g++ -D__SAM3X8E__ -Dprintf=iprintf -I"C:\Eclipse\Firmware\CoreNG\cores\arduino" -I"C:\Eclipse\Firmware\CoreNG\libraries\Flash" -I"C:\Eclipse\Firmware\CoreNG\libraries\SharedSpi" -I"C:\Eclipse\Firmware\CoreNG\libraries\Storage" -I"C:\Eclipse\Firmware\CoreNG\libraries\Wire" -I"C:\Eclipse\Firmware\CoreNG\asf" -I"C:\Eclipse\Firmware\CoreNG\asf\common\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\clock" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\efc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\emac" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\pmc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\spi" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\twi" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\services\flash_efc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\cmsis\sam3x\include" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\header_files" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\preprocessor" -I"C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Eclipse\Firmware\CoreNG\variants\duet" -I"C:\Eclipse\Firmware\RepRapFirmware\src" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\Lwip" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\EMAC" -O2 -Wall -c -std=gnu++11 -mcpu=cortex-m3 -mthumb -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Fan.cpp \
../src/OutputMemory.cpp \
../src/Platform.cpp \
../src/PrintMonitor.cpp \
../src/RepRap.cpp \
../src/RepRapFirmware.cpp \
../src/Roland.cpp \
../src/Tool.cpp 

OBJS += \
./src/Fan.o \
./src/OutputMemory.o \
./src/Platform.o \
./src/PrintMonitor.o \
./src/RepRap.o \
./src/RepRapFirmware.o \
./src/Roland.o \
./src/Tool.o 

CPP_DEPS += \
./src/Fan.d \
./src/OutputMemory.d \
./src/Platform.d \
./src/PrintMonitor.d \
./src/RepRap.d \
./src/RepRapFirmware.d \
./src/Roland.d \
./src/Tool.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-none-eabi-g++ -D__SAM3X8E__ -Dprintf=iprintf -I"C:\Eclipse\Firmware\CoreNG\cores\arduino" -I"C:\Eclipse\Firmware\CoreNG\libraries\Flash" -I"C:\Eclipse\Firmware\CoreNG\libraries\SharedSpi" -I"C:\Eclipse\Firmware\CoreNG\libraries\Storage" -I"C:\Eclipse\Firmware\CoreNG\libraries\Wire" -I"C:\Eclipse\Firmware\CoreNG\asf" -I"C:\Eclipse\Firmware\CoreNG\asf\common\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\clock" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\efc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\emac" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\pmc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\spi" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\twi" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\services\flash_efc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\cmsis\sam3x\include" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\header_files" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\preprocessor" -I"C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Eclipse\Firmware\CoreNG\variants\duet" -I"C:\Eclipse\Firmware\RepRapFirmware\src" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\Lwip" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\EMAC" -O2 -Wall -c -std=gnu++11 -mcpu=cortex-m3 -mthumb -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



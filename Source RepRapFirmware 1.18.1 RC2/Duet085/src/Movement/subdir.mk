################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Movement/DDA.cpp \
../src/Movement/DeltaParameters.cpp \
../src/Movement/DeltaProbe.cpp \
../src/Movement/DriveMovement.cpp \
../src/Movement/Grid.cpp \
../src/Movement/Move.cpp 

OBJS += \
./src/Movement/DDA.o \
./src/Movement/DeltaParameters.o \
./src/Movement/DeltaProbe.o \
./src/Movement/DriveMovement.o \
./src/Movement/Grid.o \
./src/Movement/Move.o 

CPP_DEPS += \
./src/Movement/DDA.d \
./src/Movement/DeltaParameters.d \
./src/Movement/DeltaProbe.d \
./src/Movement/DriveMovement.d \
./src/Movement/Grid.d \
./src/Movement/Move.d 


# Each subdirectory must supply rules for building sources it contributes
src/Movement/%.o: ../src/Movement/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-none-eabi-g++ -D__SAM3X8E__ -Dprintf=iprintf -I"C:\Eclipse\Firmware\CoreNG\cores\arduino" -I"C:\Eclipse\Firmware\CoreNG\libraries\Flash" -I"C:\Eclipse\Firmware\CoreNG\libraries\SharedSpi" -I"C:\Eclipse\Firmware\CoreNG\libraries\Storage" -I"C:\Eclipse\Firmware\CoreNG\libraries\Wire" -I"C:\Eclipse\Firmware\CoreNG\asf" -I"C:\Eclipse\Firmware\CoreNG\asf\common\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\common\services\clock" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\efc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\emac" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\pmc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\spi" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\twi" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\services\flash_efc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\cmsis\sam3x\include" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\header_files" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\preprocessor" -I"C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Eclipse\Firmware\CoreNG\variants\duet" -I"C:\Eclipse\Firmware\RepRapFirmware\src" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\Lwip" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\EMAC" -O2 -Wall -c -std=gnu++11 -mcpu=cortex-m3 -mthumb -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



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
	arm-none-eabi-g++ -D__SAM4E8E__ -DCORE_NG -DDUET_NG -DDUET_WIFI -Dprintf=iprintf -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\cores\arduino" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\libraries\Flash" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\libraries\SharedSpi" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\libraries\Storage" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\libraries\Wire" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\common\utils" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\common\services\clock" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\common\services\ioport" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\dmac" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\efc" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\matrix" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\pdc" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\pmc" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\spi" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\twi" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\services\flash_efc" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\utils" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\utils\cmsis\sam4e\include" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\utils\header_files" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\utils\preprocessor" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\variants\duetNG" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\RepRapFirmware\src" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\RepRapFirmware\src\DuetNG" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\RepRapFirmware\src\DuetNG\DuetWiFi" -O2 -Wall -c -std=gnu++11 -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



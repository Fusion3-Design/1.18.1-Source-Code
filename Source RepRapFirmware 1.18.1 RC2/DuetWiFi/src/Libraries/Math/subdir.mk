################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Libraries/Math/Isqrt.cpp 

OBJS += \
./src/Libraries/Math/Isqrt.o 

CPP_DEPS += \
./src/Libraries/Math/Isqrt.d 


# Each subdirectory must supply rules for building sources it contributes
src/Libraries/Math/%.o: ../src/Libraries/Math/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-none-eabi-g++ -D__SAM4E8E__ -DCORE_NG -DDUET_NG -DDUET_WIFI -Dprintf=iprintf -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\cores\arduino" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\libraries\Flash" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\libraries\SharedSpi" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\libraries\Storage" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\libraries\Wire" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\common\utils" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\common\services\clock" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\common\services\ioport" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\dmac" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\efc" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\matrix" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\pdc" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\pmc" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\spi" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\twi" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\services\flash_efc" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\utils" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\utils\cmsis\sam4e\include" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\utils\header_files" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\utils\preprocessor" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\variants\duetNG" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\RepRapFirmware\src" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\RepRapFirmware\src\DuetNG" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\RepRapFirmware\src\DuetNG\DuetWiFi" -O2 -Wall -c -std=gnu++11 -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions -nostdlib "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



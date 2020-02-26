################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Libraries/sha1/sha1.c 

OBJS += \
./src/Libraries/sha1/sha1.o 

C_DEPS += \
./src/Libraries/sha1/sha1.d 


# Each subdirectory must supply rules for building sources it contributes
src/Libraries/sha1/%.o: ../src/Libraries/sha1/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-none-eabi-gcc -D__SAM4E8E__ -DCORE_NG -DDUET_NG -Dprintf=iprintf -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\cores\arduino" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\libraries\Storage" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\common\utils" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\common\services\ioport" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\hsmci" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\rstc" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\drivers\rtc" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\utils" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\utils\cmsis\sam4e\include" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\utils\header_files" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\sam\utils\preprocessor" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\variants\duetNG" -O2 -Wall -c -std=gnu99 -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -ffunction-sections -fdata-sections -nostdlib "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



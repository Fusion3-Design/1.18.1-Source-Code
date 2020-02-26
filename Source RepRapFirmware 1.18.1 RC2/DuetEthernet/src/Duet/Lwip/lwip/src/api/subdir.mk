################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Duet/Lwip/lwip/src/api/api_lib.c \
../src/Duet/Lwip/lwip/src/api/api_msg.c \
../src/Duet/Lwip/lwip/src/api/err.c \
../src/Duet/Lwip/lwip/src/api/netbuf.c \
../src/Duet/Lwip/lwip/src/api/netdb.c \
../src/Duet/Lwip/lwip/src/api/netifapi.c \
../src/Duet/Lwip/lwip/src/api/sockets.c \
../src/Duet/Lwip/lwip/src/api/tcpip.c 

OBJS += \
./src/Duet/Lwip/lwip/src/api/api_lib.o \
./src/Duet/Lwip/lwip/src/api/api_msg.o \
./src/Duet/Lwip/lwip/src/api/err.o \
./src/Duet/Lwip/lwip/src/api/netbuf.o \
./src/Duet/Lwip/lwip/src/api/netdb.o \
./src/Duet/Lwip/lwip/src/api/netifapi.o \
./src/Duet/Lwip/lwip/src/api/sockets.o \
./src/Duet/Lwip/lwip/src/api/tcpip.o 

C_DEPS += \
./src/Duet/Lwip/lwip/src/api/api_lib.d \
./src/Duet/Lwip/lwip/src/api/api_msg.d \
./src/Duet/Lwip/lwip/src/api/err.d \
./src/Duet/Lwip/lwip/src/api/netbuf.d \
./src/Duet/Lwip/lwip/src/api/netdb.d \
./src/Duet/Lwip/lwip/src/api/netifapi.d \
./src/Duet/Lwip/lwip/src/api/sockets.d \
./src/Duet/Lwip/lwip/src/api/tcpip.d 


# Each subdirectory must supply rules for building sources it contributes
src/Duet/Lwip/lwip/src/api/%.o: ../src/Duet/Lwip/lwip/src/api/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-none-eabi-gcc -D__SAM4E8E__ -DCORE_NG -DDUET_NG -Dprintf=iprintf -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\cores\arduino" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\libraries\Storage" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\common\utils" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\common\services\ioport" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\drivers\hsmci" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\drivers\rstc" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\drivers\rtc" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\utils" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\utils\cmsis\sam4e\include" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\utils\header_files" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\utils\preprocessor" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\variants\duetNG" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\RepRapFirmware\src\DuetNG\DuetEthernet" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\RepRapFirmware\src\DuetNG\DuetEthernet\Wiznet\Ethernet" -O2 -Wall -c -std=gnu99 -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -ffunction-sections -fdata-sections -nostdlib "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



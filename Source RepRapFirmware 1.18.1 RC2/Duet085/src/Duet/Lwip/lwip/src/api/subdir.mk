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
	arm-none-eabi-gcc -D__SAM3X8E__ -Dprintf=iprintf -I"C:\Eclipse\Firmware\CoreNG\cores\arduino" -I"C:\Eclipse\Firmware\CoreNG\libraries\Storage" -I"C:\Eclipse\Firmware\CoreNG\asf" -I"C:\Eclipse\Firmware\CoreNG\asf\common\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\emac" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\hsmci" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\rstc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\rtc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\cmsis\sam3x\include" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\header_files" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\preprocessor" -I"C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Eclipse\Firmware\CoreNG\variants\duet" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\Lwip" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\Lwip\lwip\src\include" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\EMAC" -O2 -Wall -c -std=gnu99 -mcpu=cortex-m3 -mthumb -ffunction-sections -fdata-sections -nostdlib "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



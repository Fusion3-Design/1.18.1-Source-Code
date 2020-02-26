################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Duet/Lwip/lwip/src/core/ipv4/autoip.c \
../src/Duet/Lwip/lwip/src/core/ipv4/icmp.c \
../src/Duet/Lwip/lwip/src/core/ipv4/igmp.c \
../src/Duet/Lwip/lwip/src/core/ipv4/inet.c \
../src/Duet/Lwip/lwip/src/core/ipv4/inet_chksum.c \
../src/Duet/Lwip/lwip/src/core/ipv4/ip.c \
../src/Duet/Lwip/lwip/src/core/ipv4/ip_addr.c \
../src/Duet/Lwip/lwip/src/core/ipv4/ip_frag.c 

OBJS += \
./src/Duet/Lwip/lwip/src/core/ipv4/autoip.o \
./src/Duet/Lwip/lwip/src/core/ipv4/icmp.o \
./src/Duet/Lwip/lwip/src/core/ipv4/igmp.o \
./src/Duet/Lwip/lwip/src/core/ipv4/inet.o \
./src/Duet/Lwip/lwip/src/core/ipv4/inet_chksum.o \
./src/Duet/Lwip/lwip/src/core/ipv4/ip.o \
./src/Duet/Lwip/lwip/src/core/ipv4/ip_addr.o \
./src/Duet/Lwip/lwip/src/core/ipv4/ip_frag.o 

C_DEPS += \
./src/Duet/Lwip/lwip/src/core/ipv4/autoip.d \
./src/Duet/Lwip/lwip/src/core/ipv4/icmp.d \
./src/Duet/Lwip/lwip/src/core/ipv4/igmp.d \
./src/Duet/Lwip/lwip/src/core/ipv4/inet.d \
./src/Duet/Lwip/lwip/src/core/ipv4/inet_chksum.d \
./src/Duet/Lwip/lwip/src/core/ipv4/ip.d \
./src/Duet/Lwip/lwip/src/core/ipv4/ip_addr.d \
./src/Duet/Lwip/lwip/src/core/ipv4/ip_frag.d 


# Each subdirectory must supply rules for building sources it contributes
src/Duet/Lwip/lwip/src/core/ipv4/%.o: ../src/Duet/Lwip/lwip/src/core/ipv4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-none-eabi-gcc -D__SAM3X8E__ -Dprintf=iprintf -I"C:\Eclipse\Firmware\CoreNG\cores\arduino" -I"C:\Eclipse\Firmware\CoreNG\libraries\Storage" -I"C:\Eclipse\Firmware\CoreNG\asf" -I"C:\Eclipse\Firmware\CoreNG\asf\common\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\emac" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\hsmci" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\rstc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\rtc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\cmsis\sam3x\include" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\header_files" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\preprocessor" -I"C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Eclipse\Firmware\CoreNG\variants\duet" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\Lwip" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\Lwip\lwip\src\include" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\EMAC" -O2 -Wall -c -std=gnu99 -mcpu=cortex-m3 -mthumb -ffunction-sections -fdata-sections -nostdlib "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



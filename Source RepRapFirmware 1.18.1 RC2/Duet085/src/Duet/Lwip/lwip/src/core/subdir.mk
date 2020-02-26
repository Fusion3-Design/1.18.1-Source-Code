################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Duet/Lwip/lwip/src/core/def.c \
../src/Duet/Lwip/lwip/src/core/dhcp.c \
../src/Duet/Lwip/lwip/src/core/dns.c \
../src/Duet/Lwip/lwip/src/core/lwip_init.c \
../src/Duet/Lwip/lwip/src/core/lwip_timers_141.c \
../src/Duet/Lwip/lwip/src/core/mem.c \
../src/Duet/Lwip/lwip/src/core/memp.c \
../src/Duet/Lwip/lwip/src/core/netif.c \
../src/Duet/Lwip/lwip/src/core/pbuf.c \
../src/Duet/Lwip/lwip/src/core/raw.c \
../src/Duet/Lwip/lwip/src/core/stats.c \
../src/Duet/Lwip/lwip/src/core/sys.c \
../src/Duet/Lwip/lwip/src/core/tcp.c \
../src/Duet/Lwip/lwip/src/core/tcp_in.c \
../src/Duet/Lwip/lwip/src/core/tcp_out.c \
../src/Duet/Lwip/lwip/src/core/udp.c 

OBJS += \
./src/Duet/Lwip/lwip/src/core/def.o \
./src/Duet/Lwip/lwip/src/core/dhcp.o \
./src/Duet/Lwip/lwip/src/core/dns.o \
./src/Duet/Lwip/lwip/src/core/lwip_init.o \
./src/Duet/Lwip/lwip/src/core/lwip_timers_141.o \
./src/Duet/Lwip/lwip/src/core/mem.o \
./src/Duet/Lwip/lwip/src/core/memp.o \
./src/Duet/Lwip/lwip/src/core/netif.o \
./src/Duet/Lwip/lwip/src/core/pbuf.o \
./src/Duet/Lwip/lwip/src/core/raw.o \
./src/Duet/Lwip/lwip/src/core/stats.o \
./src/Duet/Lwip/lwip/src/core/sys.o \
./src/Duet/Lwip/lwip/src/core/tcp.o \
./src/Duet/Lwip/lwip/src/core/tcp_in.o \
./src/Duet/Lwip/lwip/src/core/tcp_out.o \
./src/Duet/Lwip/lwip/src/core/udp.o 

C_DEPS += \
./src/Duet/Lwip/lwip/src/core/def.d \
./src/Duet/Lwip/lwip/src/core/dhcp.d \
./src/Duet/Lwip/lwip/src/core/dns.d \
./src/Duet/Lwip/lwip/src/core/lwip_init.d \
./src/Duet/Lwip/lwip/src/core/lwip_timers_141.d \
./src/Duet/Lwip/lwip/src/core/mem.d \
./src/Duet/Lwip/lwip/src/core/memp.d \
./src/Duet/Lwip/lwip/src/core/netif.d \
./src/Duet/Lwip/lwip/src/core/pbuf.d \
./src/Duet/Lwip/lwip/src/core/raw.d \
./src/Duet/Lwip/lwip/src/core/stats.d \
./src/Duet/Lwip/lwip/src/core/sys.d \
./src/Duet/Lwip/lwip/src/core/tcp.d \
./src/Duet/Lwip/lwip/src/core/tcp_in.d \
./src/Duet/Lwip/lwip/src/core/tcp_out.d \
./src/Duet/Lwip/lwip/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
src/Duet/Lwip/lwip/src/core/%.o: ../src/Duet/Lwip/lwip/src/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-none-eabi-gcc -D__SAM3X8E__ -Dprintf=iprintf -I"C:\Eclipse\Firmware\CoreNG\cores\arduino" -I"C:\Eclipse\Firmware\CoreNG\libraries\Storage" -I"C:\Eclipse\Firmware\CoreNG\asf" -I"C:\Eclipse\Firmware\CoreNG\asf\common\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\emac" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\hsmci" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\rstc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\rtc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\cmsis\sam3x\include" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\header_files" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\preprocessor" -I"C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Eclipse\Firmware\CoreNG\variants\duet" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\Lwip" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\Lwip\lwip\src\include" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\EMAC" -O2 -Wall -c -std=gnu99 -mcpu=cortex-m3 -mthumb -ffunction-sections -fdata-sections -nostdlib "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



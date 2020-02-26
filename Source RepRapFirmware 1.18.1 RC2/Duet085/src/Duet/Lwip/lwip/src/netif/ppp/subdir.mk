################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Duet/Lwip/lwip/src/netif/ppp/auth.c \
../src/Duet/Lwip/lwip/src/netif/ppp/chap.c \
../src/Duet/Lwip/lwip/src/netif/ppp/chpms.c \
../src/Duet/Lwip/lwip/src/netif/ppp/fsm.c \
../src/Duet/Lwip/lwip/src/netif/ppp/ipcp.c \
../src/Duet/Lwip/lwip/src/netif/ppp/lcp.c \
../src/Duet/Lwip/lwip/src/netif/ppp/magic.c \
../src/Duet/Lwip/lwip/src/netif/ppp/md5.c \
../src/Duet/Lwip/lwip/src/netif/ppp/pap.c \
../src/Duet/Lwip/lwip/src/netif/ppp/ppp.c \
../src/Duet/Lwip/lwip/src/netif/ppp/ppp_oe.c \
../src/Duet/Lwip/lwip/src/netif/ppp/randm.c \
../src/Duet/Lwip/lwip/src/netif/ppp/vj.c 

OBJS += \
./src/Duet/Lwip/lwip/src/netif/ppp/auth.o \
./src/Duet/Lwip/lwip/src/netif/ppp/chap.o \
./src/Duet/Lwip/lwip/src/netif/ppp/chpms.o \
./src/Duet/Lwip/lwip/src/netif/ppp/fsm.o \
./src/Duet/Lwip/lwip/src/netif/ppp/ipcp.o \
./src/Duet/Lwip/lwip/src/netif/ppp/lcp.o \
./src/Duet/Lwip/lwip/src/netif/ppp/magic.o \
./src/Duet/Lwip/lwip/src/netif/ppp/md5.o \
./src/Duet/Lwip/lwip/src/netif/ppp/pap.o \
./src/Duet/Lwip/lwip/src/netif/ppp/ppp.o \
./src/Duet/Lwip/lwip/src/netif/ppp/ppp_oe.o \
./src/Duet/Lwip/lwip/src/netif/ppp/randm.o \
./src/Duet/Lwip/lwip/src/netif/ppp/vj.o 

C_DEPS += \
./src/Duet/Lwip/lwip/src/netif/ppp/auth.d \
./src/Duet/Lwip/lwip/src/netif/ppp/chap.d \
./src/Duet/Lwip/lwip/src/netif/ppp/chpms.d \
./src/Duet/Lwip/lwip/src/netif/ppp/fsm.d \
./src/Duet/Lwip/lwip/src/netif/ppp/ipcp.d \
./src/Duet/Lwip/lwip/src/netif/ppp/lcp.d \
./src/Duet/Lwip/lwip/src/netif/ppp/magic.d \
./src/Duet/Lwip/lwip/src/netif/ppp/md5.d \
./src/Duet/Lwip/lwip/src/netif/ppp/pap.d \
./src/Duet/Lwip/lwip/src/netif/ppp/ppp.d \
./src/Duet/Lwip/lwip/src/netif/ppp/ppp_oe.d \
./src/Duet/Lwip/lwip/src/netif/ppp/randm.d \
./src/Duet/Lwip/lwip/src/netif/ppp/vj.d 


# Each subdirectory must supply rules for building sources it contributes
src/Duet/Lwip/lwip/src/netif/ppp/%.o: ../src/Duet/Lwip/lwip/src/netif/ppp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-none-eabi-gcc -D__SAM3X8E__ -Dprintf=iprintf -I"C:\Eclipse\Firmware\CoreNG\cores\arduino" -I"C:\Eclipse\Firmware\CoreNG\libraries\Storage" -I"C:\Eclipse\Firmware\CoreNG\asf" -I"C:\Eclipse\Firmware\CoreNG\asf\common\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\emac" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\hsmci" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\rstc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\drivers\rtc" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\cmsis\sam3x\include" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\header_files" -I"C:\Eclipse\Firmware\CoreNG\asf\sam\utils\preprocessor" -I"C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Eclipse\Firmware\CoreNG\variants\duet" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\Lwip" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\Lwip\lwip\src\include" -I"C:\Eclipse\Firmware\RepRapFirmware\src\Duet\EMAC" -O2 -Wall -c -std=gnu99 -mcpu=cortex-m3 -mthumb -ffunction-sections -fdata-sections -nostdlib "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



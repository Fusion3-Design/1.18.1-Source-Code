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
	arm-none-eabi-gcc -D__SAM4E8E__ -DCORE_NG -DDUET_NG -Dprintf=iprintf -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\cores\arduino" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\libraries\Storage" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\common\utils" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\common\services\ioport" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\drivers\hsmci" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\drivers\rstc" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\drivers\rtc" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\utils" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\utils\cmsis\sam4e\include" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\utils\header_files" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\utils\preprocessor" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\variants\duetNG" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\RepRapFirmware\src\DuetNG\DuetEthernet" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\RepRapFirmware\src\DuetNG\DuetEthernet\Wiznet\Ethernet" -O2 -Wall -c -std=gnu99 -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -ffunction-sections -fdata-sections -nostdlib "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



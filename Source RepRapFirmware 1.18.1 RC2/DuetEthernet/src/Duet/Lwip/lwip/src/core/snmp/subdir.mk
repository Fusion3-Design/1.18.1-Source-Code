################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Duet/Lwip/lwip/src/core/snmp/asn1_dec.c \
../src/Duet/Lwip/lwip/src/core/snmp/asn1_enc.c \
../src/Duet/Lwip/lwip/src/core/snmp/mib2.c \
../src/Duet/Lwip/lwip/src/core/snmp/mib_structs.c \
../src/Duet/Lwip/lwip/src/core/snmp/msg_in.c \
../src/Duet/Lwip/lwip/src/core/snmp/msg_out.c 

OBJS += \
./src/Duet/Lwip/lwip/src/core/snmp/asn1_dec.o \
./src/Duet/Lwip/lwip/src/core/snmp/asn1_enc.o \
./src/Duet/Lwip/lwip/src/core/snmp/mib2.o \
./src/Duet/Lwip/lwip/src/core/snmp/mib_structs.o \
./src/Duet/Lwip/lwip/src/core/snmp/msg_in.o \
./src/Duet/Lwip/lwip/src/core/snmp/msg_out.o 

C_DEPS += \
./src/Duet/Lwip/lwip/src/core/snmp/asn1_dec.d \
./src/Duet/Lwip/lwip/src/core/snmp/asn1_enc.d \
./src/Duet/Lwip/lwip/src/core/snmp/mib2.d \
./src/Duet/Lwip/lwip/src/core/snmp/mib_structs.d \
./src/Duet/Lwip/lwip/src/core/snmp/msg_in.d \
./src/Duet/Lwip/lwip/src/core/snmp/msg_out.d 


# Each subdirectory must supply rules for building sources it contributes
src/Duet/Lwip/lwip/src/core/snmp/%.o: ../src/Duet/Lwip/lwip/src/core/snmp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-none-eabi-gcc -D__SAM4E8E__ -DCORE_NG -DDUET_NG -Dprintf=iprintf -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\cores\arduino" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\libraries\Storage" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\common\utils" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\common\services\ioport" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\drivers\hsmci" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\drivers\rstc" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\drivers\rtc" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\utils" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\utils\cmsis\sam4e\include" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\utils\header_files" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\sam\utils\preprocessor" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\variants\duetNG" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\RepRapFirmware\src\DuetNG\DuetEthernet" -I"C:\Google_Drive\projects\Fusion3\firmware_chg\RepRapFirmware\src\DuetNG\DuetEthernet\Wiznet\Ethernet" -O2 -Wall -c -std=gnu99 -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -ffunction-sections -fdata-sections -nostdlib "-Wa,-ahl=$*.s" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



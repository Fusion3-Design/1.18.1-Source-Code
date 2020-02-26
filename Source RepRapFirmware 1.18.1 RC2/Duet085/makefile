################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/Storage/subdir.mk
-include src/Movement/subdir.mk
-include src/Libraries/sha1/subdir.mk
-include src/Libraries/Math/subdir.mk
-include src/Libraries/General/subdir.mk
-include src/Libraries/Fatfs/subdir.mk
-include src/Heating/subdir.mk
-include src/GCodes/subdir.mk
-include src/Duet/MCP4461/subdir.mk
-include src/Duet/Lwip/lwip/src/netif/ppp/subdir.mk
-include src/Duet/Lwip/lwip/src/netif/subdir.mk
-include src/Duet/Lwip/lwip/src/core/snmp/subdir.mk
-include src/Duet/Lwip/lwip/src/core/ipv4/subdir.mk
-include src/Duet/Lwip/lwip/src/core/subdir.mk
-include src/Duet/Lwip/lwip/src/api/subdir.mk
-include src/Duet/Lwip/contrib/apps/netbios/subdir.mk
-include src/Duet/Lwip/contrib/apps/mdns/subdir.mk
-include src/Duet/EMAC/subdir.mk
-include src/Duet/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: RepRapFirmware.elf

# Tool invocations
RepRapFirmware.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross G++ Linker'
	arm-none-eabi-gcc -L"C:\Eclipse\Firmware\CoreNG\SAM3X8E" -Os -Wl,--gc-sections -Wl,--fatal-warnings -mcpu=cortex-m3 -TC:\Eclipse\Firmware\CoreNG\variants\duet\linker_scripts\gcc\flash.ld -Wl,-Map,C:\Eclipse\Firmware\RepRapFirmware\Duet085/RepRapFirmware.map -o "RepRapFirmware.elf"  -mthumb -Wl,--cref -Wl,--check-sections -Wl,--gc-sections -Wl,--entry=Reset_Handler -Wl,--unresolved-symbols=report-all -Wl,--warn-common -Wl,--warn-section-align -Wl,--warn-unresolved-symbols -Wl,--start-group C:\Eclipse\Firmware\CoreNG\SAM3X8E\cores\arduino\syscalls.o $(OBJS) $(USER_OBJS) $(LIBS) -Wl,--end-group -lm -gcc
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(EXECUTABLES)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(C_DEPS)$(CPP_DEPS) RepRapFirmware.elf
	-@echo ' '

post-build:
	-@echo 'Generating binary file'
	-arm-none-eabi-objcopy -O binary C:\Eclipse\Firmware\RepRapFirmware\Duet085/RepRapFirmware.elf C:\Eclipse\Firmware\RepRapFirmware\Duet085/RepRapFirmware.bin
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets

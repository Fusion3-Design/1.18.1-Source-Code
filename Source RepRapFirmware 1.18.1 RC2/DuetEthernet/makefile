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
-include src/DuetNG/DuetEthernet/Wiznet/Internet/DHCP/subdir.mk
-include src/DuetNG/DuetEthernet/Wiznet/Ethernet/W5500/subdir.mk
-include src/DuetNG/DuetEthernet/Wiznet/Ethernet/subdir.mk
-include src/DuetNG/DuetEthernet/subdir.mk
-include src/DuetNG/subdir.mk
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
all: DuetEthernetFirmware.elf

# Tool invocations
DuetEthernetFirmware.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross G++ Linker'
	arm-none-eabi-gcc -L"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\SAM4E8E" -Os -Wl,--gc-sections -Wl,--fatal-warnings -mcpu=cortex-m3 -T"C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\variants\duetNG\linker_scripts\gcc\flash.ld" -Wl,-Map,"C:\Google_Drive\projects\Fusion3\firmware_chg\RepRapFirmware\DuetEthernet/DuetEthernetFirmware.map" -o "DuetEthernetFirmware.elf"  -mthumb -Wl,--cref -Wl,--check-sections -Wl,--gc-sections -Wl,--entry=Reset_Handler -Wl,--unresolved-symbols=report-all -Wl,--warn-common -Wl,--warn-section-align -Wl,--warn-unresolved-symbols -Wl,--start-group "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\SAM4E8E\cores\arduino\syscalls.o" $(OBJS) $(USER_OBJS) $(LIBS) -Wl,--end-group -lm -gcc
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(EXECUTABLES)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(C_DEPS)$(CPP_DEPS) DuetEthernetFirmware.elf
	-@echo ' '

post-build:
	-@echo 'Generating binary file'
	-arm-none-eabi-objcopy -O binary "C:\Google_Drive\projects\Fusion3\firmware_chg\RepRapFirmware\DuetEthernet/DuetEthernetFirmware.elf" "C:\Google_Drive\projects\Fusion3\firmware_chg\RepRapFirmware\DuetEthernet/DuetEthernetFirmware.bin"
	-@echo ' '

.PHONY: all clean dependents post-build

-include ../makefile.targets

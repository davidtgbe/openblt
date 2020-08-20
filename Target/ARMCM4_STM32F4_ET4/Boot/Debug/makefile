################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include lib/fatfs/subdir.mk
-include lib/STM32F4xx_HAL_Driver/Src/subdir.mk
-include lib/subdir.mk
-include core/third_party/fatfs/src/option/subdir.mk
-include core/third_party/fatfs/src/subdir.mk
-include core/ARMCM4_STM32F4/GCC/subdir.mk
-include core/ARMCM4_STM32F4/subdir.mk
-include core/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
openblt_et4.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
openblt_et4.list \

OBJCOPY_HEX += \
openblt_et4.hex \

OBJCOPY_BIN += \
openblt_et4.bin \

OBJCOPY_SREC += \
openblt_et4.srec \


# All Target
all: openblt_et4.elf secondary-outputs

# Tool invocations
openblt_et4.elf: $(OBJS) $(USER_OBJS) D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/STM32F407VG_FLASH.ld
	arm-none-eabi-gcc -o "openblt_et4.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/STM32F407VG_FLASH.ld" --specs=nosys.specs -Wl,-Map="Boot.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

openblt_et4.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "openblt_et4.list"
	@echo 'Finished building: $@'
	@echo ' '

openblt_et4.hex: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "openblt_et4.hex"
	@echo 'Finished building: $@'
	@echo ' '

openblt_et4.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "openblt_et4.bin"
	@echo 'Finished building: $@'
	@echo ' '

openblt_et4.srec: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O srec $(EXECUTABLES) "openblt_et4.srec"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_HEX) $(OBJCOPY_BIN) $(OBJCOPY_SREC)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

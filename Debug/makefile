################################################################################
# Automatically-generated file. Do not edit!
################################################################################

#Progress monitor hint: 36
first : all
-include ../makefile.init

# This file contains definitions of environment variables used in the makefiles and .args files if exist.
-include makefile.local

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include KEAZN64/LIN_Driver/bsp/UART/subdir.mk
-include KEAZN64/LIN_Driver/coreapi/subdir.mk
-include KEAZN64/LIN_Driver/diagnostic/subdir.mk
-include KEAZN64/LIN_Driver/lowlevel/subdir.mk
-include KEAZN64/LIN_Driver/transport/subdir.mk
-include KEAZN64/lin_cfg/subdir.mk
-include KEAZN64/sources/subdir.mk
-include Project_Settings/Linker_Files/subdir.mk
-include Project_Settings/Startup_Code/subdir.mk
-include src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
KEAZN64_LIN.elf \

EXECUTABLES_QUOTED += \
"KEAZN64_LIN.elf" \

EXECUTABLES_OS_FORMAT += \
KEAZN64_LIN.elf \

SECONDARY_SIZE += \
KEAZN64_LIN.siz \

SECONDARY_SIZE_QUOTED += \
"KEAZN64_LIN.siz" \

SECONDARY_SIZE_OS_FORMAT += \
KEAZN64_LIN.siz \


# All Target
all: warning-messages explicit-dependencies KEAZN64_LIN.elf secondary-outputs

# Tool invocations
KEAZN64_LIN.elf: $(OBJS) C:/NXP/My_Work/KEAZN64_LIN/Project_Settings/Linker_Files/SKEAZ_flash.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Executing target #37 $@'
	@echo 'Invoking: Standard S32DS C Linker'
	arm-none-eabi-gcc -o "KEAZN64_LIN.elf" "@KEAZN64_LIN.args"  $(USER_OBJS_QUOTED) $(LIBS_QUOTED)
	@echo 'Finished building target: $@'
	@echo ' '

KEAZN64_LIN.siz: $(EXECUTABLES)
	@echo 'Executing target #38 $@'
	@echo 'Invoking: Standard S32DS Print Size'
	arm-none-eabi-size --format=berkeley $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) ./*/*.d ./*/*/*.d ./*/*/*/*.d ./*/*/*/*/*.d  ./*/*.o ./*/*/*.o ./*/*/*/*.o ./*/*/*/*/*.o  $(SECONDARY_SIZE_QUOTED) $(EXECUTABLES_QUOTED)
	-@echo ' '

secondary-outputs: $(SECONDARY_SIZE)

.PHONY: all clean dependents explicit-dependencies warning-messages
.SECONDARY:

-include ../makefile.targets

explicit-dependencies: 

warning-messages: 


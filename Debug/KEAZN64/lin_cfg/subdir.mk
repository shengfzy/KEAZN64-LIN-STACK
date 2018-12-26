################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/lin_cfg/lin_cfg.c" \

C_SRCS += \
C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/lin_cfg/lin_cfg.c \

OBJS_OS_FORMAT += \
./KEAZN64/lin_cfg/lin_cfg.o \

C_DEPS_QUOTED += \
"./KEAZN64/lin_cfg/lin_cfg.d" \

OBJS += \
./KEAZN64/lin_cfg/lin_cfg.o \

OBJS_QUOTED += \
"./KEAZN64/lin_cfg/lin_cfg.o" \

C_DEPS += \
./KEAZN64/lin_cfg/lin_cfg.d \


# Each subdirectory must supply rules for building sources it contributes
KEAZN64/lin_cfg/lin_cfg.o: C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/lin_cfg/lin_cfg.c
	@echo 'Building file: $<'
	@echo 'Executing target #16 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@KEAZN64/lin_cfg/lin_cfg.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "KEAZN64/lin_cfg/lin_cfg.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '



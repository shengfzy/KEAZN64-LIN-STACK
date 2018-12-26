################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/lowlevel/lin.c" \

C_SRCS += \
C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/lowlevel/lin.c \

OBJS_OS_FORMAT += \
./KEAZN64/LIN_Driver/lowlevel/lin.o \

C_DEPS_QUOTED += \
"./KEAZN64/LIN_Driver/lowlevel/lin.d" \

OBJS += \
./KEAZN64/LIN_Driver/lowlevel/lin.o \

OBJS_QUOTED += \
"./KEAZN64/LIN_Driver/lowlevel/lin.o" \

C_DEPS += \
./KEAZN64/LIN_Driver/lowlevel/lin.d \


# Each subdirectory must supply rules for building sources it contributes
KEAZN64/LIN_Driver/lowlevel/lin.o: C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/lowlevel/lin.c
	@echo 'Building file: $<'
	@echo 'Executing target #11 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@KEAZN64/LIN_Driver/lowlevel/lin.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "KEAZN64/LIN_Driver/lowlevel/lin.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '



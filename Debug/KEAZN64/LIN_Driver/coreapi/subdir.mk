################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_common_api.c" \
"C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_common_proto.c" \
"C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_j2602_api.c" \
"C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_j2602_proto.c" \
"C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_lin21_api.c" \
"C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_lin21_proto.c" \

C_SRCS += \
C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_common_api.c \
C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_common_proto.c \
C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_j2602_api.c \
C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_j2602_proto.c \
C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_lin21_api.c \
C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_lin21_proto.c \

OBJS_OS_FORMAT += \
./KEAZN64/LIN_Driver/coreapi/lin_common_api.o \
./KEAZN64/LIN_Driver/coreapi/lin_common_proto.o \
./KEAZN64/LIN_Driver/coreapi/lin_j2602_api.o \
./KEAZN64/LIN_Driver/coreapi/lin_j2602_proto.o \
./KEAZN64/LIN_Driver/coreapi/lin_lin21_api.o \
./KEAZN64/LIN_Driver/coreapi/lin_lin21_proto.o \

C_DEPS_QUOTED += \
"./KEAZN64/LIN_Driver/coreapi/lin_common_api.d" \
"./KEAZN64/LIN_Driver/coreapi/lin_common_proto.d" \
"./KEAZN64/LIN_Driver/coreapi/lin_j2602_api.d" \
"./KEAZN64/LIN_Driver/coreapi/lin_j2602_proto.d" \
"./KEAZN64/LIN_Driver/coreapi/lin_lin21_api.d" \
"./KEAZN64/LIN_Driver/coreapi/lin_lin21_proto.d" \

OBJS += \
./KEAZN64/LIN_Driver/coreapi/lin_common_api.o \
./KEAZN64/LIN_Driver/coreapi/lin_common_proto.o \
./KEAZN64/LIN_Driver/coreapi/lin_j2602_api.o \
./KEAZN64/LIN_Driver/coreapi/lin_j2602_proto.o \
./KEAZN64/LIN_Driver/coreapi/lin_lin21_api.o \
./KEAZN64/LIN_Driver/coreapi/lin_lin21_proto.o \

OBJS_QUOTED += \
"./KEAZN64/LIN_Driver/coreapi/lin_common_api.o" \
"./KEAZN64/LIN_Driver/coreapi/lin_common_proto.o" \
"./KEAZN64/LIN_Driver/coreapi/lin_j2602_api.o" \
"./KEAZN64/LIN_Driver/coreapi/lin_j2602_proto.o" \
"./KEAZN64/LIN_Driver/coreapi/lin_lin21_api.o" \
"./KEAZN64/LIN_Driver/coreapi/lin_lin21_proto.o" \

C_DEPS += \
./KEAZN64/LIN_Driver/coreapi/lin_common_api.d \
./KEAZN64/LIN_Driver/coreapi/lin_common_proto.d \
./KEAZN64/LIN_Driver/coreapi/lin_j2602_api.d \
./KEAZN64/LIN_Driver/coreapi/lin_j2602_proto.d \
./KEAZN64/LIN_Driver/coreapi/lin_lin21_api.d \
./KEAZN64/LIN_Driver/coreapi/lin_lin21_proto.d \


# Each subdirectory must supply rules for building sources it contributes
KEAZN64/LIN_Driver/coreapi/lin_common_api.o: C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_common_api.c
	@echo 'Building file: $<'
	@echo 'Executing target #4 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@KEAZN64/LIN_Driver/coreapi/lin_common_api.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "KEAZN64/LIN_Driver/coreapi/lin_common_api.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

KEAZN64/LIN_Driver/coreapi/lin_common_proto.o: C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_common_proto.c
	@echo 'Building file: $<'
	@echo 'Executing target #5 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@KEAZN64/LIN_Driver/coreapi/lin_common_proto.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "KEAZN64/LIN_Driver/coreapi/lin_common_proto.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

KEAZN64/LIN_Driver/coreapi/lin_j2602_api.o: C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_j2602_api.c
	@echo 'Building file: $<'
	@echo 'Executing target #6 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@KEAZN64/LIN_Driver/coreapi/lin_j2602_api.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "KEAZN64/LIN_Driver/coreapi/lin_j2602_api.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

KEAZN64/LIN_Driver/coreapi/lin_j2602_proto.o: C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_j2602_proto.c
	@echo 'Building file: $<'
	@echo 'Executing target #7 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@KEAZN64/LIN_Driver/coreapi/lin_j2602_proto.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "KEAZN64/LIN_Driver/coreapi/lin_j2602_proto.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

KEAZN64/LIN_Driver/coreapi/lin_lin21_api.o: C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_lin21_api.c
	@echo 'Building file: $<'
	@echo 'Executing target #8 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@KEAZN64/LIN_Driver/coreapi/lin_lin21_api.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "KEAZN64/LIN_Driver/coreapi/lin_lin21_api.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

KEAZN64/LIN_Driver/coreapi/lin_lin21_proto.o: C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/coreapi/lin_lin21_proto.c
	@echo 'Building file: $<'
	@echo 'Executing target #9 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@KEAZN64/LIN_Driver/coreapi/lin_lin21_proto.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "KEAZN64/LIN_Driver/coreapi/lin_lin21_proto.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '



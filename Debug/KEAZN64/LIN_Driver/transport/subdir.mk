################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/transport/lin_commontl_api.c" \
"C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/transport/lin_commontl_proto.c" \
"C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/transport/lin_j2602tl_api.c" \
"C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/transport/lin_lin21tl_api.c" \

C_SRCS += \
C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/transport/lin_commontl_api.c \
C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/transport/lin_commontl_proto.c \
C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/transport/lin_j2602tl_api.c \
C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/transport/lin_lin21tl_api.c \

OBJS_OS_FORMAT += \
./KEAZN64/LIN_Driver/transport/lin_commontl_api.o \
./KEAZN64/LIN_Driver/transport/lin_commontl_proto.o \
./KEAZN64/LIN_Driver/transport/lin_j2602tl_api.o \
./KEAZN64/LIN_Driver/transport/lin_lin21tl_api.o \

C_DEPS_QUOTED += \
"./KEAZN64/LIN_Driver/transport/lin_commontl_api.d" \
"./KEAZN64/LIN_Driver/transport/lin_commontl_proto.d" \
"./KEAZN64/LIN_Driver/transport/lin_j2602tl_api.d" \
"./KEAZN64/LIN_Driver/transport/lin_lin21tl_api.d" \

OBJS += \
./KEAZN64/LIN_Driver/transport/lin_commontl_api.o \
./KEAZN64/LIN_Driver/transport/lin_commontl_proto.o \
./KEAZN64/LIN_Driver/transport/lin_j2602tl_api.o \
./KEAZN64/LIN_Driver/transport/lin_lin21tl_api.o \

OBJS_QUOTED += \
"./KEAZN64/LIN_Driver/transport/lin_commontl_api.o" \
"./KEAZN64/LIN_Driver/transport/lin_commontl_proto.o" \
"./KEAZN64/LIN_Driver/transport/lin_j2602tl_api.o" \
"./KEAZN64/LIN_Driver/transport/lin_lin21tl_api.o" \

C_DEPS += \
./KEAZN64/LIN_Driver/transport/lin_commontl_api.d \
./KEAZN64/LIN_Driver/transport/lin_commontl_proto.d \
./KEAZN64/LIN_Driver/transport/lin_j2602tl_api.d \
./KEAZN64/LIN_Driver/transport/lin_lin21tl_api.d \


# Each subdirectory must supply rules for building sources it contributes
KEAZN64/LIN_Driver/transport/lin_commontl_api.o: C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/transport/lin_commontl_api.c
	@echo 'Building file: $<'
	@echo 'Executing target #12 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@KEAZN64/LIN_Driver/transport/lin_commontl_api.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "KEAZN64/LIN_Driver/transport/lin_commontl_api.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

KEAZN64/LIN_Driver/transport/lin_commontl_proto.o: C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/transport/lin_commontl_proto.c
	@echo 'Building file: $<'
	@echo 'Executing target #13 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@KEAZN64/LIN_Driver/transport/lin_commontl_proto.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "KEAZN64/LIN_Driver/transport/lin_commontl_proto.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

KEAZN64/LIN_Driver/transport/lin_j2602tl_api.o: C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/transport/lin_j2602tl_api.c
	@echo 'Building file: $<'
	@echo 'Executing target #14 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@KEAZN64/LIN_Driver/transport/lin_j2602tl_api.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "KEAZN64/LIN_Driver/transport/lin_j2602tl_api.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

KEAZN64/LIN_Driver/transport/lin_lin21tl_api.o: C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/transport/lin_lin21tl_api.c
	@echo 'Building file: $<'
	@echo 'Executing target #15 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@KEAZN64/LIN_Driver/transport/lin_lin21tl_api.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "KEAZN64/LIN_Driver/transport/lin_lin21tl_api.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '



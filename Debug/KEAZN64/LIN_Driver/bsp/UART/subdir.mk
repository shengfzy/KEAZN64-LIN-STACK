################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/bsp/UART/lin_isr.c" \
"C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/bsp/UART/lin_lld_timesrv.c" \
"C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/bsp/UART/lin_lld_uart.c" \

C_SRCS += \
C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/bsp/UART/lin_isr.c \
C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/bsp/UART/lin_lld_timesrv.c \
C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/bsp/UART/lin_lld_uart.c \

OBJS_OS_FORMAT += \
./KEAZN64/LIN_Driver/bsp/UART/lin_isr.o \
./KEAZN64/LIN_Driver/bsp/UART/lin_lld_timesrv.o \
./KEAZN64/LIN_Driver/bsp/UART/lin_lld_uart.o \

C_DEPS_QUOTED += \
"./KEAZN64/LIN_Driver/bsp/UART/lin_isr.d" \
"./KEAZN64/LIN_Driver/bsp/UART/lin_lld_timesrv.d" \
"./KEAZN64/LIN_Driver/bsp/UART/lin_lld_uart.d" \

OBJS += \
./KEAZN64/LIN_Driver/bsp/UART/lin_isr.o \
./KEAZN64/LIN_Driver/bsp/UART/lin_lld_timesrv.o \
./KEAZN64/LIN_Driver/bsp/UART/lin_lld_uart.o \

OBJS_QUOTED += \
"./KEAZN64/LIN_Driver/bsp/UART/lin_isr.o" \
"./KEAZN64/LIN_Driver/bsp/UART/lin_lld_timesrv.o" \
"./KEAZN64/LIN_Driver/bsp/UART/lin_lld_uart.o" \

C_DEPS += \
./KEAZN64/LIN_Driver/bsp/UART/lin_isr.d \
./KEAZN64/LIN_Driver/bsp/UART/lin_lld_timesrv.d \
./KEAZN64/LIN_Driver/bsp/UART/lin_lld_uart.d \


# Each subdirectory must supply rules for building sources it contributes
KEAZN64/LIN_Driver/bsp/UART/lin_isr.o: C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/bsp/UART/lin_isr.c
	@echo 'Building file: $<'
	@echo 'Executing target #1 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@KEAZN64/LIN_Driver/bsp/UART/lin_isr.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "KEAZN64/LIN_Driver/bsp/UART/lin_isr.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

KEAZN64/LIN_Driver/bsp/UART/lin_lld_timesrv.o: C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/bsp/UART/lin_lld_timesrv.c
	@echo 'Building file: $<'
	@echo 'Executing target #2 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@KEAZN64/LIN_Driver/bsp/UART/lin_lld_timesrv.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "KEAZN64/LIN_Driver/bsp/UART/lin_lld_timesrv.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

KEAZN64/LIN_Driver/bsp/UART/lin_lld_uart.o: C:/NXP/S32DS_ARM_v2018.R1/S32DS/Sample_Drivers_for_KEAxxx_Evaluation_grade/LIN_Driver/bsp/UART/lin_lld_uart.c
	@echo 'Building file: $<'
	@echo 'Executing target #3 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@KEAZN64/LIN_Driver/bsp/UART/lin_lld_uart.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "KEAZN64/LIN_Driver/bsp/UART/lin_lld_uart.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '



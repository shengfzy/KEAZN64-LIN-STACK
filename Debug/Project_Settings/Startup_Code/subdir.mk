################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS_QUOTED += \
"../Project_Settings/Startup_Code/startup_SKEAZN642.S" \

C_SRCS_QUOTED += \
"../Project_Settings/Startup_Code/system_SKEAZN642.c" \

S_UPPER_SRCS += \
../Project_Settings/Startup_Code/startup_SKEAZN642.S \

C_SRCS += \
../Project_Settings/Startup_Code/system_SKEAZN642.c \

OBJS_OS_FORMAT += \
./Project_Settings/Startup_Code/startup_SKEAZN642.o \
./Project_Settings/Startup_Code/system_SKEAZN642.o \

C_DEPS_QUOTED += \
"./Project_Settings/Startup_Code/system_SKEAZN642.d" \

OBJS += \
./Project_Settings/Startup_Code/startup_SKEAZN642.o \
./Project_Settings/Startup_Code/system_SKEAZN642.o \

OBJS_QUOTED += \
"./Project_Settings/Startup_Code/startup_SKEAZN642.o" \
"./Project_Settings/Startup_Code/system_SKEAZN642.o" \

C_DEPS += \
./Project_Settings/Startup_Code/system_SKEAZN642.d \


# Each subdirectory must supply rules for building sources it contributes
Project_Settings/Startup_Code/startup_SKEAZN642.o: ../Project_Settings/Startup_Code/startup_SKEAZN642.S
	@echo 'Building file: $<'
	@echo 'Executing target #34 $<'
	@echo 'Invoking: Standard S32DS Assembler'
	arm-none-eabi-gcc "@Project_Settings/Startup_Code/startup_SKEAZN642.args" -o "Project_Settings/Startup_Code/startup_SKEAZN642.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Project_Settings/Startup_Code/system_SKEAZN642.o: ../Project_Settings/Startup_Code/system_SKEAZN642.c
	@echo 'Building file: $<'
	@echo 'Executing target #35 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Project_Settings/Startup_Code/system_SKEAZN642.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "Project_Settings/Startup_Code/system_SKEAZN642.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '



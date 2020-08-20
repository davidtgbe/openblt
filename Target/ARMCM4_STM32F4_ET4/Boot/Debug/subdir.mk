################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../startup_stm32f407xx.s 

C_SRCS += \
../hooks.c \
../led.c \
../main.c \
../utils.c 

OBJS += \
./hooks.o \
./led.o \
./main.o \
./startup_stm32f407xx.o \
./utils.o 

S_DEPS += \
./startup_stm32f407xx.d 

C_DEPS += \
./hooks.d \
./led.d \
./main.d \
./utils.d 


# Each subdirectory must supply rules for building sources it contributes
hooks.o: ../hooks.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/fatfs" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/ARMCM4_STM32F4" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/fatfs/src" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/uip" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/apps/dhcpc" -Og -ffunction-sections -fdata-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"hooks.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
led.o: ../led.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/fatfs" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/ARMCM4_STM32F4" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/fatfs/src" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/uip" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/apps/dhcpc" -Og -ffunction-sections -fdata-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"led.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
main.o: ../main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/fatfs" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/ARMCM4_STM32F4" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/fatfs/src" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/uip" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/apps/dhcpc" -Og -ffunction-sections -fdata-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
startup_stm32f407xx.o: ../startup_stm32f407xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"startup_stm32f407xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
utils.o: ../utils.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/fatfs" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/ARMCM4_STM32F4" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/fatfs/src" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/uip" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/apps/dhcpc" -Og -ffunction-sections -fdata-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"utils.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


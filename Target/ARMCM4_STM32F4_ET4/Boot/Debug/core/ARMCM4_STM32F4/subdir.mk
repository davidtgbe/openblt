################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/Source/ARMCM4_STM32F4/can.c \
D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/Source/ARMCM4_STM32F4/cpu.c \
D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/Source/ARMCM4_STM32F4/flash.c \
D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/Source/ARMCM4_STM32F4/nvm.c \
D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/Source/ARMCM4_STM32F4/rs232.c \
D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/Source/ARMCM4_STM32F4/timer.c \
D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/Source/ARMCM4_STM32F4/usb.c 

OBJS += \
./core/ARMCM4_STM32F4/can.o \
./core/ARMCM4_STM32F4/cpu.o \
./core/ARMCM4_STM32F4/flash.o \
./core/ARMCM4_STM32F4/nvm.o \
./core/ARMCM4_STM32F4/rs232.o \
./core/ARMCM4_STM32F4/timer.o \
./core/ARMCM4_STM32F4/usb.o 

C_DEPS += \
./core/ARMCM4_STM32F4/can.d \
./core/ARMCM4_STM32F4/cpu.d \
./core/ARMCM4_STM32F4/flash.d \
./core/ARMCM4_STM32F4/nvm.d \
./core/ARMCM4_STM32F4/rs232.d \
./core/ARMCM4_STM32F4/timer.d \
./core/ARMCM4_STM32F4/usb.d 


# Each subdirectory must supply rules for building sources it contributes
core/ARMCM4_STM32F4/can.o: D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/Source/ARMCM4_STM32F4/can.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/fatfs" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/ARMCM4_STM32F4" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/fatfs/src" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/uip" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/apps/dhcpc" -Og -ffunction-sections -fdata-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"core/ARMCM4_STM32F4/can.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
core/ARMCM4_STM32F4/cpu.o: D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/Source/ARMCM4_STM32F4/cpu.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/fatfs" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/ARMCM4_STM32F4" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/fatfs/src" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/uip" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/apps/dhcpc" -Og -ffunction-sections -fdata-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"core/ARMCM4_STM32F4/cpu.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
core/ARMCM4_STM32F4/flash.o: D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/Source/ARMCM4_STM32F4/flash.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/fatfs" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/ARMCM4_STM32F4" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/fatfs/src" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/uip" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/apps/dhcpc" -Og -ffunction-sections -fdata-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"core/ARMCM4_STM32F4/flash.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
core/ARMCM4_STM32F4/nvm.o: D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/Source/ARMCM4_STM32F4/nvm.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/fatfs" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/ARMCM4_STM32F4" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/fatfs/src" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/uip" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/apps/dhcpc" -Og -ffunction-sections -fdata-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"core/ARMCM4_STM32F4/nvm.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
core/ARMCM4_STM32F4/rs232.o: D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/Source/ARMCM4_STM32F4/rs232.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/fatfs" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/ARMCM4_STM32F4" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/fatfs/src" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/uip" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/apps/dhcpc" -Og -ffunction-sections -fdata-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"core/ARMCM4_STM32F4/rs232.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
core/ARMCM4_STM32F4/timer.o: D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/Source/ARMCM4_STM32F4/timer.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/fatfs" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/ARMCM4_STM32F4" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/fatfs/src" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/uip" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/apps/dhcpc" -Og -ffunction-sections -fdata-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"core/ARMCM4_STM32F4/timer.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
core/ARMCM4_STM32F4/usb.o: D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/Source/ARMCM4_STM32F4/usb.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/fatfs" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/ARMCM4_STM32F4" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/fatfs/src" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/uip" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/apps/dhcpc" -Og -ffunction-sections -fdata-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"core/ARMCM4_STM32F4/usb.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


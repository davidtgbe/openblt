################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/fatfs/bsp_driver_sd.c \
../lib/fatfs/mmc.c \
../lib/fatfs/sd_diskio.c 

OBJS += \
./lib/fatfs/bsp_driver_sd.o \
./lib/fatfs/mmc.o \
./lib/fatfs/sd_diskio.o 

C_DEPS += \
./lib/fatfs/bsp_driver_sd.d \
./lib/fatfs/mmc.d \
./lib/fatfs/sd_diskio.d 


# Each subdirectory must supply rules for building sources it contributes
lib/fatfs/bsp_driver_sd.o: ../lib/fatfs/bsp_driver_sd.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/fatfs" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/ARMCM4_STM32F4" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/fatfs/src" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/uip" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/apps/dhcpc" -Og -ffunction-sections -fdata-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"lib/fatfs/bsp_driver_sd.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lib/fatfs/mmc.o: ../lib/fatfs/mmc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/fatfs" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/ARMCM4_STM32F4" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/fatfs/src" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/uip" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/apps/dhcpc" -Og -ffunction-sections -fdata-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"lib/fatfs/mmc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lib/fatfs/sd_diskio.o: ../lib/fatfs/sd_diskio.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/CMSIS/Include" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/lib/fatfs" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/ARMCM4_STM32F4" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/fatfs/src" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/uip" -I"D:/Bibliotecas/Documents/ET4/openblt-davidtgbe/Target/ARMCM4_STM32F4_ET4/Boot/../../Source/third_party/uip/apps/dhcpc" -Og -ffunction-sections -fdata-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"lib/fatfs/sd_diskio.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

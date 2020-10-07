/**
 * Marlin 3D Printer Firmware
 * Copyright (c) 2020 MarlinFirmware [https://github.com/MarlinFirmware/Marlin]
 *
 * Based on Sprinter and grbl.
 * Copyright (c) 2011 Camiel Gubbels / Erik van der Zalm
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *
 */
#pragma once

#include "stm32f4xx_hal.h"

#ifndef LCD_READ_ID
  #define LCD_READ_ID	0x04   // Read display identification information (0xD3 on ILI9341)
#endif
#ifndef LCD_READ_ID4
  #define LCD_READ_ID4	0xD3   // Read display identification information (0xD3 on ILI9341)
#endif

#define TFT_IO 							TFT_FSMC
#define FSMC_BANK1_1     				(0x60000000U)
#define __IS_DMA_ENABLED(__HANDLE__)	((__HANDLE__)->Instance->CR & DMA_SxCR_EN)
#define FSMC_RS(A)						(void *)((2 << (A-1)) - 1)

typedef struct {
  __IO uint8_t REG;
  __IO uint8_t RAM;
} LCD_CONTROLLER_TypeDef;

class TFT_FSMC {
  private:
    static SRAM_HandleTypeDef SRAMx;
    static DMA_HandleTypeDef DMAtx;

    static LCD_CONTROLLER_TypeDef *LCD;

    static uint32_t ReadID(uint8_t Reg);
    static void Transmit(uint8_t Data) { LCD->RAM = Data; __DSB(); }
    static void TransmitDMA(uint32_t MemoryIncrease, uint16_t *Data, uint16_t Count);

  public:
    static void Init();
    static uint32_t GetID();
    static bool isBusy();
    static void Abort() { __HAL_DMA_DISABLE(&DMAtx); }

    static void WriteData(uint8_t Data) { Transmit(Data); }
    static void WriteReg(uint8_t Reg) { LCD->REG = Reg; __DSB(); }

    static void WriteSequence(uint16_t *Data, uint16_t Count) { TransmitDMA(DMA_PINC_ENABLE, Data, Count); }
    static void WriteMultiple(uint16_t Color, uint16_t Count) { static uint16_t Data; Data = Color; TransmitDMA(DMA_PINC_DISABLE, &Data, Count); }
};

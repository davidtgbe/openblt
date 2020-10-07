/**
 * Author: David Terán Garrido
 * e-mail: davidtgbe@hotmail.com
 *
 * Based on Marlin 3D Printer Firmware
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

#include "tft_fsmc.h"

SRAM_HandleTypeDef TFT_FSMC::SRAMx;
DMA_HandleTypeDef TFT_FSMC::DMAtx;
LCD_CONTROLLER_TypeDef *TFT_FSMC::LCD;

void TFT_FSMC::Init() {

	  /** FSMC GPIO Configuration
	  PE7   ------> FSMC_D4
	  PE8   ------> FSMC_D5
	  PE9   ------> FSMC_D6
	  PE10   ------> FSMC_D7
	  PD13   ------> FSMC_A18
	  PD14   ------> FSMC_D0
	  PD15   ------> FSMC_D1
	  PD0   ------> FSMC_D2
	  PD1   ------> FSMC_D3
	  PD4   ------> FSMC_NOE
	  PD5   ------> FSMC_NWE
	  PD7   ------> FSMC_NE1
	  */

  uint32_t controllerAddress;

  FSMC_NORSRAM_TimingTypeDef Timing, ExtTiming;

  /** Perform the SRAM1 memory initialization sequence
  */
  SRAMx.Instance = FSMC_NORSRAM_DEVICE;
  SRAMx.Extended = FSMC_NORSRAM_EXTENDED_DEVICE;
  /* SRAMx.Init */
  SRAMx.Init.NSBank = FSMC_NORSRAM_BANK1;//NSBank;
  SRAMx.Init.DataAddressMux = FSMC_DATA_ADDRESS_MUX_DISABLE;
  SRAMx.Init.MemoryType = FSMC_MEMORY_TYPE_SRAM;
  SRAMx.Init.MemoryDataWidth = FSMC_NORSRAM_MEM_BUS_WIDTH_8;
  SRAMx.Init.BurstAccessMode = FSMC_BURST_ACCESS_MODE_DISABLE;
  SRAMx.Init.WaitSignalPolarity = FSMC_WAIT_SIGNAL_POLARITY_LOW;
  SRAMx.Init.WrapMode = FSMC_WRAP_MODE_DISABLE;
  SRAMx.Init.WaitSignalActive = FSMC_WAIT_TIMING_BEFORE_WS;
  SRAMx.Init.WriteOperation = FSMC_WRITE_OPERATION_ENABLE;
  SRAMx.Init.WaitSignal = FSMC_WAIT_SIGNAL_DISABLE;
  SRAMx.Init.ExtendedMode = FSMC_EXTENDED_MODE_ENABLE;
  SRAMx.Init.AsynchronousWait = FSMC_ASYNCHRONOUS_WAIT_DISABLE;
  SRAMx.Init.WriteBurst = FSMC_WRITE_BURST_DISABLE;
  SRAMx.Init.PageSize = FSMC_PAGE_SIZE_NONE;
/* Read Timing - relatively slow to ensure ID information is correctly read from TFT controller */
/* Can be decreases from 15-15-24 to 4-4-8 with risk of stability loss */
  Timing.AddressSetupTime = 15;
  Timing.AddressHoldTime = 15;
  Timing.DataSetupTime = 24;
  Timing.BusTurnAroundDuration = 0;
  Timing.CLKDivision = 0;
  Timing.DataLatency = 0;
  Timing.AccessMode = FSMC_ACCESS_MODE_A;
/* Write Timing */
/* Can be decreases from 8-15-8 to 0-0-1 with risk of stability loss */
  ExtTiming.AddressSetupTime = 8;
  ExtTiming.AddressHoldTime = 15;
  ExtTiming.DataSetupTime = 8;
  ExtTiming.BusTurnAroundDuration = 0;
  ExtTiming.CLKDivision = 0;
  ExtTiming.DataLatency = 0;
  ExtTiming.AccessMode = FSMC_ACCESS_MODE_A;

  __HAL_RCC_FSMC_CLK_ENABLE();

  GPIO_InitTypeDef GPIO_InitStruct ={0};
  GPIO_InitStruct.Pin = GPIO_PIN_7|GPIO_PIN_8|GPIO_PIN_9|GPIO_PIN_10;
  GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
  GPIO_InitStruct.Alternate = GPIO_AF12_FSMC;
  HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);

  GPIO_InitStruct.Pin = GPIO_PIN_6;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
  HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);

  GPIO_InitStruct.Pin = GPIO_PIN_13|GPIO_PIN_14|GPIO_PIN_15|GPIO_PIN_0
                          |GPIO_PIN_1|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_7;
  GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
  GPIO_InitStruct.Alternate = GPIO_AF12_FSMC;
  HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

  HAL_GPIO_WritePin(GPIOE, GPIO_PIN_6, GPIO_PIN_RESET);
  HAL_Delay(100);
  HAL_GPIO_WritePin(GPIOE, GPIO_PIN_6, GPIO_PIN_SET);
  HAL_Delay(100);

  HAL_SRAM_Init(&SRAMx, &Timing, &ExtTiming);

  controllerAddress = FSMC_BANK1_1 | (uint32_t) FSMC_RS(18);
  LCD = (LCD_CONTROLLER_TypeDef *)controllerAddress;
}

uint32_t TFT_FSMC::GetID() {
  uint32_t id;
  WriteReg(0x00);
  id = LCD->RAM;
  if (id == 0)
    id = ReadID(LCD_READ_ID);
  if ((id & 0xFFFF) == 0 || (id & 0xFFFF) == 0xFFFF)
    id = ReadID(LCD_READ_ID4);
  return id;
}
uint32_t TFT_FSMC::ReadID(uint8_t Reg) {
  uint32_t id;
  WriteReg(Reg);
  id = LCD->RAM; // dummy read
  id = Reg << 24;
  id |= LCD->RAM  << 16;
  id |= LCD->RAM << 8;
  id |= LCD->RAM;
  return id;
}

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

#pragma once

#include <stdint.h>
#include "tft_fsmc.h"
#include "tft_color.h"

#define ST7789          0x8552
#define ST7796          0x7796

#define ESC_REG(x)		0xFFFF, 0x00FF & (uint16_t)x
#define ESC_DELAY(x)    0xFFFF, 0x8000 | (x & 0x7FFF)
#define ESC_END         0xFFFF, 0x7FFF
#define ESC_FFFF        0xFFFF, 0xFFFF

#define littleBIG(color) ((color >> 8) | (color << 8))

#define swap(a, b) { int16_t t = a; a = b; b = t; }
#define pgm_read_byte(addr) (*(const unsigned char *)(addr))
#define min(a,b) (((a)<(b))?(a):(b))

enum TextOptions {
	None = 1 << 0,
	Clip = 1 << 1,
	ClearLineToEnd = 1 << 2
};

struct ScreenCoordinates {
	uint16_t x, y;
};

class TFT {
  private:
    static uint32_t lcd_id;
    static TFT_FSMC io;
    static uint32_t pixel_count;
  public:
    static uint16_t width, height;

    static void init();
    static void set_resolution(uint16_t width, uint16_t height) { TFT::width = width; TFT::height = height; pixel_count = width*height; } ;
    static void set_window(uint16_t Xmin, uint16_t Ymin, uint16_t Xmax, uint16_t Ymax);
    static void write_esc_sequence(const uint16_t *Sequence);
    static void set_background(uint16_t color);
    static void draw_pixel(uint16_t x, uint16_t y, uint16_t color);
    static void print_image(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint8_t *data, uint32_t size);
    static inline void print_image(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint8_t *data) { print_image(x, y, w, h, data, sizeof(data)/sizeof(data[0])); };
    static void fill_rect(unsigned int x0,unsigned int y0, unsigned int x1,unsigned int y1, uint16_t color);
    static void draw_char(int16_t x, int16_t y, unsigned char c, uint16_t color, uint16_t bg, uint8_t size);
    static ScreenCoordinates print_text(char text[], int16_t x, int16_t y, uint16_t color, uint16_t bg, uint8_t size);
    static ScreenCoordinates print_text(char text[], int16_t x, int16_t y, uint16_t color, uint16_t bg, uint8_t size, TextOptions opt);

};

extern TFT tft;

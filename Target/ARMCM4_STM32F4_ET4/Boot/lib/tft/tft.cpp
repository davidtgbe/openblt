/**
 * Author: David Terán Garrido
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

#include "tft.h"
#include "st7789v.h"
#include "st7796s.h"
#include "fonts.h"

uint32_t TFT::lcd_id = 0xFFFFFFFF;
uint32_t TFT::pixel_count = 0;
uint16_t TFT::width = 0;
uint16_t TFT::height = 0;

static bool cp437 = false;

void TFT::init() {
  if (lcd_id != 0xFFFFFFFF) return;

  io.Init();

  lcd_id = io.GetID() & 0xFFFF;

  switch (lcd_id) {
	case ST7796:    // ST7796S    480x320
	  TFT::set_resolution(480, 320);
	  write_esc_sequence(st7796s_init);
	  break;
	case ST7789:    // ST7789V    320x240
      TFT::set_resolution(320, 240);
	  write_esc_sequence(st7789v_init);
	  break;
	default:
	  lcd_id = 0;
  }
}

void TFT::set_window(uint16_t Xmin, uint16_t Ymin, uint16_t Xmax, uint16_t Ymax) {
  #ifdef OFFSET_X
    Xmin += OFFSET_X; Xmax += OFFSET_X;
  #endif
  #ifdef OFFSET_Y
    Ymin += OFFSET_Y; Ymax += OFFSET_Y;
  #endif

  // CASET: Column Address Set
  io.WriteReg(ST7789V_CASET);
  io.WriteData(Xmin >> 8);
  io.WriteData(Xmin & 0xFF);
  io.WriteData(Xmax >> 8);
  io.WriteData(Xmax & 0xFF);

  // RASET: Row Address Set
  io.WriteReg(ST7789V_RASET);
  io.WriteData(Ymin >> 8);
  io.WriteData(Ymin & 0xFF);
  io.WriteData(Ymax >> 8);
  io.WriteData(Ymax & 0xFF);

  // RAMWR: Memory Write
  io.WriteReg(ST7789V_RAMWR);
}

void TFT::write_esc_sequence(const uint16_t *Sequence) {
	uint16_t data;

  for (;;) {
    data = *Sequence++;
    if (data != 0xFFFF) {
      io.WriteData(data);
      continue;
    }
    data = *Sequence++;
    if (data == 0x7FFF) return;
    if (data == 0xFFFF)
      io.WriteData(0xFF);
    else if (data & 0x8000)
      HAL_Delay(data & 0x7FFF);
    else if ((data & 0xFF00) == 0)
      io.WriteReg(data);
  }
}

void TFT::draw_pixel(uint16_t x, uint16_t y, uint16_t color) {
	set_window(x, y, x, y);
	io.WriteData(color>>8);
	io.WriteData(color&0xFF);
}

void TFT::print_image(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint8_t *data, uint32_t size)
{
	uint32_t n = size;
	set_window(x, y, w+x-1, h+y-1);
	for(uint32_t i=0; i<n ; i++)
	{
		io.WriteData(data[i]);
	}
}

void TFT::fill_rect(unsigned int x0,unsigned int y0, unsigned int x1,unsigned int y1, uint16_t color) {
	uint32_t n = ((x1+1)-x0)*((y1+1)-y0);
	if (n> pixel_count) n= pixel_count;
	set_window(x0, y0, x1, y1);
	while (n) {
		n--;
		io.WriteData(color>>8);
		io.WriteData(color&0xff);
	}
}

void TFT::draw_char(int16_t x, int16_t y, unsigned char c, uint16_t color, uint16_t bg, uint8_t size)
{
	if((x >= width)          || // Clip right
     (y >= height)           || // Clip bottom
     ((x + 6 * size - 1) < 0) 	 || // Clip left
     ((y + 8 * size - 1) < 0))      // Clip top
    return;

  if(!cp437 && (c >= 176)) c++; // Handle 'classic' charset behavior

  for (int8_t i=0; i<6; i++ ) {
    uint8_t line;
    if (i == 5)
      line = 0x0;
    else
      line = pgm_read_byte(font1+(c*5)+i);
    for (int8_t j = 0; j<8; j++) {
      if (line & 0x1) {
        if (size == 1) // default size
          draw_pixel(x+i, y+j, color);
        else {  // big size
          fill_rect(x+(i*size), y+(j*size), size + x+(i*size), size+1 + y+(j*size), color);
        }
      } else if (bg != color) {
        if (size == 1) // default size
          draw_pixel(x+i, y+j, bg);
        else {  // big size
          fill_rect(x+i*size, y+j*size, size + x+i*size, size+1 + y+j*size, bg);
        }
      }
      line >>= 1;
    }
  }
}

ScreenCoordinates TFT::print_text(char text[], int16_t x, int16_t y, uint16_t color, uint16_t bg, uint8_t size)
{
	return print_text(text, x, y, color, bg, size, None);
}

ScreenCoordinates TFT::print_text(char text[], int16_t x, int16_t y, uint16_t color, uint16_t bg, uint8_t size, TextOptions opt)
{
	uint16_t x_offset, y_offset;
    uint16_t curr_x = x;
    uint16_t curr_y = y;
    ScreenCoordinates last_position;

	x_offset = size*6;
	y_offset = size*8;

	while(*text != '\0')
	{
	    if ( (curr_x + x_offset > width) )  {
	    	if(opt & Clip) { break; }
	    	curr_x = 0;
	    	curr_y += y_offset;
	    }

	    if ( (curr_y + y_offset > height) ) {
	    	if(opt & Clip) { break; }
	    	curr_y += 0;
	    }

	    if(*text == '\r') {
	    	curr_x = 0;
	    }
	    else if (*text == '\n') {
	    	if(opt & ClearLineToEnd) {
	    		fill_rect(curr_x, curr_y, width, curr_y + size*8, bg);
	    	}
	    	curr_y += y_offset;
	    }
	    else {
	    	TFT::draw_char(curr_x, curr_y, *text, color, bg, size);
	    	curr_x += x_offset; // next char position
	    }

	    ++text;	// next char
	}

	if(opt & ClearLineToEnd) {
		fill_rect(curr_x, curr_y, width, curr_y + size*8, bg);
	}

	last_position.x = curr_x;
	last_position.y = curr_y;

	return last_position;
}

void TFT::set_background(uint16_t color) {
	uint32_t n = pixel_count;

	int rotationNum = 1; //Change this to reflect global orientation

	if(rotationNum==1 || rotationNum==3)
	{
		set_window(0, 0, width -1, height -1);
	}
	else if(rotationNum==2 || rotationNum==4)
	{
		set_window(0, 0, height -1, width -1);
	}

	while (n) {
		n--;
        io.WriteData(color>>8);
        io.WriteData(color&0xff);
	}
}

TFT tft;

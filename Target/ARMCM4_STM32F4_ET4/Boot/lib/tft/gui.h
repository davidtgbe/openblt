/**
 * Author: David Terán Garrido
 * e-mail: davidtgbe@hotmail.com
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

#ifndef LIB_TFT_GUI_H_
#define LIB_TFT_GUI_H_

#include "tft.h"

#define font_size 			1
#define font_width  		6
#define font_height 		8

#define y_offset 			font_size * font_height
#define x_offset 			font_size * font_width

#define bg_color 			COLOR_BLACK
#define fg_color 			COLOR_WHITE

#define max_log_lines 		11
#define max_status_lines 	3

#define status_area_height 	max_status_lines * y_offset
#define log_area_height 	max_log_lines * y_offset

enum bl_status { uninitialized, dfu, idle, usb_updating, sd_updating };

class GUI {
private:
  static TFT _tft;
  static uint16_t curr_x, curr_y;
  static bl_status current_bl_status;

  static const char* get_status_text(bl_status mode);
public:
  static void init();
  static void print_update_process(char text[]);
  static void print_bl_mode(bl_status mode);
  static void set_start_bl_screen();
};

extern GUI gui;

#endif /* LIB_TFT_GUI_H_ */

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
#include <string.h>
#include "gui.h"
#include "tft.h"
#include "texts.h"
#include "images.h"

bl_status GUI::current_bl_status = uninitialized;
uint16_t GUI::curr_x = 0;
uint16_t GUI::curr_y = 0;

void GUI::print_update_process(char text[]) {

	ScreenCoordinates last_position;

	if(curr_y > log_area_height) {
		curr_y = 0;
	}

	last_position = tft.print_text(text, curr_x, curr_y, fg_color, bg_color, font_size, ClearLineToEnd);

	curr_x = last_position.x;
	curr_y = last_position.y;
}

void GUI::print_bl_mode(bl_status mode) {

	init();

	if(mode == current_bl_status) { return; }
	else {
		curr_x = 0;
		curr_y = 0;
	}

	const char* msg = get_status_text(mode);

	tft.fill_rect(0, 0, tft.width, log_area_height, bg_color);
	tft.fill_rect(0, tft.height - status_area_height, tft.width, tft.height, bg_color);
	tft.print_text((char*)msg, 0, tft.height - status_area_height, fg_color, bg_color, font_size, None);

	current_bl_status = mode;
}

const char* GUI::get_status_text(bl_status mode) {
	switch(mode)
	{
		case dfu : return DFU_MODE; break;
		case usb_updating : return USB_UPDATING; break;
		case sd_updating : return SD_UPDATING; break;
		case idle : return IDLE; break;
		default : return "";
	}
}

void GUI::set_start_bl_screen() {

	uint8_t logo_padding_right = 70;
	uint8_t url_width = x_offset * (strlen(URL) + 1);

	ScreenCoordinates logo_position, url_position;

	url_position.x = tft.width - url_width;
	logo_position.x = tft.width - Logo.width - logo_padding_right;

	url_position.x = (url_position.x < logo_position.x) ? url_position.x : logo_position.x;
	logo_position.x = url_position.x;

	logo_position.y = tft.height/2 - Logo.height/2;
	url_position.y = logo_position.y + Logo.height + font_height;

	tft.set_background(bg_color);
	tft.print_image(logo_position.x, logo_position.y, 150, 38, Logo.data, Logo.dataSize);
	tft.print_text((char*)URL, url_position.x, url_position.y, COLOR_ORANGE2, bg_color, font_size, ClearLineToEnd);
}


void GUI::init(){

	if (current_bl_status != uninitialized) { return; }

	tft.init();
	set_start_bl_screen();
}

GUI gui;

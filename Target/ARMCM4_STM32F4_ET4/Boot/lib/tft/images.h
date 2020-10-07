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

#ifndef LIB_TFT_IMAGES_H_
#define LIB_TFT_IMAGES_H_

typedef struct {
     const uint8_t *data;
     uint16_t width;
     uint16_t height;
     uint32_t dataSize;
     } tImage;

extern const tImage Logo;

#endif /* LIB_TFT_IMAGES_H_ */

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

// Macros to support option testing
#define _CAT(a,V...) a##V
#define CAT(a,V...) _CAT(a,V)

#define _ISENA_     ~,1
#define _ISENA_1    ~,1
#define _ISENA_0x1  ~,1
#define _ISENA_true ~,1
#define _ISENA(V...)        IS_PROBE(V)

#define _ENA_1(O)           _ISENA(CAT(_IS,CAT(ENA_, O)))
#define _DIS_1(O)           NOT(_ENA_1(O))
#define ENABLED(V...)       DO(ENA,&&,V)
#define DISABLED(V...)      DO(DIS,&&,V)

#define TERN(O,A,B)         _TERN(_ENA_1(O),B,A)    // OPTION converted to '0' or '1'
#define TERN0(O,A)          _TERN(_ENA_1(O),0,A)    // OPTION converted to A or '0'
#define TERN1(O,A)          _TERN(_ENA_1(O),1,A)    // OPTION converted to A or '1'
#define TERN_(O,A)          _TERN(_ENA_1(O),,A)     // OPTION converted to A or '<nul>'
#define _TERN(E,V...)       __TERN(_CAT(T_,E),V)    // Prepend 'T_' to get 'T_0' or 'T_1'
#define __TERN(T,V...)      ___TERN(_CAT(_NO,T),V)  // Prepend '_NO' to get '_NOT_0' or '_NOT_1'
#define ___TERN(P,V...)     THIRD(P,V)              // If first argument has a comma, A. Else B.

#define FIRST(a,...)     a
#define SECOND(a,b,...)  b
#define THIRD(a,b,c,...) c

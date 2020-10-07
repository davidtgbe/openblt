/*
 * touch.c
 *
 *  Created on: Sep 28, 2020
 *      Author: terand
 */

#include "boot.h"

void TouchInit(void)
{
#if (BOOT_TOUCH_HOOKS_ENABLE > 0)
	TouchPressedHook();
#endif
}

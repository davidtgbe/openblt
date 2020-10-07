/*
 * touch.h
 *
 *  Created on: Sep 28, 2020
 *      Author: terand
 */

#ifndef TOUCH_H_
#define TOUCH_H_

#ifdef __cplusplus
 extern "C" {
#endif

void TouchInit(void);

#if (BOOT_TOUCH_HOOKS_ENABLE > 0)

extern void TouchPressedHook(void);

#endif

#ifdef __cplusplus
}
#endif

#endif /* TOUCH_H_ */

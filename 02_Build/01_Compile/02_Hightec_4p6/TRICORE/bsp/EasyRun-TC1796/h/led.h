#ifndef __EASYRUN_LED_H__
#define __EASYRUN_LED_H__
/*====================================================================
* Project:  Board Support Package (BSP)
* Developed using:
* Function: LEDs on EasyRun-TC1796
*
* Copyright HighTec EDV-Systeme GmbH 1982-2007
*====================================================================*/

#ifdef __cplusplus
  extern "C" {
#endif /* __cplusplus */

/*
 *	number of available LEDs
 */
#define MAX_LED			0


#define LED_ON
#define LED_OFF


#ifdef LED_GREEN
static inline void LEDON(int nr)
{
}

static inline void LEDOFF(int nr)
{
}

static inline void LEDTOGGLE(int nr)
{
}
#endif /* LED_GREEN */


static void InitLED(void)
{
}

#ifdef __cplusplus
  }
#endif /* __cplusplus */

#endif /* __EASYRUN_LED_H__ */

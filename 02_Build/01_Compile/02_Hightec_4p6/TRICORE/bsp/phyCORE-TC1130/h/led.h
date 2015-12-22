#ifndef __TRICORE_LED_H__
#define __TRICORE_LED_H__
/*====================================================================
* Project: Board Support Package (BSP)
* Developed using:
* Function: LEDs on phyCORE-TC1130
*
* Copyright HighTec EDV-Systeme GmbH 1982-2006
*====================================================================*/

#ifdef __cplusplus
  extern "C" {
#endif /* __cplusplus */

/*
 *	number of available LEDs
 */
#define MAX_LED			1

/* phyCORE-TC1130.100 : P2.11  --> LED D3 */

#include <tc1130b/port-struct.h>

static PORT_t *portLED = (PORT_t *) P2_BASE;

#define LED_PIN_NR	11
#define LED_PIN		P11

#define LED_ON		(portLED->OUT.bits.LED_PIN = 0)
#define LED_OFF		(portLED->OUT.bits.LED_PIN = 1)


#ifdef LED_GREEN
static __inline__ void LEDON(int nr)
{
	portLED->OUT.reg &= ~(1<<(nr+LED_PIN_NR));
}

static __inline__ void LEDOFF(int nr)
{
	portLED->OUT.reg |= (1<<(nr+LED_PIN_NR));
}

static __inline__ void LEDTOGGLE(int nr)
{
	portLED->OUT.reg ^= (1<<(nr+LED_PIN_NR));
}
#endif /* LED_GREEN */


static __inline__ void InitLED(void)
{
	portLED->DIR.reg |= (1<<LED_PIN_NR);
	LED_OFF;
}

#ifdef __cplusplus
  }
#endif /* __cplusplus */

#endif /* __TRICORE_LED_H__ */

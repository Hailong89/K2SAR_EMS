#ifndef __TRICORE_LED_H__
#define __TRICORE_LED_H__
/*====================================================================
* Project: Board Support Package (BSP)
* Developed using:
* Function: LEDs on TriBoard-TC1162
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

/* TriBoard TC1162 : P1.0 --> LED D401 */

#include <tc1162/port1-struct.h>

static PORT1_t *portLED = (PORT1_t *) P1_BASE;

#define LED_PIN_NR	0

#define LED_ON		(portLED->OMR.bits.PR0 = 1)
#define LED_OFF		(portLED->OMR.bits.PS0 = 1)


#ifdef LED_GREEN
static inline void LEDON(int nr)
{
	portLED->OMR.reg = ((1<<(nr+LED_PIN_NR))<<16);
}

static inline void LEDOFF(int nr)
{
	portLED->OMR.reg = (1<<(nr+LED_PIN_NR));
}

static inline void LEDTOGGLE(int nr)
{
	portLED->OMR.reg = ((1<<(nr+LED_PIN_NR))<<16) | (1<<(nr+LED_PIN_NR));
}
#endif /* LED_GREEN */


static void InitLED(void)
{
	/* initialize PORT1.0 */
	portLED->IOCR0.bits.PC0 = 0x8;	/* OUT_PPGPIO */
	LED_OFF;
}

#ifdef __cplusplus
  }
#endif /* __cplusplus */

#endif /* __TRICORE_LED_H__ */

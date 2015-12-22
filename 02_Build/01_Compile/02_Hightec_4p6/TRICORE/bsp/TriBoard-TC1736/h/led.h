#ifndef __TRICORE_LED_H__
#define __TRICORE_LED_H__
/*====================================================================
* Project: Board Support Package (BSP)
* Developed using:
* Function: LEDs on TriBoard-TC1736
*
* Copyright HighTec EDV-Systeme GmbH 1982-2008
*====================================================================*/

#ifdef __cplusplus
  extern "C" {
#endif /* __cplusplus */

/*
 *	number of available LEDs
 */
#define MAX_LED			2

/* TriBoard-TC1736 : P5.8 ... P5.15 --> LED D101 ... D108 */

#include <tc1736/port5-struct.h>

static PORT5_t *portLED = (PORT5_t *) P5_BASE;

#define LED_PIN_NR	8

#define LED_ON		(portLED->OMR.bits.PR8 = 1)
#define LED_OFF		(portLED->OMR.bits.PS8 = 1)


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
	/* initialise P5.8, P5.9 */
	portLED->IOCR8.bits.PC0 = 0x8;	/* OUT_PPGPIO */
	portLED->IOCR8.bits.PC1 = 0x8;	/* OUT_PPGPIO */
	portLED->OMR.bits.PS8 = 1;
	portLED->OMR.bits.PS9 = 1;
}

#ifdef __cplusplus
  }
#endif /* __cplusplus */

#endif /* __TRICORE_LED_H__ */

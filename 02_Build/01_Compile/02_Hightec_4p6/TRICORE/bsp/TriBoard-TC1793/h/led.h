#ifndef __TRICORE_LED_H__
#define __TRICORE_LED_H__
/*====================================================================
* Project:  Board Support Package (BSP)
* Developed using:
* Function: LEDs on TriBoard-TC1793
*
* Copyright HighTec EDV-Systeme GmbH 1982-2010
*====================================================================*/

#ifdef __cplusplus
  extern "C" {
#endif /* __cplusplus */

/*
 *	number of available LEDs
 */
#define MAX_LED			2

/* TriBoard TC1793 : P3.0 ... P3.7 --> LED D601 ... D608 */

#include <tc1793/port3-struct.h>

static PORT3_t *portLED = (PORT3_t *) P3_BASE;

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
	/* initialize P3.0, P3.1 */
	portLED->IOCR0.bits.PC0 = 0x8;	/* OUT_PPGPIO */
	portLED->IOCR0.bits.PC1 = 0x8;	/* OUT_PPGPIO */
	portLED->OMR.bits.PS0 = 1;
	portLED->OMR.bits.PS1 = 1;
}

#ifdef __cplusplus
  }
#endif /* __cplusplus */

#endif /* __TRICORE_LED_H__ */

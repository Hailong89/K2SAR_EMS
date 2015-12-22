#ifndef __TRICORE_LED_H__
#define __TRICORE_LED_H__
/*====================================================================
* Project:  Board Support Package (BSP)
* Developed using:
* Function: LEDs on phyCORE-TC1797
*
* Copyright HighTec EDV-Systeme GmbH 1982-2009
*====================================================================*/

#ifdef __cplusplus
  extern "C" {
#endif /* __cplusplus */

/*
 *	number of available LEDs
 */
#define MAX_LED			1

#ifndef USE_BASEBOARD_LED
/* phyCORE-TC1797 : P1.15  --> LED D1 on CPU module (high active) */

#include <tc1797/port1-struct.h>

static PORT1_t *portLED = (PORT1_t *) P1_BASE;

#define LED_PIN_NR	15

#define LED_ON		(portLED->OMR.bits.PS15 = 1)
#define LED_OFF		(portLED->OMR.bits.PR15 = 1)


#ifdef LED_GREEN
static inline void LEDON(int nr)
{
	portLED->OMR.reg = (1<<(nr+LED_PIN_NR));
}

static inline void LEDOFF(int nr)
{
	portLED->OMR.reg = ((1<<(nr+LED_PIN_NR))<<16);
}

static inline void LEDTOGGLE(int nr)
{
	portLED->OMR.reg = ((1<<(nr+LED_PIN_NR))<<16) | (1<<(nr+LED_PIN_NR));
}
#endif /* LED_GREEN */


static void InitLED(void)
{
	/* initialize PORT1.15, 15 = 12+3 */
	portLED->IOCR12.bits.PC3 = 0x8;	/* OUT_PPGPIO */
	LED_OFF;
}
#else
/* phyCORE-TC1797 : P8.0  --> LED D5 on base board (low active) */

#include <tc1797/port8-struct.h>

static PORT8_t *portLED = (PORT8_t *) P8_BASE;

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
	/* initialize PORT8.0 */
	portLED->IOCR0.bits.PC0 = 0x8;	/* OUT_PPGPIO */
	LED_OFF;
}
#endif /* USE_BASEBOARD_LED */

#ifdef __cplusplus
  }
#endif /* __cplusplus */

#endif /* __TRICORE_LED_H__ */

/*====================================================================
* Project: Board Support Package (BSP)
* Developed using:
* Function: Transmit and receive characters via TriCore's serial line.
*           (polling variant).
*
* Copyright HighTec EDV-Systeme GmbH 1982-2009
*====================================================================*/

#include <machine/wdtcon.h>
#include "rs232.h"

#include <tc1130b/scu.h>
#include <tc1130b/port-struct.h>
#include <tc1130b/asc-struct.h>

#ifndef BAUDRATE
#define BAUDRATE		38400
#endif /* BAUDRATE */

extern unsigned int get_cpu_frequency(void);

/* ASC Modes */
#define ASCM_8SYNC		0	/* 8 Bit Data Sync. */
#define ASCM_8ASYNC		1	/* 8 Bit Data Async. */
#define ASCM_8IRDA		2	/* 8 Bit Data IrDA */
#define ASCM_7P			3	/* 7 Bit Data + Parity */
#define ASCM_9			4	/* 9 Bit Data */
#define ASCM_8W			5	/* 8 Bit Data + Wake up Bit */
#define ASCM_8P			7	/* 8 Bit Data + Parity */

#define ASC_RXD_PIN		P0
#define ASC_TXD_PIN		P1


static ASC_t  *asc  = (ASC_t *) ASC0_BASE;
static PORT_t *port = (PORT_t *) P2_BASE;

#define START_TX	(asc->TBSRC.bits.SETR = 1)
#define RESET_TX	(asc->TBSRC.bits.CLRR = 1)
#define RESET_RX	(asc->RSRC.bits.CLRR = 1)

#define TX_READY	(asc->TBSRC.bits.SRR != 0)
#define RX_READY	(asc->RSRC.bits.SRR != 0)


/* Initialize asynchronous interface (ASC0) to operate at BAUDRATE,8,n,1 */

void _init_uart(int baudrate)
{
	unsigned int frequency;

	/* Set TXD to "output" and "high" */
	port->OUT.bits.ASC_TXD_PIN = 1;
	port->DIR.bits.ASC_TXD_PIN = 1;

	/* Set RXD to input */
	port->DIR.bits.ASC_RXD_PIN = 0;

	/* Configure port pins to TXD0 and RXD0 */
	port->ALTSEL0.bits.ASC_RXD_PIN = 1;
	port->ALTSEL0.bits.ASC_TXD_PIN = 1;

	/* Compute system frequency and reload value for ASC0 */
	frequency = get_cpu_frequency();

	if (baudrate <= 0)
		baudrate = BAUDRATE;

	/* Enable ASC0 */
	unlock_wdtcon();
	asc->CLC.bits.RMC = 1;
	asc->CLC.bits.DISR = 0;
	lock_wdtcon();

	/* Program ASC0 */
	asc->CON.reg = 0;
	asc->BG.bits.BR_VALUE  = (frequency / (baudrate * 32)) - 1;
	asc->FDV.bits.FD_VALUE = 0;
	asc->CON.bits.M = ASCM_8ASYNC;
	asc->CON.bits.R = 1;
	asc->CON.bits.REN = 1;

	START_TX;
}

/* Send character CHR via the serial line */

void _out_uart(const unsigned char chr)
{
	while (!TX_READY)
		;

	RESET_TX;

	asc->TBUF.bits.TD_VALUE = chr;
}

/* Receive (and wait for) a character from the serial line */

unsigned char _in_uart(void)
{
	while (!RX_READY)
		;

	RESET_RX;

	return (unsigned char) asc->RBUF.bits.RD_VALUE;
}

/* Check the serial line if a character has been received.
   returns 1 and the character in *chr if there is one
   else 0
 */

int _poll_uart(unsigned char *chr)
{
	int res = 0;

	if (RX_READY)
	{
		*chr = (unsigned char) asc->RBUF.bits.RD_VALUE;
		res = 1;
		RESET_RX;
	}

	return res;
}

/*====================================================================
* Project:  Board Support Package (BSP)
* Developed using:
* Function: Transmit and receive characters via TriCore's serial line.
*           (polling variant). [TriBoard-TC1797]
*
* Copyright HighTec EDV-Systeme GmbH 1982-2009
*====================================================================*/

#include <machine/wdtcon.h>
#include "rs232.h"

#include <tc1797/port5-struct.h>
#include <tc1797/asc0-struct.h>

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

/* Port Modes */
#define IN_NOPULL0		0x0	/* Port Input No Pull Device */
#define IN_PULLDOWN		0x1	/* Port Input Pull Down Device */
#define IN_PULLUP		0x2	/* Port Input Pull Up Device */
#define IN_NOPULL3		0x3	/* Port Input No Pull Device */
#define OUT_PPGPIO		0x8	/* Port Output General Purpose Push/Pull */
#define OUT_PPALT1		0x9	/* Port Output Alternate 1 Function Push/Pull */
#define OUT_PPALT2		0xA	/* Port Output Alternate 2 Function Push/Pull */
#define OUT_PPALT3		0xB	/* Port Output Alternate 3 Function Push/Pull */
#define OUT_ODGPIO		0xC	/* Port Output General Purpose Open Drain */
#define OUT_ODALT1		0xD	/* Port Output Alternate 1 Function Open Drain */
#define OUT_ODALT2		0xE	/* Port Output Alternate 2 Function Open Drain */
#define OUT_ODALT3		0xF	/* Port Output Alternate 3 Function Open Drain */


static ASC0_t	*asc  = (ASC0_t *) ASC0_BASE;
static PORT5_t	*port = (PORT5_t *) P5_BASE;

#define START_TX	(asc->TBSRC.bits.SETR = 1)
#define RESET_TX	(asc->TBSRC.bits.CLRR = 1)
#define RESET_RX	(asc->RSRC.bits.CLRR = 1)

#define TX_READY	(asc->TBSRC.bits.SRR != 0)
#define RX_READY	(asc->RSRC.bits.SRR != 0)


/* Initialize asynchronous interface (ASC0) to operate at BAUDRATE,8,n,1 */

void _init_uart(int baudrate)
{
	unsigned int frequency, reload_value, fdv;
	unsigned int dfreq;

	/* Set TXD to "output" and "high" */
	/* set P5.1 to output and high */
	port->IOCR0.bits.PC1 = OUT_PPALT1;
	port->OMR.bits.PS1 = 1;

	/* Compute system frequency and reload value for ASC0 */
	frequency = get_cpu_frequency();

	if (baudrate <= 0)
		baudrate = BAUDRATE;

	/*  reload_value = fdv/512 * freq/16/baudrate -1  ==>
		reload_value = (512*freq)/(baudrate * 512*16) - 1
		fdv = (reload_value + 1) * (baudrate*512*16/freq)
		reload_value = (frequency / 32) / BAUDRATE - 1;
	*/
	reload_value = (frequency / (baudrate * 16)) - 1;
	dfreq = frequency / (16*512);
	fdv = (reload_value + 1) * (unsigned int)baudrate / dfreq;

	/* Enable ASC0 */
	unlock_wdtcon();
	asc->CLC.bits.RMC = 1;
	asc->CLC.bits.DISR = 0;
	lock_wdtcon();

	/* Program ASC0 */
	asc->CON.reg = 0;
	asc->BG.reg  = reload_value;
	asc->FDV.reg = fdv;
	asc->CON.bits.M = ASCM_8ASYNC;
	asc->CON.bits.R = 1;
	asc->CON.bits.REN = 1;
	asc->CON.bits.FDE = 1;

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

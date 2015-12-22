/*====================================================================
* Project:  Board Support Package (BSP)
* Developed using:
* Function: Transmit and receive characters via TriCore's serial line
*           (interrupt variant).
*
* Copyright HighTec EDV-Systeme GmbH 1982-2009
*====================================================================*/

#include <string.h>

#include <machine/cint.h>
#include <machine/wdtcon.h>
#include "rs232.h"

#include <tc1130b/port-struct.h>
#include <tc1130b/asc-struct.h>

#ifndef BAUDRATE
#define BAUDRATE		38400
#endif /* BAUDRATE */

#define XMIT_INTERRUPT	3
#define RECV_INTERRUPT	4

extern unsigned int get_cpu_frequency(void);

#define RBUF_SIZE		0x100
#define TBUF_SIZE		0x200

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


typedef struct
{
	volatile char     buf[RBUF_SIZE];
	volatile unsigned head;
	volatile unsigned tail;
	volatile unsigned count;
} RxBuffer;

typedef struct
{
	volatile char     buf[TBUF_SIZE];
	volatile unsigned head;
	volatile unsigned tail;
	volatile unsigned count;
} TxBuffer;

/* Circular send and receive buffers */
static TxBuffer sendBuf;
static RxBuffer recvBuf;


/* Send character CHR via the serial line */

static __inline__ void _out_uart(const unsigned char chr)
{
	asc->TBUF.bits.TD_VALUE = chr;
}

/* Receive (and return) a character from the serial line */

static __inline__ unsigned char _in_uart(void)
{
	return asc->RBUF.bits.RD_VALUE;
}

/* interrupt handlers */

static void _uart_rx_handler(void)
{
	char c;

	c = _in_uart();
	if (recvBuf.count < RBUF_SIZE - 1)
	{
		recvBuf.buf[recvBuf.head] = c;
		if (++recvBuf.head >= RBUF_SIZE)
		{
			recvBuf.head = 0;
		}
		++recvBuf.count;
	}
}

static void _uart_tx_handler(void)
{
	if (sendBuf.count)
	{
		_out_uart(sendBuf.buf[sendBuf.tail]);
		if (++sendBuf.tail >= TBUF_SIZE)
		{
			sendBuf.tail = 0;
		}
		--sendBuf.count;
	}
}


/* Initialize asynchronous interface (ASC0) to operate at BAUDRATE,8,n,1 */

void _init_uart(int baudrate)
{
	unsigned int frequency;

	/* initialize vector and trap tables */
	_init_vectab();

	/* Install handlers for transmit and receive interrupts.  */
	_install_int_handler(XMIT_INTERRUPT, (void (*) (int)) _uart_tx_handler, 0);
	_install_int_handler(RECV_INTERRUPT, (void (*) (int)) _uart_rx_handler, 0);

	/* Set TXD to "output" and "high" */
	port->OUT.bits.ASC_TXD_PIN = 1;
	port->DIR.bits.ASC_TXD_PIN = 1;

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

	asc->TSRC.reg = ASCn_TSRC_SRE_MASK | XMIT_INTERRUPT;
	asc->RSRC.reg = ASCn_RSRC_SRE_MASK | RECV_INTERRUPT;
}

/* get a character from serial line */
int _uart_getchar(unsigned char *c)
{
	int ok = 0;

	if (recvBuf.count > 0)
	{
		ok = 1;
		*c = recvBuf.buf[recvBuf.tail];
		if (++recvBuf.tail >= RBUF_SIZE)
		{
			recvBuf.tail = 0;
		}
		--recvBuf.count;
	}

	return ok;
}

/* send a string over serial line */
int _uart_puts(const char *str)
{
	int ok, len;

	len = strlen(str);
	ok  = (((sendBuf.count + len) < TBUF_SIZE) ? 1 : 0);

	if (ok && len)
	{
		int cnt = 0, trig;
		for (; cnt < len; ++cnt)
		{
			sendBuf.buf[sendBuf.head] = *str++;
			if (++sendBuf.head >= TBUF_SIZE)
				sendBuf.head = 0;
		}
		trig = sendBuf.count == 0;
		if (trig)
		{
			_out_uart(sendBuf.buf[sendBuf.tail]);
			if (++sendBuf.tail >= TBUF_SIZE)
			{
				sendBuf.tail = 0;
			}
			--len;
		}
		sendBuf.count += len;
	}

	return ok;
}

/* test UARTs sending state */
int _uart_sending(void)
{
	return (sendBuf.count > 0);
}
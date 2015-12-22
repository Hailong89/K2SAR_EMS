/*====================================================================
* Project: Board Support Package (BSP)
* Developed using:
* Function: TCPIP configuration for phyCORE-TC1796
*
* Copyright HighTec EDV-Systeme GmbH 1982-2008
*====================================================================*/

#ifndef __TCPIP_CFG_PHYCORE_TC1796_H__
#define __TCPIP_CFG_PHYCORE_TC1796_H__

#include <machine/cint.h>
#include <tc1796b/scu.h>
#include <tc1796b/dma.h>

/**********************************
 * Defines for Ethernet interface *
 **********************************/

/* PXROS driver task for network interface */
#define ETHERNET_DRIVER		W5300_Driver
/* base address to access network hardware */
#define ETH_REGBASE			0xD8000000

#define DEFAULT_MAC_ADDR	0x00, 0x50, 0xC2, 0x32, 0xAA, 0xA6
#define DEFAULT_IP_ADDR		"192.168.0.199"


/* ethernet driver configuration options: none */
#define ETH_OPTIONS			0


/* interrupt priority for ethernet */
#define ISR_LVL_ETH			10


/* function for installing ethernet interrupt service routine */
static __inline__ void eth_install_isr(void (*hnd)(int), int arg)
{
	DMA_SYSSRCm_t_nonv src;
	EICRn_t_nonv eicr;

	_install_int_handler(ISR_LVL_ETH, hnd, arg);

	/* enable service request for the ETH interrupt */
	/* Attention: all DMA SFRs need SV mode for writing! */
	src.reg = 0;
	src.bits.SRE = 1;
	src.bits.SRPN = ISR_LVL_ETH;
	DMA_SYSSRC2 = src;

	/* configure P1.0 for use as external interrupt pin REQ0 */
	eicr = EICR0;
	eicr.bits.EXIS0 = 0;	/* input line IN00 */
	eicr.bits.FEN0  = 1;	/* falling edge */
	eicr.bits.LDEN0 = 1;	/* automatic reset by rising edge */
	eicr.bits.EIEN0 = 1;	/* external interrupt enable */
	eicr.bits.INP0  = 0;	/* interrupt node pointer INT00 */
	EICR0 = eicr;
}

#endif /* __TCPIP_CFG_PHYCORE_TC1796_H__ */

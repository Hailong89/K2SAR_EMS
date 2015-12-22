/*====================================================================
* Project: Board Support Package (BSP)
* Developed using:
* Function: TCPIP configuration for TriBoard-TC1130
*
* Copyright HighTec EDV-Systeme GmbH 1982-2007
*====================================================================*/

#ifndef __TCPIP_CFG_TRIBOARD_TC1130_H__
#define __TCPIP_CFG_TRIBOARD_TC1130_H__


/**********************************
 * Defines for Ethernet interface *
 **********************************/

/* PXROS driver task for network interface */
#define ETHERNET_DRIVER		TC1130_EthDriver
/* base address to access network hardware */
#define ETH_REGBASE			0xf2000100

#define DEFAULT_MAC_ADDR	0x00, 0x50, 0xc2, 0x3b, 0xaa, 0xa6
#define DEFAULT_IP_ADDR		"192.168.0.199"


/* ethernet driver configuration options: none */
#define ETH_OPTIONS			0


#endif /* __TCPIP_CFG_TRIBOARD_TC1130_H__ */

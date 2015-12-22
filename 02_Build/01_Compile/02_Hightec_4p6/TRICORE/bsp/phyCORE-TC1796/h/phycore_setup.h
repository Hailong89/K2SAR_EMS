/*====================================================================
* Project:  Board Support Package (BSP)
* Developed using:
* Function: phyCORE-TC1796 platform specific setup values
*
* Copyright HighTec EDV-Systeme GmbH 1982-2009
*====================================================================*/

#ifndef __PHYCORE_TC1796_SETUP_H__
#define __PHYCORE_TC1796_SETUP_H__

#include "tc1796b/scu/addr.h"
#include "tc1796b/ebu/addr.h"
#include "tc1796b/pmi/addr.h"

/* initialization value for PLLCLC : set clock to 150 MHz */
/* see PLL_TC.H005 TC1796BC-Errata-V1.7: NDIV >= 33 !! */
#define VAL_PLLCLC			0x003B2382


/* initialization values for External Bus */
#define VAL_EBU_CON			0x0000FF68
#define VAL_EBU_BFCON		0x001001D0
/* CS0: 16 MB external Flash */
#define VAL_EBU_ADDRSEL0	0xA4000833
#define VAL_EBU_BUSCON0		0x00920200
#define VAL_EBU_BUSAP0		0x81F80000
/* CS1: 4 MB external SRAM */
#define VAL_EBU_ADDRSEL1	0xA1000853
#define VAL_EBU_BUSCON1		0x00820000
#define VAL_EBU_BUSAP1		0x45B80000
/* CS2: 1 MB external Fast SRAM */
#define VAL_EBU_ADDRSEL2	0xA2000873
#define VAL_EBU_BUSCON2		0x00920000
#define VAL_EBU_BUSAP2		0x40D01100
/* CS3: x16 LAN chip W5300 */
#define VAL_EBU_ADDRSEL3	0xD80000C1
#define VAL_EBU_BUSCON3		0x00420000
#define VAL_EBU_BUSAP3		0x41A00000

/* enable instruction cache */
#define VAL_PMI_CON0		0x00000000


#endif /* __PHYCORE_TC1796_SETUP_H__ */

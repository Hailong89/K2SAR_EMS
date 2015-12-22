/*====================================================================
* Project:  Board Support Package (BSP)
* Developed using:
* Function: phyCORE-TC1797 platform specific setup values
*
* Copyright HighTec EDV-Systeme GmbH 1982-2009
*====================================================================*/

#ifndef __PHYCORE_TC1797_SETUP_H__
#define __PHYCORE_TC1797_SETUP_H__

#include "tc1797/ebu/addr.h"
#include "tc1797/cpu/addr.h"


/* initialization values for External Bus */
#define VAL_EBU_MODCON		0x800000E0
/* CS0: 4 MB external Flash */
#define VAL_EBU_ADDRSEL0	0xA4000853
#define VAL_EBU_BUSRCON0	0x00D30040
#define VAL_EBU_BUSRAP0		0x011F0190
#define VAL_EBU_BUSWCON0	0x00D30000
#define VAL_EBU_BUSWAP0		0x011F0190
/* CS1: 4 MB external SRAM */
#define VAL_EBU_ADDRSEL1	0xA1000853
#define VAL_EBU_BUSRCON1	0x00D30040
#define VAL_EBU_BUSRAP1		0x011F0590
#define VAL_EBU_BUSWCON1	0x00D30000
#define VAL_EBU_BUSWAP1		0x011F0590
/* CS2: 1 MB external Fast SRAM */
#define VAL_EBU_ADDRSEL2	0xA2000873
#define VAL_EBU_BUSRCON2	0x00D30040
#define VAL_EBU_BUSRAP2		0x011F0210
#define VAL_EBU_BUSWCON2	0x00D30000
#define VAL_EBU_BUSWAP2		0x011F0210
/* CS3: x16 LAN chip W5300 */
#define VAL_EBU_ADDRSEL3	0xD80000C1
#define VAL_EBU_BUSRCON3	0x40530040
#define VAL_EBU_BUSRAP3		0x011F0390
#define VAL_EBU_BUSWCON3	0x40530000
#define VAL_EBU_BUSWAP3		0x011F0290

/* enable instruction cache */
#define VAL_PMI_CON0		0x00000000


#endif /* __PHYCORE_TC1797_SETUP_H__ */

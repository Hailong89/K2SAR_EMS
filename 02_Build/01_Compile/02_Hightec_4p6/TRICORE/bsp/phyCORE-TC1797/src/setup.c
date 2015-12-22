/*====================================================================
* Project:  Board Support Package (BSP)
* Developed using:
* Function: board initialization table (phyCORE-TC1797)
*
* Copyright HighTec EDV-Systeme GmbH 1982-2009
*====================================================================*/

#if defined(PHYCORE_TC1797)
#include "phycore_setup.h"
#else
#error ERROR: NO TARGET DEFINED!
#endif /* PHYCORE_TC1797 */


typedef struct
{
	unsigned long addr;
	unsigned long val;
} InitTab_t;

const InitTab_t boardSetupTab[] =
{
	{EBU_ADDRSEL0_ADDR,	VAL_EBU_ADDRSEL0 },
	{EBU_BUSRCON0_ADDR,	VAL_EBU_BUSRCON0 },
	{EBU_BUSRAP0_ADDR,	VAL_EBU_BUSRAP0	 },
	{EBU_BUSWCON0_ADDR,	VAL_EBU_BUSWCON0 },
	{EBU_BUSWAP0_ADDR,	VAL_EBU_BUSWAP0	 },
	{EBU_ADDRSEL1_ADDR,	VAL_EBU_ADDRSEL1 },
	{EBU_BUSRCON1_ADDR,	VAL_EBU_BUSRCON1 },
	{EBU_BUSRAP1_ADDR,	VAL_EBU_BUSRAP1	 },
	{EBU_BUSWCON1_ADDR,	VAL_EBU_BUSWCON1 },
	{EBU_BUSWAP1_ADDR,	VAL_EBU_BUSWAP1	 },
	{EBU_ADDRSEL2_ADDR,	VAL_EBU_ADDRSEL2 },
	{EBU_BUSRCON2_ADDR,	VAL_EBU_BUSRCON2 },
	{EBU_BUSRAP2_ADDR,	VAL_EBU_BUSRAP2	 },
	{EBU_BUSWCON2_ADDR,	VAL_EBU_BUSWCON2 },
	{EBU_BUSWAP2_ADDR,	VAL_EBU_BUSWAP2	 },
	{EBU_ADDRSEL3_ADDR,	VAL_EBU_ADDRSEL3 },
	{EBU_BUSRCON3_ADDR,	VAL_EBU_BUSRCON3 },
	{EBU_BUSRAP3_ADDR,	VAL_EBU_BUSRAP3	 },
	{EBU_BUSWCON3_ADDR,	VAL_EBU_BUSWCON3 },
	{EBU_BUSWAP3_ADDR,	VAL_EBU_BUSWAP3	 },
	/*
		This must be done after CSx programming to avoid disabling EBU_CON.CS0FAM
		(CS0 Fills Address Map)
	 */
	{EBU_MODCON_ADDR,	VAL_EBU_MODCON	},
	{PMI_CON0_ADDR,		VAL_PMI_CON0	}
};

const unsigned long boardSetupTabSize = sizeof(boardSetupTab) / sizeof(InitTab_t);

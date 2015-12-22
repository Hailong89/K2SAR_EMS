/*====================================================================
* Project: Board Support Package (BSP)
* Developed using:
* Function: Determine the frequency the CPU is running at (TC1130)
*
* Copyright HighTec EDV-Systeme GmbH 1982-2009
*====================================================================*/

#include <machine/wdtcon.h>
#include <tc1130b/scu.h>
#include <tc1130b/pmi.h>


#ifndef DEF_FRQ
#define DEF_FRQ			20000000U  /* TC1130 quartz frequency is 20 MHz */
#endif /* DEF_FRQ */


/* divider values for 150 MHz */
#define SYS_CFG_KDIV		 4
#define SYS_CFG_NDIV		30
#define SYS_CFG_PDIV		 1
#define SYS_VCOSEL_VAL		 2


/* prototypes for global functions */
void set_cpu_frequency(void);
unsigned int get_cpu_frequency(void);

/* initialisation flag: prevent multiple initialisation of PLL_CLC */
static int freq_init = 0;


/* Set the frequency the CPU is running at */

void set_cpu_frequency(void)
{
	PLL_CLC_t_nonv pllclc;

	if (freq_init)
	{
		return;
	}

	freq_init = 1;

	/* check for direct drive mode */
	if (PLL_CLC.bits.BYPPIN)
	{
		return;
	}

	/* check whether we are already running at desired clockrate */
	pllclc = PLL_CLC;
	if (	((SYS_CFG_NDIV - 1) == pllclc.bits.NDIV)
		&&	((SYS_CFG_PDIV - 1) == pllclc.bits.PDIV)
		&&	((SYS_CFG_KDIV - 1) == pllclc.bits.KDIV)
		&&	pllclc.bits.LOCK)
	{
		return;
	}

	/* prepare value for PLL_CLC */
	/* set speed to selected value */
	pllclc.reg = 0;
	pllclc.bits.VCOSEL = SYS_VCOSEL_VAL;
	pllclc.bits.NDIV   = SYS_CFG_NDIV - 1;
	pllclc.bits.PDIV   = SYS_CFG_PDIV - 1;
	pllclc.bits.KDIV   = SYS_CFG_KDIV - 1;
	pllclc.bits.VCOBYP = 1;
	pllclc.bits.RESLD  = 1;

	/* switch into VCO BYPASS mode */
	unlock_wdtcon();
	PLL_CLC.bits.VCOBYP = 1;

	/* wait for BYPASS mode */
	while (!PLL_CLC.bits.VCOBYP)
		;

	/* write new control value */
	PLL_CLC = pllclc;
	lock_wdtcon();

	/* wait for stable VCO frequency */
	while (!PLL_CLC.bits.LOCK)
		;

	/* leave VCO BYPASS mode */
	unlock_wdtcon();
	PLL_CLC.bits.VCOBYP = 0;
	lock_wdtcon();
}

/* Determine the frequency the CPU is running at */

unsigned int get_cpu_frequency(void)
{
	unsigned int frequency;
	PLL_CLC_t_nonv pllclc;

	if (!freq_init)
	{
		set_cpu_frequency();

#ifdef ENABLE_ICACHE
		unlock_wdtcon();
		/* enable instruction cache (PMI_CON0) */
		PMI_CON0.bits.CCBYP = 0;
		lock_wdtcon();
#endif /* ENABLE_ICACHE */
	}

	pllclc = PLL_CLC;

	if (pllclc.bits.BYPPIN)
	{
		frequency = DEF_FRQ;
	}
	else
	{
		unsigned int k_div, n_div, p_div;

		n_div = pllclc.bits.NDIV + 1;
		k_div = pllclc.bits.KDIV + 1;
		p_div = pllclc.bits.PDIV + 1;

		frequency = DEF_FRQ * n_div / (k_div * p_div);
	}

	if (!(pllclc.bits.SYSFSL))
		frequency /= 2;

	return frequency;
}

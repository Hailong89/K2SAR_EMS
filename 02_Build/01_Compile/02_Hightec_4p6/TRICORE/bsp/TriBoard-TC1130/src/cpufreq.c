/*====================================================================
* Project:  Board Support Package (BSP)
* Developed using:
* Function: Determine the frequency the CPU is running at (TC1130)
*           variant for working with USB
*
* Copyright HighTec EDV-Systeme GmbH 1982-2009
*====================================================================*/

#include <machine/wdtcon.h>
#include <tc1130b/scu.h>
#include <tc1130b/pmi.h>


#ifndef DEF_FRQ
#define DEF_FRQ			20000000U  /* TC1130 quartz frequency is 20 MHz */
#endif /* DEF_FRQ */


#ifdef __USE_USB__
#ifdef __CPU_CLOCK_144MHZ__
#define SYS_CFG_KDIV			 4
#define SYS_CFG_PDIV			 1
#define SYS_CFG_NDIV			29
#define SYS_VCOSEL_VAL			 1
#define SYS_CFG_USB_CLK_DIVISOR  3
#elif defined(__CPU_CLOCK_96MHZ__)
#define SYS_CFG_KDIV			 5
#define SYS_CFG_PDIV			 1
#define SYS_CFG_NDIV			24
#define SYS_VCOSEL_VAL			 0
#define SYS_CFG_USB_CLK_DIVISOR  2
#elif defined(__CPU_CLOCK_48MHZ__)
#define SYS_CFG_KDIV			10
#define SYS_CFG_PDIV			 1
#define SYS_CFG_NDIV			24
#define SYS_VCOSEL_VAL			 0
#define SYS_CFG_USB_CLK_DIVISOR  1
#else
#error ERROR: NO SUITABLE USB CLOCK SUPPLIED
#endif /* __CPU_CLOCK_144MHZ__ */
#else
/* set speed to 150 MHz with 20MHz Crystal */
#define SYS_CFG_KDIV			 4
#define SYS_CFG_PDIV			 1
#define SYS_CFG_NDIV			30
#define SYS_VCOSEL_VAL			 2
#endif /* __USE_USB__ */


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
#ifdef __USE_USB__
	SCU_CON_t_nonv scucon;
#endif /* __USE_USB__ */

	if (!freq_init)
	{
#ifdef __USE_USB__
		/* prepare SCU_CON for USB */
		scucon  = SCU_CON;
		scucon.bits.USBCLDIV = (SYS_CFG_USB_CLK_DIVISOR - 1);
		scucon.bits.USBCLSEL = 3;
#endif /* __USE_USB__ */

		/* set speed to selected clock frequency */
		set_cpu_frequency();

#if defined(__USE_USB__) || defined(ENABLE_ICACHE)
		unlock_wdtcon();
#ifdef __USE_USB__
		SCU_CON = scucon;
#endif /* __USE_USB__ */
#ifdef ENABLE_ICACHE
		/* enable instruction cache (PMI_CON0) */
		PMI_CON0.bits.CCBYP = 0;
#endif /* ENABLE_ICACHE */
		lock_wdtcon();
#endif /* __USE_USB__ || ENABLE_ICACHE */
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

/* (c) 2000-2008 HighTec EDV-Systeme GmbH */

/* block "MLI1" of TriCore TC1796B (46 SFRs) */

#include <tc1796b/mli1/addr.h>

#include <tc1796b/mli1/masks.h>
#include <tc1796b/mli0_mli1/sharemasks.h>

#ifndef NO_TRICORE_SFRTYPEDEFS

#include <tc1796b/mli1/types.h>
#include <tc1796b/mli0_mli1/sharetypes.h>

#ifndef _HAVE_TRICORE_MLI1_H_
#define _HAVE_TRICORE_MLI1_H_

#include <tricore-abs-noabs.h>

SFR_NOABS (MLI1_AER, MLIn_AER_t, MLI1_AER_ADDR);  /* "MLI1 Access Enable Register" */
SFR_NOABS (MLI1_ARR, MLIn_ARR_t, MLI1_ARR_ADDR);  /* "MLI1 Access Range Register" */
SFR_NOABS (MLI1_FDR, MLIn_FDR_t, MLI1_FDR_ADDR);  /* "MLI1 Fractional Divider Register" */
SFR_NOABS (MLI1_GINTR, MLIn_GINTR_t, MLI1_GINTR_ADDR); /* "MLI1 Global Interrupt Set Register" */
SFR_NOABS (MLI1_ID, MLIn_ID_t, MLI1_ID_ADDR);     /* "MLI1 Module Identification Register" */
SFR_NOABS (MLI1_OICR, MLIn_OICR_t, MLI1_OICR_ADDR); /* "MLI1 Output Input Control Register" */
SFR_NOABS (MLI1_RADRR, MLIn_RADRR_t, MLI1_RADRR_ADDR); /* "MLI1 Receiver Address Register" */
SFR_NOABS (MLI1_RCR, MLIn_RCR_t, MLI1_RCR_ADDR);  /* "MLI1 Receiver Control Register" */
SFR_NOABS (MLI1_RDATAR, MLIn_RDATAR_t, MLI1_RDATAR_ADDR); /* "MLI1 Receiver Data Register" */
SFR_NOABS (MLI1_RIER, MLIn_RIER_t, MLI1_RIER_ADDR); /* "MLI1 Receiver Interrupt Enable Register" */
SFR_NOABS (MLI1_RINPR, MLIn_RINPR_t, MLI1_RINPR_ADDR); /* "MLI1 Receiver Interrupt Node Pointer Register" */
SFR_NOABS (MLI1_RISR, MLIn_RISR_t, MLI1_RISR_ADDR); /* "MLI1 Receiver Interrupt Status Register" */
SFR_NOABS (MLI1_RP0BAR, MLIn_RPmBAR_t, MLI1_RP0BAR_ADDR); /* "MLI1 Receiver Pipe 0 Base Address Register" */
SFR_NOABS (MLI1_RP0STATR, MLIn_RPmSTATR_t, MLI1_RP0STATR_ADDR); /* "MLI1 Receiver Pipe 0 Status Register" */
SFR_NOABS (MLI1_RP1BAR, MLIn_RPmBAR_t, MLI1_RP1BAR_ADDR); /* "MLI1 Receiver Pipe 1 Base Address Register" */
SFR_NOABS (MLI1_RP1STATR, MLIn_RPmSTATR_t, MLI1_RP1STATR_ADDR); /* "MLI1 Receiver Pipe 1 Status Register" */
SFR_NOABS (MLI1_RP2BAR, MLIn_RPmBAR_t, MLI1_RP2BAR_ADDR); /* "MLI1 Receiver Pipe 2 Base Address Register" */
SFR_NOABS (MLI1_RP2STATR, MLIn_RPmSTATR_t, MLI1_RP2STATR_ADDR); /* "MLI1 Receiver Pipe 2 Status Register" */
SFR_NOABS (MLI1_RP3BAR, MLIn_RPmBAR_t, MLI1_RP3BAR_ADDR); /* "MLI1 Receiver Pipe 3 Base Address Register" */
SFR_NOABS (MLI1_RP3STATR, MLIn_RPmSTATR_t, MLI1_RP3STATR_ADDR); /* "MLI1 Receiver Pipe 3 Status Register" */
SFR_NOABS (MLI1_SCR, MLIn_SCR_t, MLI1_SCR_ADDR);  /* "MLI1 Set Clear Register" */
SFR_NOABS (MLI1_TCBAR, MLIn_TCBAR_t, MLI1_TCBAR_ADDR); /* "MLI1 Transmitter Copy Base Address Register" */
SFR_NOABS (MLI1_TCMDR, MLIn_TCMDR_t, MLI1_TCMDR_ADDR); /* "MLI1 Transmitter Command Register" */
SFR_NOABS (MLI1_TCR, MLIn_TCR_t, MLI1_TCR_ADDR);  /* "MLI1 Transmitter Control Register" */
SFR_NOABS (MLI1_TDRAR, MLIn_TDRAR_t, MLI1_TDRAR_ADDR); /* "MLI1 Transmitter Data Read Answer Register" */
SFR_NOABS (MLI1_TIER, MLIn_TIER_t, MLI1_TIER_ADDR); /* "MLI1 Transmitter Interrupt Enable Register" */
SFR_NOABS (MLI1_TINPR, MLIn_TINPR_t, MLI1_TINPR_ADDR); /* "MLI1 Transmitter Interrupt Node Pointer Register" */
SFR_NOABS (MLI1_TISR, MLIn_TISR_t, MLI1_TISR_ADDR); /* "MLI1 Transmitter Interrupt Status Register" */
SFR_NOABS (MLI1_TP0AOFR, MLIn_TPmAOFR_t, MLI1_TP0AOFR_ADDR); /* "MLI1 Transmitter Pipe 0 Address Offset Register" */
SFR_NOABS (MLI1_TP0BAR, MLIn_TPmBAR_t, MLI1_TP0BAR_ADDR); /* "MLI1 Transmitter Pipe 0 Base Address Register" */
SFR_NOABS (MLI1_TP0DATAR, MLIn_TPmDATAR_t, MLI1_TP0DATAR_ADDR); /* "MLI1 Transmitter Pipe 0 Data Register" */
SFR_NOABS (MLI1_TP0STATR, MLIn_TPmSTATR_t, MLI1_TP0STATR_ADDR); /* "MLI1 Transmitter Pipe 0 Status Register" */
SFR_NOABS (MLI1_TP1AOFR, MLIn_TPmAOFR_t, MLI1_TP1AOFR_ADDR); /* "MLI1 Transmitter Pipe 1 Address Offset Register" */
SFR_NOABS (MLI1_TP1BAR, MLIn_TPmBAR_t, MLI1_TP1BAR_ADDR); /* "MLI1 Transmitter Pipe 1 Base Address Register" */
SFR_NOABS (MLI1_TP1DATAR, MLIn_TPmDATAR_t, MLI1_TP1DATAR_ADDR); /* "MLI1 Transmitter Pipe 1 Data Register" */
SFR_NOABS (MLI1_TP1STATR, MLIn_TPmSTATR_t, MLI1_TP1STATR_ADDR); /* "MLI1 Transmitter Pipe 1 Status Register" */
SFR_NOABS (MLI1_TP2AOFR, MLIn_TPmAOFR_t, MLI1_TP2AOFR_ADDR); /* "MLI1 Transmitter Pipe 2 Address Offset Register" */
SFR_NOABS (MLI1_TP2BAR, MLIn_TPmBAR_t, MLI1_TP2BAR_ADDR); /* "MLI1 Transmitter Pipe 2 Base Address Register" */
SFR_NOABS (MLI1_TP2DATAR, MLIn_TPmDATAR_t, MLI1_TP2DATAR_ADDR); /* "MLI1 Transmitter Pipe 2 Data Register" */
SFR_NOABS (MLI1_TP2STATR, MLIn_TPmSTATR_t, MLI1_TP2STATR_ADDR); /* "MLI1 Transmitter Pipe 2 Status Register" */
SFR_NOABS (MLI1_TP3AOFR, MLIn_TPmAOFR_t, MLI1_TP3AOFR_ADDR); /* "MLI1 Transmitter Pipe 3 Address Offset Register" */
SFR_NOABS (MLI1_TP3BAR, MLIn_TPmBAR_t, MLI1_TP3BAR_ADDR); /* "MLI1 Transmitter Pipe 3 Base Address Register" */
SFR_NOABS (MLI1_TP3DATAR, MLIn_TPmDATAR_t, MLI1_TP3DATAR_ADDR); /* "MLI1 Transmitter Pipe 3 Data Register" */
SFR_NOABS (MLI1_TP3STATR, MLIn_TPmSTATR_t, MLI1_TP3STATR_ADDR); /* "MLI1 Transmitter Pipe 3 Status Register" */
SFR_NOABS (MLI1_TRSTATR, MLIn_TRSTATR_t, MLI1_TRSTATR_ADDR); /* "MLI1 Transmitter Registers Status Register" */
SFR_NOABS (MLI1_TSTATR, MLIn_TSTATR_t, MLI1_TSTATR_ADDR); /* "MLI1 Transmitter Status Register" */


#endif /* /NO_TRICORE_SFRTYPEDEFS */
#endif /* _HAVE_TRICORE_MLI1_H_ (block "MLI1") */



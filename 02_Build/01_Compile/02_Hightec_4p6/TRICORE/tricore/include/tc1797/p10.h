/* (c) 2000-2008 HighTec EDV-Systeme GmbH */

/* block "P10" of TriCore TC1797 (6 SFRs) */

#include <tc1797/p10/addr.h>

#include <tc1797/p10/masks.h>
#include <tc1797/p0_p1_p10_p11_p12_p13_p14_p15_p16_p2_p3_p4_p5_p6_p7_p8_p9/sharemasks.h>

#ifndef NO_TRICORE_SFRTYPEDEFS

#include <tc1797/p10/types.h>
#include <tc1797/p0_p1_p10_p11_p12_p13_p14_p15_p16_p2_p3_p4_p5_p6_p7_p8_p9/sharetypes.h>

#ifndef _HAVE_TRICORE_P10_H_
#define _HAVE_TRICORE_P10_H_

#include <tricore-abs-noabs.h>

SFR_ABS (P10_IN, Pn_IN_t, P10_IN_ADDR);           /* "Port 10 Input Register" */
SFR_ABS (P10_IOCR0, Pn_IOCRm_t, P10_IOCR0_ADDR);  /* "Port 10 Input/Output Control Register 0" */
SFR_ABS (P10_IOCR4, Pn_IOCRm_t, P10_IOCR4_ADDR);  /* "Port 10 Input/Output Control Register 4" */
SFR_ABS (P10_OMR, Pn_OMR_t, P10_OMR_ADDR);        /* "Port 10 Output Modification Register" */
SFR_ABS (P10_OUT, Pn_OUT_t, P10_OUT_ADDR);        /* "Port 10 Output Register" */
SFR_ABS (P10_PDR, P10_PDR_t, P10_PDR_ADDR);       /* "Port 10 Pad Driver Mode Register" */


#endif /* /NO_TRICORE_SFRTYPEDEFS */
#endif /* _HAVE_TRICORE_P10_H_ (block "P10") */



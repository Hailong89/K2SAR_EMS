/* (c) 2000-2008 HighTec EDV-Systeme GmbH */

/* block "P16" of TriCore TC1797 (6 SFRs) */

#include <tc1797/p16/addr.h>

#include <tc1797/p16/masks.h>
#include <tc1797/p0_p1_p10_p11_p12_p13_p14_p15_p16_p2_p3_p4_p5_p6_p7_p8_p9/sharemasks.h>

#ifndef NO_TRICORE_SFRTYPEDEFS

#include <tc1797/p16/types.h>
#include <tc1797/p0_p1_p10_p11_p12_p13_p14_p15_p16_p2_p3_p4_p5_p6_p7_p8_p9/sharetypes.h>

#ifndef _HAVE_TRICORE_P16_H_
#define _HAVE_TRICORE_P16_H_

#include <tricore-abs-noabs.h>

SFR_NOABS (P16_IN, Pn_IN_t, P16_IN_ADDR);         /* "Port 16 Input Register" */
SFR_NOABS (P16_IOCR0, Pn_IOCRm_t, P16_IOCR0_ADDR); /* "Port 16 Input/Output Control Register 0" */
SFR_NOABS (P16_IOCR4, Pn_IOCRm_t, P16_IOCR4_ADDR); /* "Port 16 Input/Output Control Register 4" */
SFR_NOABS (P16_OMR, Pn_OMR_t, P16_OMR_ADDR);      /* "Port 16 Output Modification Register" */
SFR_NOABS (P16_OUT, Pn_OUT_t, P16_OUT_ADDR);      /* "Port 16 Output Register" */
SFR_NOABS (P16_PDR, Pn_PDR_t, P16_PDR_ADDR);      /* "Port 16 Pad Driver Mode Register" */


#endif /* /NO_TRICORE_SFRTYPEDEFS */
#endif /* _HAVE_TRICORE_P16_H_ (block "P16") */



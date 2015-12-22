/* (c) 2000-2008 HighTec EDV-Systeme GmbH */

/* block "Port9" of TriCore TC1796B (8 SFRs) */

#include <tc1796b/p9/addr.h>

#include <tc1796b/p9/masks.h>
#include <tc1796b/p0_p1_p2_p3_p4_p5_p6_p7_p8_p9/sharemasks.h>

#ifndef NO_TRICORE_SFRTYPEDEFS

#include <tc1796b/p9/types.h>
#include <tc1796b/p0_p1_p2_p3_p4_p5_p6_p7_p8_p9/sharetypes.h>

#ifndef _HAVE_TRICORE_P9_H_
#define _HAVE_TRICORE_P9_H_

#include <tricore-abs-noabs.h>

SFR_ABS (P9_ESR, P9_ESR_t, P9_ESR_ADDR);          /* "Port 9 Emergency Stop Register" */
SFR_ABS (P9_IN, P9_IN_t, P9_IN_ADDR);             /* "Port 9 Input Register" */
SFR_ABS (P9_IOCR0, Pn_IOCRm_t, P9_IOCR0_ADDR);    /* "Port 9 Input/Output Control Register 0" */
SFR_ABS (P9_IOCR4, Pn_IOCRm_t, P9_IOCR4_ADDR);    /* "Port 9 Input/Output Control Register 4" */
SFR_ABS (P9_IOCR8, P9_IOCR8_t, P9_IOCR8_ADDR);    /* "Port 9 Input/Output Control Register 8" */
SFR_ABS (P9_OMR, P9_OMR_t, P9_OMR_ADDR);          /* "Port 9 Output Modification Register" */
SFR_ABS (P9_OUT, P9_OUT_t, P9_OUT_ADDR);          /* "Port 9 Output Register" */
SFR_ABS (P9_PDR, P9_PDR_t, P9_PDR_ADDR);          /* "Port 9 Port Driver Mode Register" */


#endif /* /NO_TRICORE_SFRTYPEDEFS */
#endif /* _HAVE_TRICORE_P9_H_ (block "Port9") */


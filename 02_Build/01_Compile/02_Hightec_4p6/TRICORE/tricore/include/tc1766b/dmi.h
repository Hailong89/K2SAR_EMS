/* (c) 2000-2008 HighTec EDV-Systeme GmbH */

/* block "DMI" of TriCore TC1766B (5 SFRs) */

#include <tc1766b/dmi/addr.h>

#include <tc1766b/dmi/masks.h>
#include <tc1766b/dmi/sharemasks.h>

#ifndef NO_TRICORE_SFRTYPEDEFS

#include <tc1766b/dmi/types.h>
#include <tc1766b/dmi/sharetypes.h>

#ifndef _HAVE_TRICORE_DMI_H_
#define _HAVE_TRICORE_DMI_H_

#include <tricore-abs-noabs.h>

SFR_NOABS (DMI_ATR, DMI_ATR_t, DMI_ATR_ADDR);     /* "DMI Asynchronous Trap Register" */
SFR_NOABS (DMI_CON, DMI_CON_t, DMI_CON_ADDR);     /* "DMI Control Register" */
SFR_NOABS (DMI_CON1, DMI_CON1_t, DMI_CON1_ADDR);  /* "DMI Control Register 1" */
SFR_NOABS (DMI_ID, DMI_ID_t, DMI_ID_ADDR);        /* "DMI Module Identification Register" */
SFR_NOABS (DMI_STR, DMI_STR_t, DMI_STR_ADDR);     /* "DMI Synchronous Trap Register" */


#endif /* /NO_TRICORE_SFRTYPEDEFS */
#endif /* _HAVE_TRICORE_DMI_H_ (block "DMI") */



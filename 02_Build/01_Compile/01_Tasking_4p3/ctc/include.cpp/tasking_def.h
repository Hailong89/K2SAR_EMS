/**************************************************************************
**
**  FILE        :  tasking_def.h
**
**  DESCRIPTION :  Configuration definitions common for all targets
**
**  COPYRIGHT   :  Copyright 1998-2014 Altium BV
**
**************************************************************************/

#ifndef _TASKING_DEF_H
#define _TASKING_DEF_H

#define CFRONT_COMPATIBILITY_MODE               FALSE
#define USE_ATEXIT                              TRUE
#define USE_SYSTEM_JMP_BUF_DEFINITION           TRUE
#define DISPLAY_ABORT_DESCRIPTION               FALSE

#ifndef __EXCEPTIONS
#define EXCEPTION_HANDLING                      FALSE
#else /* defined(__EXCEPTIONS) */
#define EXCEPTION_HANDLING                      TRUE
#endif /* !defined(__EXCEPTIONS) */

#ifndef ABI_COMPATIBILITY_VERSION
#define ABI_COMPATIBILITY_VERSION 9999 /* Latest version. */
#endif /* ifndef ABI_COMPATIBILITY_VERSION */

#endif /* _TASKING_DEF_H */

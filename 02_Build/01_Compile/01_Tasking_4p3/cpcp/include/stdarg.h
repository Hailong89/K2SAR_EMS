/**************************************************************************
**                                                                        *
**  FILE        :  stdarg.h                                               *
**                                                                        *
**  DESCRIPTION :  Include file with prototypes and macros for usage with *
**                 variable argument lists                                *
**                                                                        *
**  Copyright 1996-2014 Altium BV                                         *
**                                                                        *
**************************************************************************/

#ifndef _STDARG_H
#define _STDARG_H	1

typedef char * va_list;

#define	va_start(ap,last) ((ap) = __dotdotdot__())
#define	va_arg(ap,type)   ((type *) ((ap) += sizeof(type)))[-1]
#define	va_end(ap)        ((void) 0)  
#define	va_copy(dest,src) ((dest) = (src))

#endif  /* _STDARG_H */

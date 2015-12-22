/**************************************************************************
**                                                                        *
**  FILE        :  ctype.h                                                *
**                                                                        *
**  DESCRIPTION :  Include file with macros and definitions for functions *
**                 testing characters                                     *
**                                                                        *
**  Copyright 1996-2014 Altium BV                                         *
**                                                                        *
**************************************************************************/

#ifndef _CTYPE_H
#define _CTYPE_H	1

#ifdef	__cplusplus
extern "C" {
#endif	/* defined(__cplusplus) */

#define	__W	0x01
#define	__C	0x02
#define	__S	0x04
#define	__U	0x08
#define	__L	0x10
#define	__N	0x20
#define	__P	0x40
#define	__X	0x80

#define	_toupper(_c)	((_c)-'a'+'A')
#define	_tolower(_c)	((_c)-'A'+'a')

#define __CTYPE_SIZE	257
extern const unsigned char   __ctype[__CTYPE_SIZE];

extern	int	isalpha(int);
extern	int	isupper(int);
extern	int	islower(int);
extern	int	isdigit(int);
extern	int	isxdigit(int);
extern	int	isspace(int);
extern	int	isblank(int);
extern	int	ispunct(int);
extern	int	isalnum(int);
extern	int	isprint(int);
extern	int	isgraph(int);
extern	int	iscntrl(int);
extern	int	isascii(int);
extern	int	toascii(int);
extern	int	toupper(int);
extern	int	tolower(int);

/* No macros for isalpha, etc. See library functions. */
#define	isascii(_c)	((unsigned)(_c)<=0177)
#define	toascii(_c)	((_c)&0177)

#ifdef __cplusplus
}
#endif	/* defined(__cplusplus) */

#endif  /* _CTYPE_H */

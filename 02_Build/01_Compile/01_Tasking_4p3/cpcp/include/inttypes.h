/**************************************************************************
**                                                                        *
**  FILE        :  inttypes.h                                             *
**                                                                        *
**  DESCRIPTION :  Format conversion of integer types                     *
**                                                                        *
**  Copyright 1996-2014 Altium BV                                         *
**                                                                        *
**************************************************************************/

#ifndef _INTTYPES_H
#define _INTTYPES_H	1

#include <stdint.h>

#ifdef	__cplusplus
extern "C" {
#endif

#ifndef _WCHAR_T
typedef	__wchar_t	wchar_t;
#define _WCHAR_T	1
#endif


typedef	struct
{
	intmax_t	quot;
	intmax_t	rem;
}			imaxdiv_t;


/*
 * 7.8.1 Macros for format specifiers
 */
#if ! defined __cplusplus || defined __STDC_FORMAT_MACROS

/* 2: fprintf macros for signed integers */
#define PRId32   	"hhd"

#define PRIdLEAST8	"hhd"
#define PRIdLEAST16	"hhd"
#define PRIdLEAST32	"hhd"

#define PRIdFAST8	"hhd"
#define PRIdFAST16	"hhd"
#define PRIdFAST32	"hhd"

#define PRIdMAX 	"hhd"
#define PRIdPTR 	"d"


#define PRIiLEAST8	"hhi"
#define PRIiLEAST16	"hhi"
#define PRIiLEAST32	"hhi"

#define PRIiFAST8	"hhi"
#define PRIiFAST16	"hhi"
#define PRIiFAST32	"hhi"

#define PRIiMAX 	"hhi"
#define PRIiPTR 	"i"

/* 3: fprintf macros for unsigned integers */

#define PRIoLEAST8	"hho"
#define PRIoLEAST16	"hho"
#define PRIoLEAST32	"hho"

#define PRIoFAST8	"hho"
#define PRIoFAST16	"hho"
#define PRIoFAST32	"hho"

#define PRIoMAX 	"hho"
#define PRIoPTR 	"o"


#define PRIuLEAST8	"hhu"
#define PRIuLEAST16	"hhu"
#define PRIuLEAST32	"hhu"

#define PRIuFAST8	"hhu"
#define PRIuFAST16	"hhu"
#define PRIuFAST32	"hhu"

#define PRIuMAX 	"hhu"
#define PRIuPTR 	"u"


#define PRIxLEAST8	"hhx"
#define PRIxLEAST16	"hhx"
#define PRIxLEAST32	"hhx"

#define PRIxFAST8	"hhx"
#define PRIxFAST16	"hhx"
#define PRIxFAST32	"hhx"

#define PRIxMAX 	"hhx"
#define PRIxPTR 	"x"


#define PRIXLEAST8	"hhX"
#define PRIXLEAST16	"hhX"
#define PRIXLEAST32	"hhX"

#define PRIXFAST8	"hhX"
#define PRIXFAST16	"hhX"
#define PRIXFAST32	"hhX"

#define PRIXMAX 	"hhX"
#define PRIXPTR 	"X"

/* 4: fscanf macros for signed integers */

#define SCNdLEAST8	"hhd"
#define SCNdLEAST16	"hhd"
#define SCNdLEAST32	"hhd"

#define SCNdFAST8	"hhd"
#define SCNdFAST16	"hhd"
#define SCNdFAST32	"hhd"

#define SCNdMAX 	"hhd"
#define SCNdPTR 	"d"


#define SCNiLEAST8	"hhi"
#define SCNiLEAST16	"hhi"
#define SCNiLEAST32	"hhi"

#define SCNiFAST8	"hhi"
#define SCNiFAST16	"hhi"
#define SCNiFAST32	"hhi"

#define SCNiMAX 	"hhi"
#define SCNiPTR 	"i"

/* 5: fscanf macros for unsigned integers */

#define SCNoLEAST8	"hho"
#define SCNoLEAST16	"hho"
#define SCNoLEAST32	"hho"

#define SCNoFAST8	"hho"
#define SCNoFAST16	"hho"
#define SCNoFAST32	"hho"

#define SCNoMAX 	"hho"
#define SCNoPTR 	"o"


#define SCNuLEAST8	"hhu"
#define SCNuLEAST16	"hhu"
#define SCNuLEAST32	"hhu"

#define SCNuFAST8	"hhu"
#define SCNuFAST16	"hhu"
#define SCNuFAST32	"hhu"

#define SCNuMAX 	"hhu"
#define SCNuPTR 	"u"


#define SCNxLEAST8	"hhx"
#define SCNxLEAST16	"hhx"
#define SCNxLEAST32	"hhx"

#define SCNxFAST8	"hhx"
#define SCNxFAST16	"hhx"
#define SCNxFAST32	"hhx"

#define SCNxMAX 	"hhx"
#define SCNxPTR 	"x"

#endif

/*
 * 7.8.2 Functions for greatest-width integer types
 */
extern	intmax_t	imaxabs(intmax_t j);
extern	imaxdiv_t	imaxdiv(intmax_t numer, intmax_t denom);
extern	intmax_t	strtoimax(const char * restrict nptr, char ** restrict endptr, int base);
extern	uintmax_t	strtoumax(const char * restrict nptr, char ** restrict endptr, int base);
extern	intmax_t	wcstoimax(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base);
extern	uintmax_t	wcstoumax(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base);

#ifdef	__cplusplus
}
#endif	/* defined(__cplusplus) */

#endif	/* _INTTYPES_H */

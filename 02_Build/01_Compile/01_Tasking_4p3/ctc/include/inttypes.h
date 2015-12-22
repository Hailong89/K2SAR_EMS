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
#define _INTTYPES_H     1

#include <stdint.h>

#ifdef  __cplusplus
extern "C" {
#endif

#ifndef _WCHAR_T
typedef signed short int wchar_t;
#define _WCHAR_T        1
#endif


typedef struct
{
        intmax_t        quot;
        intmax_t        rem;
}                       imaxdiv_t;


/*
 * 7.8.1 Macros for format specifiers
 */
#if ! defined __cplusplus || defined __STDC_FORMAT_MACROS

/* 2: fprintf macros for signed integers */
#define PRId8           "hhd"
#define PRId16          "hd"
#define PRId32          "d"
#define PRId64          "lld"

#define PRIdLEAST8      "hhd"
#define PRIdLEAST16     "hd"
#define PRIdLEAST32     "d"
#define PRIdLEAST64     "lld"

#define PRIdFAST8       "hhd"
#define PRIdFAST16      "hd"
#define PRIdFAST32      "d"
#define PRIdFAST64      "lld"

#define PRIdMAX         "lld"
#define PRIdPTR         "d"

#define PRIi8           "hhi"
#define PRIi16          "hi"
#define PRIi32          "i"
#define PRIi64          "lli"

#define PRIiLEAST8      "hhi"
#define PRIiLEAST16     "hi"
#define PRIiLEAST32     "i"
#define PRIiLEAST64     "lli"

#define PRIiFAST8       "hhi"
#define PRIiFAST16      "hi"
#define PRIiFAST32      "i"
#define PRIiFAST64      "lli"

#define PRIiMAX         "lli"
#define PRIiPTR         "i"

/* 3: fprintf macros for unsigned integers */
#define PRIo8           "hho"
#define PRIo16          "ho"
#define PRIo32          "o"
#define PRIo64          "llo"

#define PRIoLEAST8      "hho"
#define PRIoLEAST16     "ho"
#define PRIoLEAST32     "o"
#define PRIoLEAST64     "llo"

#define PRIoFAST8       "hho"
#define PRIoFAST16      "ho"
#define PRIoFAST32      "o"
#define PRIoFAST64      "llo"

#define PRIoMAX         "llo"
#define PRIoPTR         "o"

#define PRIu8           "hhu"
#define PRIu16          "hu"
#define PRIu32          "u"
#define PRIu64          "llu"

#define PRIuLEAST8      "hhu"
#define PRIuLEAST16     "hu"
#define PRIuLEAST32     "u"
#define PRIuLEAST64     "llu"

#define PRIuFAST8       "hhu"
#define PRIuFAST16      "hu"
#define PRIuFAST32      "u"
#define PRIuFAST64      "llu"

#define PRIuMAX         "llu"
#define PRIuPTR         "u"

#define PRIx8           "hhx"
#define PRIx16          "hx"
#define PRIx32          "x"
#define PRIx64          "llx"

#define PRIxLEAST8      "hhx"
#define PRIxLEAST16     "hx"
#define PRIxLEAST32     "x"
#define PRIxLEAST64     "llx"

#define PRIxFAST8       "hhx"
#define PRIxFAST16      "hx"
#define PRIxFAST32      "x"
#define PRIxFAST64      "llx"

#define PRIxMAX         "llx"
#define PRIxPTR         "x"

#define PRIX8           "hhX"
#define PRIX16          "hX"
#define PRIX32          "X"
#define PRIX64          "llX"

#define PRIXLEAST8      "hhX"
#define PRIXLEAST16     "hX"
#define PRIXLEAST32     "X"
#define PRIXLEAST64     "llX"

#define PRIXFAST8       "hhX"
#define PRIXFAST16      "hX"
#define PRIXFAST32      "X"
#define PRIXFAST64      "llX"

#define PRIXMAX         "llX"
#define PRIXPTR         "X"

/* 4: fscanf macros for signed integers */
#define SCNd8           "hhd"
#define SCNd16          "hd"
#define SCNd32          "d"
#define SCNd64          "lld"

#define SCNdLEAST8      "hhd"
#define SCNdLEAST16     "hd"
#define SCNdLEAST32     "d"
#define SCNdLEAST64     "lld"

#define SCNdFAST8       "hhd"
#define SCNdFAST16      "hd"
#define SCNdFAST32      "d"
#define SCNdFAST64      "lld"

#define SCNdMAX         "lld"
#define SCNdPTR         "d"

#define SCNi8           "hhi"
#define SCNi16          "hi"
#define SCNi32          "i"
#define SCNi64          "lli"

#define SCNiLEAST8      "hhi"
#define SCNiLEAST16     "hi"
#define SCNiLEAST32     "i"
#define SCNiLEAST64     "lli"

#define SCNiFAST8       "hhi"
#define SCNiFAST16      "hi"
#define SCNiFAST32      "i"
#define SCNiFAST64      "lli"

#define SCNiMAX         "lli"
#define SCNiPTR         "i"

/* 5: fscanf macros for unsigned integers */
#define SCNo8           "hho"
#define SCNo16          "ho"
#define SCNo32          "o"
#define SCNo64          "llo"

#define SCNoLEAST8      "hho"
#define SCNoLEAST16     "ho"
#define SCNoLEAST32     "o"
#define SCNoLEAST64     "llo"

#define SCNoFAST8       "hho"
#define SCNoFAST16      "ho"
#define SCNoFAST32      "o"
#define SCNoFAST64      "llo"

#define SCNoMAX         "llo"
#define SCNoPTR         "o"

#define SCNu8           "hhu"
#define SCNu16          "hu"
#define SCNu32          "u"
#define SCNu64          "llu"

#define SCNuLEAST8      "hhu"
#define SCNuLEAST16     "hu"
#define SCNuLEAST32     "u"
#define SCNuLEAST64     "llu"

#define SCNuFAST8       "hhu"
#define SCNuFAST16      "hu"
#define SCNuFAST32      "u"
#define SCNuFAST64      "llu"

#define SCNuMAX         "llu"
#define SCNuPTR         "u"

#define SCNx8           "hhx"
#define SCNx16          "hx"
#define SCNx32          "x"
#define SCNx64          "llx"

#define SCNxLEAST8      "hhx"
#define SCNxLEAST16     "hx"
#define SCNxLEAST32     "x"
#define SCNxLEAST64     "llx"

#define SCNxFAST8       "hhx"
#define SCNxFAST16      "hx"
#define SCNxFAST32      "x"
#define SCNxFAST64      "llx"

#define SCNxMAX         "llx"
#define SCNxPTR         "x"

#endif

/*
 * 7.8.2 Functions for greatest-width integer types
 */
extern  intmax_t        imaxabs(intmax_t j);
extern  imaxdiv_t       imaxdiv(intmax_t numer, intmax_t denom);
extern  intmax_t        strtoimax(const char * restrict nptr, char ** restrict endptr, int base);
extern  uintmax_t       strtoumax(const char * restrict nptr, char ** restrict endptr, int base);
extern  intmax_t        wcstoimax(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base);
extern  uintmax_t       wcstoumax(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base);

#ifdef  __cplusplus
}
#endif  /* defined(__cplusplus) */

#endif  /* _INTTYPES_H */

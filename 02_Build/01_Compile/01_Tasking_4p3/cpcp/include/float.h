/**************************************************************************
**                                                                        *
**  FILE        :  float.h                                                *
**                                                                        *
**  DESCRIPTION :  Floating point characteristics                         *
**                                                                        *
|*  Copyright 1997-2014 Altium BV
**                                                                        *
**************************************************************************/

#ifndef	_FLOAT_H
#define	_FLOAT_H	1

#ifdef	__cplusplus
extern "C" {
#endif	/* defined(__cplusplus) */

/*
 * IEEE-754-1985 Format values:
 */
#define	FLT_RADIX	(2)
#define	FLT_ROUNDS	(1)	/* round to nearest */
#define	FLT_EVAL_METHOD	(0)

#define	FLT_MANT_DIG	(24)
#define	FLT_DIG		(6)
#define	FLT_EPSILON	(1.19209290E-07F)
#define	FLT_MIN		(1.17549435E-38F)
#define	FLT_MIN_EXP	(-125)
#define	FLT_MIN_10_EXP	(-37)
#define	FLT_MAX		(3.40282347E+38F)
#define	FLT_MAX_EXP	(+128)
#define	FLT_MAX_10_EXP	(+38)

#ifndef __SINGLE_FP__
#define	DBL_MANT_DIG	(53)
#define	DBL_DIG		(15)
#define	DBL_EPSILON	(2.2204460492503131E-16)
#define	DBL_MIN		(2.2250738585072014E-308)
#define	DBL_MIN_EXP	(-1021)
#define	DBL_MIN_10_EXP	(-307)
#define	DBL_MAX		(1.7976931348623157E+308)
#define	DBL_MAX_EXP	(+1024)
#define	DBL_MAX_10_EXP	(+308)
#define	DECIMAL_DIG	(17)
#else
#define	DBL_MANT_DIG	(FLT_MANT_DIG)
#define	DBL_DIG		(FLT_DIG)
#define	DBL_MIN_10_EXP	(FLT_MIN_10_EXP)
#define	DBL_MAX_10_EXP	(FLT_MAX_10_EXP)
#define	DBL_EPSILON	(FLT_EPSILON)
#define	DBL_MIN		(FLT_MIN)
#define	DBL_MAX		(FLT_MAX)
#define	DBL_MIN_EXP	(FLT_MIN_EXP)
#define	DBL_MAX_EXP	(FLT_MAX_EXP)
#define	DECIMAL_DIG	(10)
#endif

#define	LDBL_DIG	(DBL_DIG)
#define	LDBL_MANT_DIG	(DBL_MANT_DIG)
#define	LDBL_MIN_10_EXP	(DBL_MIN_10_EXP)
#define	LDBL_MAX_10_EXP	(DBL_MAX_10_EXP)
#define	LDBL_EPSILON	(DBL_EPSILON)
#define	LDBL_MIN	(DBL_MIN)
#define	LDBL_MAX	(DBL_MAX)
#define	LDBL_MIN_EXP	(DBL_MIN_EXP)
#define	LDBL_MAX_EXP	(DBL_MAX_EXP)

/*
 * A subset of the IEEE-754-1985 Recommended Functions for both float and double
 */
#if	__STDC_VERSION__ < 199901L
float	copysignf( float, float );
int	isinff( float );
int	isfinitef( float );
int	isnanf( float );
float	scalbf( float, int );
double	copysign( double, double );
int	isinf( double );
int	isfinite( double );
int	isnan( double );
double	scalb( double, int );
#endif	/* __STDC_VERSION__ < 199901L */


#ifdef	__cplusplus
}
#endif	/* defined(__cplusplus) */

#endif  /* _FLOAT_H */

/* (c) HighTec EDV-Systeme GmbH */
#ifndef _TC1798_PORT11_STRUCTS_H_
#define _TC1798_PORT11_STRUCTS_H_
/*
   TriCore TC1798
   Some struct definitions for conveniance
*/

#include <tc1798/p11.h>
#ifndef P11_BASE
#define P11_BASE 0xf0001700
#endif /* P11_BASE */


typedef struct
{
    Pn_OUT_t        OUT;                /* 0x0 */
    Pn_OMR_t        OMR;                /* 0x4 */
    unsigned int    reserved2[0x2];     /* 0x8 */
    Pn_IOCRm_t      IOCR0;              /* 0x10 */
    Pn_IOCRm_t      IOCR4;              /* 0x14 */
    Pn_IOCRm_t      IOCR8;              /* 0x18 */
    Pn_IOCRm_t      IOCR12;             /* 0x1c */
    unsigned int    reserved7[0x1];     /* 0x20 */
    Pn_IN_t         IN;                 /* 0x24 */
    unsigned int    reserved9[0x6];     /* 0x28 */
    Pn_PDRm_t       PDR0;               /* 0x40 */
    Pn_PDRm_t       PDR1;               /* 0x44 */
} PORT11_t;

#endif /* _TC1798_PORT11_STRUCTS_H_ */

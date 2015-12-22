/* (c) HighTec EDV-Systeme GmbH */
#ifndef _TC1724_PORT5_STRUCTS_H_
#define _TC1724_PORT5_STRUCTS_H_
/*
   TriCore TC1724
   Some struct definitions for conveniance
*/

#include <tc1724/p5.h>
#ifndef P5_BASE
#define P5_BASE 0xf0001100
#endif /* P5_BASE */


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
    P5_PDR0_t       PDR0;               /* 0x40 */
    P5_PDR1_t       PDR1;               /* 0x44 */
    unsigned int    reserved12[0x2];    /* 0x48 */
    Pn_ESR_t        ESR;                /* 0x50 */
} PORT5_t;

#endif /* _TC1724_PORT5_STRUCTS_H_ */

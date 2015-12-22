/* (c) 2000-2008 HighTec EDV-Systeme GmbH */
#ifndef _TC1797_PORT14_STRUCTS_H_
#define _TC1797_PORT14_STRUCTS_H_
/*
   TriCore TC1797
   Some struct definitions for conveniance
*/

#include <tc1797/p14.h>
#ifndef P14_BASE
#define P14_BASE 0xf0300200
#endif /* P14_BASE */


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
    P14_PDR_t       PDR;                /* 0x40 */
    unsigned int    reserved11[0x3];    /* 0x44 */
    Pn_ESR_t        ESR;                /* 0x50 */
} PORT14_t;

#endif /* _TC1797_PORT14_STRUCTS_H_ */
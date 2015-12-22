/* (c) 2000-2008 HighTec EDV-Systeme GmbH */
#ifndef _TC1797_PORT15_STRUCTS_H_
#define _TC1797_PORT15_STRUCTS_H_
/*
   TriCore TC1797
   Some struct definitions for conveniance
*/

#include <tc1797/p15.h>
#ifndef P15_BASE
#define P15_BASE 0xf0300300
#endif /* P15_BASE */


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
    P15_PDR_t       PDR;                /* 0x40 */
} PORT15_t;

#endif /* _TC1797_PORT15_STRUCTS_H_ */

/* (c) 2000-2008 HighTec EDV-Systeme GmbH */
#ifndef _HAVE_TRICORE_P5_MASKS_H_
#define _HAVE_TRICORE_P5_MASKS_H_


/****************** Masks for P5_OMR_t **********************/
/*
   P5_OMR                "Port 5 Output Modification Register"
*/
/**********************************************************/

#define P5_OMR_MASK                     0x00ff00ff
#define P5_OMR_PS0_MASK                 0x00000001
#define P5_OMR_PS0_SHIFT                0
#define P5_OMR_PS1_MASK                 0x00000002
#define P5_OMR_PS1_SHIFT                1
#define P5_OMR_PS2_MASK                 0x00000004
#define P5_OMR_PS2_SHIFT                2
#define P5_OMR_PS3_MASK                 0x00000008
#define P5_OMR_PS3_SHIFT                3
#define P5_OMR_PS4_MASK                 0x00000010
#define P5_OMR_PS4_SHIFT                4
#define P5_OMR_PS5_MASK                 0x00000020
#define P5_OMR_PS5_SHIFT                5
#define P5_OMR_PS6_MASK                 0x00000040
#define P5_OMR_PS6_SHIFT                6
#define P5_OMR_PS7_MASK                 0x00000080
#define P5_OMR_PS7_SHIFT                7
#define P5_OMR_PR0_MASK                 0x00010000
#define P5_OMR_PR0_SHIFT                16
#define P5_OMR_PR1_MASK                 0x00020000
#define P5_OMR_PR1_SHIFT                17
#define P5_OMR_PR2_MASK                 0x00040000
#define P5_OMR_PR2_SHIFT                18
#define P5_OMR_PR3_MASK                 0x00080000
#define P5_OMR_PR3_SHIFT                19
#define P5_OMR_PR4_MASK                 0x00100000
#define P5_OMR_PR4_SHIFT                20
#define P5_OMR_PR5_MASK                 0x00200000
#define P5_OMR_PR5_SHIFT                21
#define P5_OMR_PR6_MASK                 0x00400000
#define P5_OMR_PR6_SHIFT                22
#define P5_OMR_PR7_MASK                 0x00800000
#define P5_OMR_PR7_SHIFT                23



/****************** Masks for P5_PDR_t **********************/
/*
   P5_PDR                "Port 5 Pad Driver Mode Register"
*/
/**********************************************************/

#define P5_PDR_MASK                     0x77770000
#define P5_PDR_PDASC0_MASK              0x00070000
#define P5_PDR_PDASC0_SHIFT             16
#define P5_PDR_PDASC1_MASK              0x00700000
#define P5_PDR_PDASC1_SHIFT             20
#define P5_PDR_PDMSC0_MASK              0x07000000
#define P5_PDR_PDMSC0_SHIFT             24
#define P5_PDR_PDMSC1_MASK              0x70000000
#define P5_PDR_PDMSC1_SHIFT             28




#endif /* _HAVE_TRICORE_P5_MASKS_H_ */


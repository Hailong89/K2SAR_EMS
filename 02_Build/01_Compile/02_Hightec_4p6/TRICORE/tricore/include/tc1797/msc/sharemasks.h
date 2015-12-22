/* (c) 2000-2008 HighTec EDV-Systeme GmbH */
#ifndef _HAVE_TRICORE_MSC_SHAREMASKS_H_
#define _HAVE_TRICORE_MSC_SHAREMASKS_H_


/****************** Masks for MSCn_CLC_t **********************/
/*
   MSC0_CLC              "MSC0 Clock Control Register"
   MSC1_CLC              "MSC1 Clock Control Register"
*/
/**********************************************************/

#define MSCn_CLC_MASK                   0x0000003f
#define MSCn_CLC_DISR_MASK              0x00000001
#define MSCn_CLC_DISR_SHIFT             0
#define MSCn_CLC_DISS_MASK              0x00000002
#define MSCn_CLC_DISS_SHIFT             1
#define MSCn_CLC_SPEN_MASK              0x00000004
#define MSCn_CLC_SPEN_SHIFT             2
#define MSCn_CLC_EDIS_MASK              0x00000008
#define MSCn_CLC_EDIS_SHIFT             3
#define MSCn_CLC_SBWE_MASK              0x00000010
#define MSCn_CLC_SBWE_SHIFT             4
#define MSCn_CLC_FSOE_MASK              0x00000020
#define MSCn_CLC_FSOE_SHIFT             5



/****************** Masks for MSCn_DC_t **********************/
/*
   MSC0_DC               "Downstream Command Register"
   MSC1_DC               "Downstream Command Register"
*/
/**********************************************************/

#define MSCn_DC_MASK                    0xffffffff
#define MSCn_DC_DCL_MASK                0x0000ffff
#define MSCn_DC_DCL_SHIFT               0
#define MSCn_DC_DCH_MASK                0xffff0000
#define MSCn_DC_DCH_SHIFT               16



/****************** Masks for MSCn_DD_t **********************/
/*
   MSC0_DD               "Downstream Data Register"
   MSC1_DD               "Downstream Data Register"
*/
/**********************************************************/

#define MSCn_DD_MASK                    0xffffffff
#define MSCn_DD_DDL_MASK                0x0000ffff
#define MSCn_DD_DDL_SHIFT               0
#define MSCn_DD_DDH_MASK                0xffff0000
#define MSCn_DD_DDH_SHIFT               16



/****************** Masks for MSCn_DSC_t **********************/
/*
   MSC0_DSC              "Downstream Control Register"
   MSC1_DSC              "Downstream Control Register"
*/
/**********************************************************/

#define MSCn_DSC_MASK                   0x1f3fffff
#define MSCn_DSC_TM_MASK                0x00000001
#define MSCn_DSC_TM_SHIFT               0
#define MSCn_DSC_CP_MASK                0x00000002
#define MSCn_DSC_CP_SHIFT               1
#define MSCn_DSC_DP_MASK                0x00000004
#define MSCn_DSC_DP_SHIFT               2
#define MSCn_DSC_NDBL_MASK              0x000000f8
#define MSCn_DSC_NDBL_SHIFT             3
#define MSCn_DSC_NDBH_MASK              0x00001f00
#define MSCn_DSC_NDBH_SHIFT             8
#define MSCn_DSC_ENSELL_MASK            0x00002000
#define MSCn_DSC_ENSELL_SHIFT           13
#define MSCn_DSC_ENSELH_MASK            0x00004000
#define MSCn_DSC_ENSELH_SHIFT           14
#define MSCn_DSC_DSDIS_MASK             0x00008000
#define MSCn_DSC_DSDIS_SHIFT            15
#define MSCn_DSC_NBC_MASK               0x003f0000
#define MSCn_DSC_NBC_SHIFT              16
#define MSCn_DSC_PPD_MASK               0x1f000000
#define MSCn_DSC_PPD_SHIFT              24



/****************** Masks for MSCn_DSDSH_t **********************/
/*
   MSC0_DSDSH            "Downstream Select Data Source High Register"
   MSC1_DSDSH            "Downstream Select Data Source High Register"
*/
/**********************************************************/

#define MSCn_DSDSH_MASK                 0xffffffff
#define MSCn_DSDSH_SH0_MASK             0x00000003
#define MSCn_DSDSH_SH0_SHIFT            0
#define MSCn_DSDSH_SH1_MASK             0x0000000c
#define MSCn_DSDSH_SH1_SHIFT            2
#define MSCn_DSDSH_SH2_MASK             0x00000030
#define MSCn_DSDSH_SH2_SHIFT            4
#define MSCn_DSDSH_SH3_MASK             0x000000c0
#define MSCn_DSDSH_SH3_SHIFT            6
#define MSCn_DSDSH_SH4_MASK             0x00000300
#define MSCn_DSDSH_SH4_SHIFT            8
#define MSCn_DSDSH_SH5_MASK             0x00000c00
#define MSCn_DSDSH_SH5_SHIFT            10
#define MSCn_DSDSH_SH6_MASK             0x00003000
#define MSCn_DSDSH_SH6_SHIFT            12
#define MSCn_DSDSH_SH7_MASK             0x0000c000
#define MSCn_DSDSH_SH7_SHIFT            14
#define MSCn_DSDSH_SH8_MASK             0x00030000
#define MSCn_DSDSH_SH8_SHIFT            16
#define MSCn_DSDSH_SH9_MASK             0x000c0000
#define MSCn_DSDSH_SH9_SHIFT            18
#define MSCn_DSDSH_SH10_MASK            0x00300000
#define MSCn_DSDSH_SH10_SHIFT           20
#define MSCn_DSDSH_SH11_MASK            0x00c00000
#define MSCn_DSDSH_SH11_SHIFT           22
#define MSCn_DSDSH_SH12_MASK            0x03000000
#define MSCn_DSDSH_SH12_SHIFT           24
#define MSCn_DSDSH_SH13_MASK            0x0c000000
#define MSCn_DSDSH_SH13_SHIFT           26
#define MSCn_DSDSH_SH14_MASK            0x30000000
#define MSCn_DSDSH_SH14_SHIFT           28
#define MSCn_DSDSH_SH15_MASK            0xc0000000
#define MSCn_DSDSH_SH15_SHIFT           30



/****************** Masks for MSCn_DSDSL_t **********************/
/*
   MSC0_DSDSL            "Downstream Select Data Source Low Register"
   MSC1_DSDSL            "Downstream Select Data Source Low Register"
*/
/**********************************************************/

#define MSCn_DSDSL_MASK                 0xffffffff
#define MSCn_DSDSL_SL0_MASK             0x00000003
#define MSCn_DSDSL_SL0_SHIFT            0
#define MSCn_DSDSL_SL1_MASK             0x0000000c
#define MSCn_DSDSL_SL1_SHIFT            2
#define MSCn_DSDSL_SL2_MASK             0x00000030
#define MSCn_DSDSL_SL2_SHIFT            4
#define MSCn_DSDSL_SL3_MASK             0x000000c0
#define MSCn_DSDSL_SL3_SHIFT            6
#define MSCn_DSDSL_SL4_MASK             0x00000300
#define MSCn_DSDSL_SL4_SHIFT            8
#define MSCn_DSDSL_SL5_MASK             0x00000c00
#define MSCn_DSDSL_SL5_SHIFT            10
#define MSCn_DSDSL_SL6_MASK             0x00003000
#define MSCn_DSDSL_SL6_SHIFT            12
#define MSCn_DSDSL_SL7_MASK             0x0000c000
#define MSCn_DSDSL_SL7_SHIFT            14
#define MSCn_DSDSL_SL8_MASK             0x00030000
#define MSCn_DSDSL_SL8_SHIFT            16
#define MSCn_DSDSL_SL9_MASK             0x000c0000
#define MSCn_DSDSL_SL9_SHIFT            18
#define MSCn_DSDSL_SL10_MASK            0x00300000
#define MSCn_DSDSL_SL10_SHIFT           20
#define MSCn_DSDSL_SL11_MASK            0x00c00000
#define MSCn_DSDSL_SL11_SHIFT           22
#define MSCn_DSDSL_SL12_MASK            0x03000000
#define MSCn_DSDSL_SL12_SHIFT           24
#define MSCn_DSDSL_SL13_MASK            0x0c000000
#define MSCn_DSDSL_SL13_SHIFT           26
#define MSCn_DSDSL_SL14_MASK            0x30000000
#define MSCn_DSDSL_SL14_SHIFT           28
#define MSCn_DSDSL_SL15_MASK            0xc0000000
#define MSCn_DSDSL_SL15_SHIFT           30



/****************** Masks for MSCn_DSS_t **********************/
/*
   MSC0_DSS              "Downstream Status Register"
   MSC1_DSS              "Downstream Status Register"
*/
/**********************************************************/

#define MSCn_DSS_MASK                   0x037f0f0f
#define MSCn_DSS_PFC_MASK               0x0000000f
#define MSCn_DSS_PFC_SHIFT              0
#define MSCn_DSS_NPTF_MASK              0x00000f00
#define MSCn_DSS_NPTF_SHIFT             8
#define MSCn_DSS_DC_MASK                0x007f0000
#define MSCn_DSS_DC_SHIFT               16
#define MSCn_DSS_DFA_MASK               0x01000000
#define MSCn_DSS_DFA_SHIFT              24
#define MSCn_DSS_CFA_MASK               0x02000000
#define MSCn_DSS_CFA_SHIFT              25



/****************** Masks for MSCn_ESR_t **********************/
/*
   MSC0_ESR              "Emergency Stop Register"
   MSC1_ESR              "Emergency Stop Register"
*/
/**********************************************************/

#define MSCn_ESR_MASK                   0xffffffff
#define MSCn_ESR_ENL0_MASK              0x00000001
#define MSCn_ESR_ENL0_SHIFT             0
#define MSCn_ESR_ENL1_MASK              0x00000002
#define MSCn_ESR_ENL1_SHIFT             1
#define MSCn_ESR_ENL2_MASK              0x00000004
#define MSCn_ESR_ENL2_SHIFT             2
#define MSCn_ESR_ENL3_MASK              0x00000008
#define MSCn_ESR_ENL3_SHIFT             3
#define MSCn_ESR_ENL4_MASK              0x00000010
#define MSCn_ESR_ENL4_SHIFT             4
#define MSCn_ESR_ENL5_MASK              0x00000020
#define MSCn_ESR_ENL5_SHIFT             5
#define MSCn_ESR_ENL6_MASK              0x00000040
#define MSCn_ESR_ENL6_SHIFT             6
#define MSCn_ESR_ENL7_MASK              0x00000080
#define MSCn_ESR_ENL7_SHIFT             7
#define MSCn_ESR_ENL8_MASK              0x00000100
#define MSCn_ESR_ENL8_SHIFT             8
#define MSCn_ESR_ENL9_MASK              0x00000200
#define MSCn_ESR_ENL9_SHIFT             9
#define MSCn_ESR_ENL10_MASK             0x00000400
#define MSCn_ESR_ENL10_SHIFT            10
#define MSCn_ESR_ENL11_MASK             0x00000800
#define MSCn_ESR_ENL11_SHIFT            11
#define MSCn_ESR_ENL12_MASK             0x00001000
#define MSCn_ESR_ENL12_SHIFT            12
#define MSCn_ESR_ENL13_MASK             0x00002000
#define MSCn_ESR_ENL13_SHIFT            13
#define MSCn_ESR_ENL14_MASK             0x00004000
#define MSCn_ESR_ENL14_SHIFT            14
#define MSCn_ESR_ENL15_MASK             0x00008000
#define MSCn_ESR_ENL15_SHIFT            15
#define MSCn_ESR_ENH0_MASK              0x00010000
#define MSCn_ESR_ENH0_SHIFT             16
#define MSCn_ESR_ENH1_MASK              0x00020000
#define MSCn_ESR_ENH1_SHIFT             17
#define MSCn_ESR_ENH2_MASK              0x00040000
#define MSCn_ESR_ENH2_SHIFT             18
#define MSCn_ESR_ENH3_MASK              0x00080000
#define MSCn_ESR_ENH3_SHIFT             19
#define MSCn_ESR_ENH4_MASK              0x00100000
#define MSCn_ESR_ENH4_SHIFT             20
#define MSCn_ESR_ENH5_MASK              0x00200000
#define MSCn_ESR_ENH5_SHIFT             21
#define MSCn_ESR_ENH6_MASK              0x00400000
#define MSCn_ESR_ENH6_SHIFT             22
#define MSCn_ESR_ENH7_MASK              0x00800000
#define MSCn_ESR_ENH7_SHIFT             23
#define MSCn_ESR_ENH8_MASK              0x01000000
#define MSCn_ESR_ENH8_SHIFT             24
#define MSCn_ESR_ENH9_MASK              0x02000000
#define MSCn_ESR_ENH9_SHIFT             25
#define MSCn_ESR_ENH10_MASK             0x04000000
#define MSCn_ESR_ENH10_SHIFT            26
#define MSCn_ESR_ENH11_MASK             0x08000000
#define MSCn_ESR_ENH11_SHIFT            27
#define MSCn_ESR_ENH12_MASK             0x10000000
#define MSCn_ESR_ENH12_SHIFT            28
#define MSCn_ESR_ENH13_MASK             0x20000000
#define MSCn_ESR_ENH13_SHIFT            29
#define MSCn_ESR_ENH14_MASK             0x40000000
#define MSCn_ESR_ENH14_SHIFT            30
#define MSCn_ESR_ENH15_MASK             0x80000000
#define MSCn_ESR_ENH15_SHIFT            31



/****************** Masks for MSCn_FDR_t **********************/
/*
   MSC0_FDR              "MSC0 Fractional Divider Register"
   MSC1_FDR              "MSC1 Fractional Divider Register"
*/
/**********************************************************/

#define MSCn_FDR_MASK                   0xf3fffbff
#define MSCn_FDR_STEP_MASK              0x000003ff
#define MSCn_FDR_STEP_SHIFT             0
#define MSCn_FDR_SM_MASK                0x00000800
#define MSCn_FDR_SM_SHIFT               11
#define MSCn_FDR_SC_MASK                0x00003000
#define MSCn_FDR_SC_SHIFT               12
#define MSCn_FDR_DM_MASK                0x0000c000
#define MSCn_FDR_DM_SHIFT               14
#define MSCn_FDR_RESULT_MASK            0x03ff0000
#define MSCn_FDR_RESULT_SHIFT           16
#define MSCn_FDR_SUSACK_MASK            0x10000000
#define MSCn_FDR_SUSACK_SHIFT           28
#define MSCn_FDR_SUSREQ_MASK            0x20000000
#define MSCn_FDR_SUSREQ_SHIFT           29
#define MSCn_FDR_ENHW_MASK              0x40000000
#define MSCn_FDR_ENHW_SHIFT             30
#define MSCn_FDR_DISCLK_MASK            0x80000000
#define MSCn_FDR_DISCLK_SHIFT           31



/****************** Masks for MSCn_ICR_t **********************/
/*
   MSC0_ICR              "Interrupt Control Register"
   MSC1_ICR              "Interrupt Control Register"
*/
/**********************************************************/

#define MSCn_ICR_MASK                   0x0000fbbf
#define MSCn_ICR_EDIP_MASK              0x00000003
#define MSCn_ICR_EDIP_SHIFT             0
#define MSCn_ICR_EDIE_MASK              0x0000000c
#define MSCn_ICR_EDIE_SHIFT             2
#define MSCn_ICR_ECIP_MASK              0x00000030
#define MSCn_ICR_ECIP_SHIFT             4
#define MSCn_ICR_ECIE_MASK              0x00000080
#define MSCn_ICR_ECIE_SHIFT             7
#define MSCn_ICR_TFIP_MASK              0x00000300
#define MSCn_ICR_TFIP_SHIFT             8
#define MSCn_ICR_TFIE_MASK              0x00000800
#define MSCn_ICR_TFIE_SHIFT             11
#define MSCn_ICR_RDIP_MASK              0x00003000
#define MSCn_ICR_RDIP_SHIFT             12
#define MSCn_ICR_RDIE_MASK              0x0000c000
#define MSCn_ICR_RDIE_SHIFT             14



/****************** Masks for MSCn_ID_t **********************/
/*
   MSC0_ID               "Module Identification Register"
   MSC1_ID               "Module Identification Register"
*/
/**********************************************************/

#define MSCn_ID_MASK                    0xffffffff
#define MSCn_ID_MODREV_MASK             0x000000ff
#define MSCn_ID_MODREV_SHIFT            0
#define MSCn_ID_MODTYPE_MASK            0x0000ff00
#define MSCn_ID_MODTYPE_SHIFT           8
#define MSCn_ID_MODNUM_MASK             0xffff0000
#define MSCn_ID_MODNUM_SHIFT            16



/****************** Masks for MSCn_ISC_t **********************/
/*
   MSC0_ISC              "Interrupt Set Clear Register"
   MSC1_ISC              "Interrupt Set Clear Register"
*/
/**********************************************************/

#define MSCn_ISC_MASK                   0x007f007f
#define MSCn_ISC_CDEDI_MASK             0x00000001
#define MSCn_ISC_CDEDI_SHIFT            0
#define MSCn_ISC_CDECI_MASK             0x00000002
#define MSCn_ISC_CDECI_SHIFT            1
#define MSCn_ISC_CDTFI_MASK             0x00000004
#define MSCn_ISC_CDTFI_SHIFT            2
#define MSCn_ISC_CURDI_MASK             0x00000008
#define MSCn_ISC_CURDI_SHIFT            3
#define MSCn_ISC_CDP_MASK               0x00000010
#define MSCn_ISC_CDP_SHIFT              4
#define MSCn_ISC_CCP_MASK               0x00000020
#define MSCn_ISC_CCP_SHIFT              5
#define MSCn_ISC_CDDIS_MASK             0x00000040
#define MSCn_ISC_CDDIS_SHIFT            6
#define MSCn_ISC_SDEDI_MASK             0x00010000
#define MSCn_ISC_SDEDI_SHIFT            16
#define MSCn_ISC_SDECI_MASK             0x00020000
#define MSCn_ISC_SDECI_SHIFT            17
#define MSCn_ISC_SDTFI_MASK             0x00040000
#define MSCn_ISC_SDTFI_SHIFT            18
#define MSCn_ISC_SURDI_MASK             0x00080000
#define MSCn_ISC_SURDI_SHIFT            19
#define MSCn_ISC_SDP_MASK               0x00100000
#define MSCn_ISC_SDP_SHIFT              20
#define MSCn_ISC_SCP_MASK               0x00200000
#define MSCn_ISC_SCP_SHIFT              21
#define MSCn_ISC_SDDIS_MASK             0x00400000
#define MSCn_ISC_SDDIS_SHIFT            22



/****************** Masks for MSCn_ISR_t **********************/
/*
   MSC0_ISR              "Interrupt Status Register"
   MSC1_ISR              "Interrupt Status Register"
*/
/**********************************************************/

#define MSCn_ISR_MASK                   0x0000000f
#define MSCn_ISR_DEDI_MASK              0x00000001
#define MSCn_ISR_DEDI_SHIFT             0
#define MSCn_ISR_DECI_MASK              0x00000002
#define MSCn_ISR_DECI_SHIFT             1
#define MSCn_ISR_DTFI_MASK              0x00000004
#define MSCn_ISR_DTFI_SHIFT             2
#define MSCn_ISR_URDI_MASK              0x00000008
#define MSCn_ISR_URDI_SHIFT             3



/****************** Masks for MSCn_OCR_t **********************/
/*
   MSC0_OCR              "Output Control Register"
   MSC1_OCR              "Output Control Register"
*/
/**********************************************************/

#define MSCn_OCR_MASK                   0x00077f0f
#define MSCn_OCR_CLP_MASK               0x00000001
#define MSCn_OCR_CLP_SHIFT              0
#define MSCn_OCR_SLP_MASK               0x00000002
#define MSCn_OCR_SLP_SHIFT              1
#define MSCn_OCR_CSLP_MASK              0x00000004
#define MSCn_OCR_CSLP_SHIFT             2
#define MSCn_OCR_ILP_MASK               0x00000008
#define MSCn_OCR_ILP_SHIFT              3
#define MSCn_OCR_CLKCTRL_MASK           0x00000100
#define MSCn_OCR_CLKCTRL_SHIFT          8
#define MSCn_OCR_CSL_MASK               0x00000600
#define MSCn_OCR_CSL_SHIFT              9
#define MSCn_OCR_CSH_MASK               0x00001800
#define MSCn_OCR_CSH_SHIFT              11
#define MSCn_OCR_CSC_MASK               0x00006000
#define MSCn_OCR_CSC_SHIFT              13
#define MSCn_OCR_SDISEL_MASK            0x00070000
#define MSCn_OCR_SDISEL_SHIFT           16



/****************** Masks for MSCn_SRCm_t **********************/
/*
   MSC0_SRC0             "Service Request Control Register 0"
   MSC0_SRC1             "Service Request Control Register 1"
   MSC1_SRC0             "Service Request Control Register 0"
   MSC1_SRC1             "Service Request Control Register 1"
*/
/**********************************************************/

#define MSCn_SRCm_MASK                  0x0000f4ff
#define MSCn_SRCm_SRPN_MASK             0x000000ff
#define MSCn_SRCm_SRPN_SHIFT            0
#define MSCn_SRCm_TOS_MASK              0x00000400
#define MSCn_SRCm_TOS_SHIFT             10
#define MSCn_SRCm_SRE_MASK              0x00001000
#define MSCn_SRCm_SRE_SHIFT             12
#define MSCn_SRCm_SRR_MASK              0x00002000
#define MSCn_SRCm_SRR_SHIFT             13
#define MSCn_SRCm_CLRR_MASK             0x00004000
#define MSCn_SRCm_CLRR_SHIFT            14
#define MSCn_SRCm_SETR_MASK             0x00008000
#define MSCn_SRCm_SETR_SHIFT            15



/****************** Masks for MSCn_UDm_t **********************/
/*
   MSC0_UD0              "Upstream Data Register 0"
   MSC0_UD1              "Upstream Data Register 1"
   MSC0_UD2              "Upstream Data Register 2"
   MSC0_UD3              "Upstream Data Register 3"
   MSC1_UD0              "Upstream Data Register 0"
   MSC1_UD1              "Upstream Data Register 1"
   MSC1_UD2              "Upstream Data Register 2"
   MSC1_UD3              "Upstream Data Register 3"
*/
/**********************************************************/

#define MSCn_UDm_MASK                   0x007f00ff
#define MSCn_UDm_DATA_MASK              0x000000ff
#define MSCn_UDm_DATA_SHIFT             0
#define MSCn_UDm_V_MASK                 0x00010000
#define MSCn_UDm_V_SHIFT                16
#define MSCn_UDm_P_MASK                 0x00020000
#define MSCn_UDm_P_SHIFT                17
#define MSCn_UDm_C_MASK                 0x00040000
#define MSCn_UDm_C_SHIFT                18
#define MSCn_UDm_LABF_MASK              0x00180000
#define MSCn_UDm_LABF_SHIFT             19
#define MSCn_UDm_IPF_MASK               0x00200000
#define MSCn_UDm_IPF_SHIFT              21
#define MSCn_UDm_PERR_MASK              0x00400000
#define MSCn_UDm_PERR_SHIFT             22



/****************** Masks for MSCn_USR_t **********************/
/*
   MSC0_USR              "Upstream Status Register"
   MSC1_USR              "Upstream Status Register"
*/
/**********************************************************/

#define MSCn_USR_MASK                   0x001f001f
#define MSCn_USR_UFT_MASK               0x00000001
#define MSCn_USR_UFT_SHIFT              0
#define MSCn_USR_URR_MASK               0x0000000e
#define MSCn_USR_URR_SHIFT              1
#define MSCn_USR_PCTR_MASK              0x00000010
#define MSCn_USR_PCTR_SHIFT             4
#define MSCn_USR_UC_MASK                0x001f0000
#define MSCn_USR_UC_SHIFT               16




#endif /* _HAVE_TRICORE_MSC_SHAREMASKS_H_ */


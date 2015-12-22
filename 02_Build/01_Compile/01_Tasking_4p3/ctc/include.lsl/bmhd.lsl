//
//      @(#)bmhd.lsl    1.22 13/07/11
//
//      AURIX Boot Mode Header Definition (BMHD0..3)
//
//      Usage:
//      __BMHDx_CONFIG:         Boot Mode Header configuration:
//                                      __BMHD_RESERVE (default)
//                                      __BMHD_GENERATE
//                                      __BMHD_INVALIDATE
//      __BMHDx_BMI:            Boot Mode Index:
//                                       __BMHD_BMI_HWCFG_INTERNAL (default)
//                                      __BMHD_BMI_*
//      __BMHDx_STADABM:        User code start address alternate boot mode
//                                       _START (default)
//      __BMHDx_CHKSTART:       Checksum memory range start address
//                                      _START (default)
//      __BMHDx_CHKEND:         Checksum memory range end address (excluding)
//                                      _START+4 (default)
//

//
//      The boot mode header area is reserved, it will not be flashed.
//
#define __BMHD_RESERVE                  0

//
//      Generate a boot mode header with the __BMHDx values defined.
//
#define __BMHD_GENERATE                 1

//
//      The boot mode header will be initialized, but with invalid data. 
//      This ensures that the processor will not use this boot mode header.
//
#define __BMHD_INVALIDATE               2

//
//      Disable the boot mode header initialization.
//
#define __BMHD_DISABLE                  3

//
//      Boot Mode Index values
//
#define __BMHD_BMI_PINDIS               0x0008  // Disable mode selection by HWCFG pins
#define __BMHD_BMI_HWCFG_INTERNAL       0x0070  // Internal start from Flash
#define __BMHD_BMI_HWCFG_ABM            0x0060  // Alternate Boot Mode
#define __BMHD_BMI_HWCFG_GENERIC_BSL    0x0040  // Generic Bootstrap Loader
#define __BMHD_BMI_HWCFG_ASC_BSL        0x0030  // ASC Bootstrap Loader
#define __BMHD_BMI_LCL0LSEN             0x0100  // Enabled lockstep for CPU 0
#define __BMHD_BMI_LCL1LSEN             0x0200  // Enabled lockstep for CPU 1

#define __BMHD_CHECKSUM(START,END)      checksum(crc32w,START,END)

#define __BMHD_ALIGN_DOWN(ADR,ALIGN)    ((ALIGN==0)?(ADR):((ADR)/(ALIGN)*(ALIGN)))
#define __BMHD_ALIGN_UP(ADR,ALIGN)      ((ALIGN==0)?(ADR):(((ADR)+(ALIGN)-1)/(ALIGN)*(ALIGN)))
#define __BMHD_ALIGN(ADR,ALIGN)         ((ALIGN)<0?__BMHD_ALIGN_DOWN(ADR,-1*(ALIGN)):__BMHD_ALIGN_UP(ADR,ALIGN))

#define __BMHD_HEAD(SECTION)            addressof(sect:SECTION)
#define __BMHD_TAIL(SECTION)            __BMHD_HEAD(SECTION) + 24

#define __BMHD_QUOTE__(X)               #X
#define __BMHD_QUOTE(X)                 __BMHD_QUOTE__(X)
#define __BMHD0_ADDRESS                 0xa0000000
#define __BMHD0_NAME                    bmhd0
#define __BMHD0_SECTION_NAME            __BMHD_QUOTE(__BMHD0_NAME)
#define __BMHD0_GROUP_NAME              __BMHD0_NAME
#define __BMHD0_BMHDID                  0xB359
#ifndef __BMHD0_CONFIG                  
#define __BMHD0_CONFIG                  __BMHD_RESERVE
#endif
#ifndef __BMHD0_BMI
#define __BMHD0_BMI                     __BMHD_BMI_HWCFG_INTERNAL
#endif
#ifndef __BMHD0_STADABM
#define __BMHD0_STADABM                 "_START"
#endif
#ifndef __BMHD0_CHKSTART
#define __BMHD0_CHKSTART                 "_START"
#endif
#ifndef __BMHD0_CHKEND
#define __BMHD0_CHKEND                  "_START"+4
#endif
#if ((((__BMHD0_BMI) & 0x70)==__BMHD_BMI_HWCFG_ABM) || (((__BMHD0_BMI) & __BMHD_BMI_PINDIS)==0))
#define __BMHD0_STADABM__               __BMHD0_STADABM
#define __BMHD0_CHKSTART__              __BMHD_ALIGN(__BMHD0_CHKSTART,-4)
#define __BMHD0_CHKEND__                __BMHD_ALIGN(__BMHD0_CHKEND,4)-4
#define __BMHD0_CRCRANGE                __BMHD_CHECKSUM(__BMHD0_CHKSTART__,__BMHD0_CHKEND__+4)
#else
#define __BMHD0_STADABM__               0
#define __BMHD0_CHKSTART__              0
#define __BMHD0_CHKEND__                0
#define __BMHD0_CRCRANGE                0
#endif
#define __BMHD0_ICRCRANGE               ~__BMHD0_CRCRANGE
#define __BMHD0_CRCHEAD                 __BMHD_CHECKSUM(__BMHD_HEAD(__BMHD0_SECTION_NAME),__BMHD_TAIL(__BMHD0_SECTION_NAME))
#define __BMHD0_ICRCHEAD                ~__BMHD0_CRCHEAD

#define __BMHD1_ADDRESS                 0xa0020000
#define __BMHD1_NAME                    bmhd1
#define __BMHD1_SECTION_NAME            __BMHD_QUOTE(__BMHD1_NAME)
#define __BMHD1_GROUP_NAME              __BMHD1_NAME
#define __BMHD1_BMHDID                  0xB359
#ifndef __BMHD1_CONFIG                  
#define __BMHD1_CONFIG                  __BMHD_RESERVE
#endif
#ifndef __BMHD1_BMI
#define __BMHD1_BMI                     __BMHD_BMI_HWCFG_INTERNAL
#endif
#ifndef __BMHD1_STADABM
#define __BMHD1_STADABM                 "_START"
#endif
#ifndef __BMHD1_CHKSTART
#define __BMHD1_CHKSTART                "_START"
#endif
#ifndef __BMHD1_CHKEND
#define __BMHD1_CHKEND                  "_START"+4
#endif
#if ((((__BMHD1_BMI) & 0x70)==__BMHD_BMI_HWCFG_ABM) || (((__BMHD1_BMI) & __BMHD_BMI_PINDIS)==0))
#define __BMHD1_STADABM__               __BMHD1_STADABM
#define __BMHD1_CHKSTART__              __BMHD_ALIGN(__BMHD1_CHKSTART,-4)
#define __BMHD1_CHKEND__                __BMHD_ALIGN(__BMHD1_CHKEND,4)-4
#define __BMHD1_CRCRANGE                __BMHD_CHECKSUM(__BMHD1_CHKSTART__,__BMHD1_CHKEND__+4)
#else
#define __BMHD1_STADABM__               0
#define __BMHD1_CHKSTART__              0
#define __BMHD1_CHKEND__                0
#define __BMHD1_CRCRANGE                0
#endif
#define __BMHD1_ICRCRANGE               ~__BMHD1_CRCRANGE
#define __BMHD1_CRCHEAD                 __BMHD_CHECKSUM(__BMHD_HEAD(__BMHD1_SECTION_NAME),__BMHD_TAIL(__BMHD1_SECTION_NAME))
#define __BMHD1_ICRCHEAD                ~__BMHD1_CRCHEAD

#define __BMHD2_ADDRESS                 0xa000ffe0
#define __BMHD2_NAME                    bmhd2
#define __BMHD2_SECTION_NAME            __BMHD_QUOTE(__BMHD2_NAME)
#define __BMHD2_GROUP_NAME              __BMHD2_NAME
#define __BMHD2_BMHDID                  0xB359
#ifndef __BMHD2_CONFIG                  
#define __BMHD2_CONFIG                  __BMHD_RESERVE
#endif
#ifndef __BMHD2_BMI
#define __BMHD2_BMI                     __BMHD_BMI_HWCFG_INTERNAL
#endif
#ifndef __BMHD2_STADABM
#define __BMHD2_STADABM                 "_START"
#endif
#ifndef __BMHD2_CHKSTART
#define __BMHD2_CHKSTART                "_START"
#endif
#ifndef __BMHD2_CHKEND
#define __BMHD2_CHKEND                  "_START"+4
#endif
#if ((((__BMHD2_BMI) & 0x70)==__BMHD_BMI_HWCFG_ABM) || (((__BMHD2_BMI) & __BMHD_BMI_PINDIS)==0))
#define __BMHD2_STADABM__               __BMHD2_STADABM
#define __BMHD2_CHKSTART__              __BMHD_ALIGN(__BMHD2_CHKSTART,-4)
#define __BMHD2_CHKEND__                __BMHD_ALIGN(__BMHD2_CHKEND,4)-4
#define __BMHD2_CRCRANGE                __BMHD_CHECKSUM(__BMHD2_CHKSTART__,__BMHD2_CHKEND__+4)
#else
#define __BMHD2_STADABM__               0
#define __BMHD2_CHKSTART__              0
#define __BMHD2_CHKEND__                0
#define __BMHD2_CRCRANGE                0
#endif
#define __BMHD2_ICRCRANGE               ~__BMHD2_CRCRANGE
#define __BMHD2_CRCHEAD                 __BMHD_CHECKSUM(__BMHD_HEAD(__BMHD2_SECTION_NAME),__BMHD_TAIL(__BMHD2_SECTION_NAME))
#define __BMHD2_ICRCHEAD                ~__BMHD2_CRCHEAD

#define __BMHD3_ADDRESS                 0xa001ffe0
#define __BMHD3_NAME                    bmhd3
#define __BMHD3_SECTION_NAME            __BMHD_QUOTE(__BMHD3_NAME)
#define __BMHD3_GROUP_NAME              __BMHD3_NAME
#define __BMHD3_BMHDID                  0xB359
#ifndef __BMHD3_CONFIG                  
#define __BMHD3_CONFIG                  __BMHD_RESERVE
#endif
#ifndef __BMHD3_BMI
#define __BMHD3_BMI                     __BMHD_BMI_HWCFG_INTERNAL
#endif
#ifndef __BMHD3_STADABM
#define __BMHD3_STADABM                 "_START"
#endif
#ifndef __BMHD3_CHKSTART
#define __BMHD3_CHKSTART                "_START"
#endif
#ifndef __BMHD3_CHKEND
#define __BMHD3_CHKEND                  "_START"+4
#endif
#if ((((__BMHD3_BMI) & 0x70)==__BMHD_BMI_HWCFG_ABM) || (((__BMHD3_BMI) & __BMHD_BMI_PINDIS)==0))
#define __BMHD3_STADABM__               __BMHD3_STADABM
#define __BMHD3_CHKSTART__              __BMHD_ALIGN(__BMHD3_CHKSTART,-4)
#define __BMHD3_CHKEND__                __BMHD_ALIGN(__BMHD3_CHKEND,4)-4
#define __BMHD3_CRCRANGE                __BMHD_CHECKSUM(__BMHD3_CHKSTART__,__BMHD3_CHKEND__+4)
#else
#define __BMHD3_STADABM__               0
#define __BMHD3_CHKSTART__              0
#define __BMHD3_CHKEND__                0
#define __BMHD3_CRCRANGE                0
#endif
#define __BMHD3_ICRCRANGE               ~__BMHD3_CRCRANGE
#define __BMHD3_CRCHEAD                 __BMHD_CHECKSUM(__BMHD_HEAD(__BMHD3_SECTION_NAME),__BMHD_TAIL(__BMHD3_SECTION_NAME))
#define __BMHD3_ICRCHEAD                ~__BMHD3_CRCHEAD

#define __BMHDR(N)      group __BMHD##N##_GROUP_NAME (run_addr = __BMHD##N##_ADDRESS, ordered) reserved __BMHD##N##_SECTION_NAME (size=0x20,alloc_allowed=absolute);

#define __BMHDG(N)                                                                              \
group __BMHD##N##_GROUP_NAME (run_addr = __BMHD##N##_ADDRESS, ordered)                          \
struct  __BMHD##N##_SECTION_NAME                                                                \
{                                                                                               \
        __BMHD##N##_STADABM__   :4;     /* User Code Start Address */                           \
        __BMHD##N##_BMI         :2;     /* Mode Index (BMI) */                                  \
        __BMHD##N##_BMHDID      :2;     /* Mode Header ID (Confirmation code) = B359H */        \
        __BMHD##N##_CHKSTART__  :4;     /* Memory Range to be checked, Start Address */         \
        __BMHD##N##_CHKEND__    :4;     /* Memory Range to be checked, End Address including */ \
        __BMHD##N##_CRCRANGE    :4;     /* Check Result for the Memory Range */                 \
        __BMHD##N##_ICRCRANGE   :4;     /* Inverted Check Result for the Memory Range */        \
        __BMHD##N##_CRCHEAD     :4;     /* Check Result for the ABM Header (offset 00H..17H) */ \
        __BMHD##N##_ICRCHEAD    :4;     /* Inverted Check Result for the ABM Header */          \
}

#define __BMHDZ(N)                                                              \
group __BMHD##N##_GROUP_NAME (run_addr = __BMHD##N##_ADDRESS, ordered)          \
struct  __BMHD##N##_SECTION_NAME                                                \
{                                                                               \
        0       :4;     /* User Code Start Address */                           \
        0       :2;     /* Mode Index (BMI) */                                  \
        0       :2;     /* Mode Header ID (Confirmation code) = B359H */        \
        0       :4;     /* Memory Range to be checked - Start Address */        \
        0       :4;     /* tMemory Range to be checked - End Address */         \
        0       :4;     /* Check Result for the Memory Range */                 \
        0       :4;     /* Inverted Check Result for the Memory Range */        \
        0       :4;     /* Check Result for the ABM Header (offset 00H..17H) */ \
        0       :4;     /* Inverted Check Result for the ABM Header */          \
}

#if __BMHD0_CONFIG==__BMHD_INVALIDATE && __BMHD1_CONFIG==__BMHD_INVALIDATE && __BMHD2_CONFIG==__BMHD_INVALIDATE && __BMHD3_CONFIG==__BMHD_INVALIDATE
#error  Invalidating all boot mode headers will certainly brick your device.
#endif

//
//      Generate, invalidate or reserve the BMH.
//      These BMH definitions must be inclused in a LSL section_layout.
//
#ifndef __BMHD_DISABLE_ALL__
#if __BMHD0_CONFIG==__BMHD_GENERATE
        __BMHDG(0)
#endif
#if __BMHD0_CONFIG==__BMHD_INVALIDATE
        __BMHDZ(0)
#endif
#if __BMHD0_CONFIG==__BMHD_RESERVE
        __BMHDR(0)
#endif
#if __BMHD1_CONFIG==__BMHD_GENERATE
        __BMHDG(1)
#endif
#if __BMHD1_CONFIG==__BMHD_INVALIDATE
        __BMHDZ(1)
#endif
#if __BMHD1_CONFIG==__BMHD_RESERVE
        __BMHDR(1)
#endif
#if __BMHD2_CONFIG==__BMHD_GENERATE
        __BMHDG(2)
#endif
#if __BMHD2_CONFIG==__BMHD_INVALIDATE
        __BMHDZ(2)
#endif
#if __BMHD2_CONFIG==__BMHD_RESERVE
        __BMHDR(2)
#endif
#if __BMHD3_CONFIG==__BMHD_GENERATE
        __BMHDG(3)
#endif
#if __BMHD3_CONFIG==__BMHD_INVALIDATE
        __BMHDZ(3)
#endif
#if __BMHD3_CONFIG==__BMHD_RESERVE
        __BMHDR(3)
#endif
#endif

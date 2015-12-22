//***************************************************************************
//**                                                                        *
//**  FILE        :  tc_arch.lsl                                            *
//**                                                                        *
//**  DESCRIPTION :  LSL description: Generic TriCore architecture          *
//**                                                                        *
//**  Copyright 2002-2014 Altium BV                                         *
//**                                                                        *
//***************************************************************************


#ifndef CSA
#define CSA             64              /* number of context blocks */
#endif
#ifndef HEAP
#define HEAP            16k             /* heap size */
#endif
#ifndef PCPHEAPFAR
#define PCPHEAPFAR      16k             /* pcp linear heap size */
#endif
#ifndef PCPHEAP
#define PCPHEAP         1k              /* pcp pram heap size */
#endif
#ifndef ISTACK
#define ISTACK          1k              /* interrupt stack size */
#endif
#ifndef USTACK
#define USTACK          16k             /* user stack size */
#endif
#ifndef XVWBUF
#define XVWBUF          0               /* buffer used by debugger */
#endif
#ifndef RESET
#define RESET           0xa0000000      /* reset address */
#endif
#ifndef INTTAB
#define INTTAB          0xa00f0000      /* start address of interrupt table */
#endif
#ifndef TRAPTAB
#define TRAPTAB         0xa00f2000      /* start address of trap table */
#endif
#ifndef CSA_START
#define CSA_START       0xd0004000      /* start address of CSA */
#endif
#ifndef STUBS_ALIGNMENT
#define STUBS_ALIGNMENT 0x00008000      /* alignment for stubs (32k) */
#endif
#ifndef STUBS_MAXSIZE
#define STUBS_MAXSIZE   0x00006000      /* max. size for stubs (24k)*/
#endif


/***********************************/
/* Because ECLIPSE is generating Ax_START instead of Ax_START_ADDRESS */
/***********************************/
#ifndef A0_START_ADDRESS
#ifdef  A0_START
#define A0_START_ADDRESS A0_START
#endif
#endif
#ifndef A1_START_ADDRESS
#ifdef  A1_START
#define A1_START_ADDRESS A1_START
#endif
#endif
#ifndef A8_START_ADDRESS
#ifdef  A8_START
#define A8_START_ADDRESS A8_START
#endif
#endif
#ifndef A9_START_ADDRESS
#ifdef  A9_START
#define A9_START_ADDRESS A9_START
#endif
#endif
/***********************************/


architecture TC
{
        endianness
        {
                little;
        }

        space linear
        {
                id = 1;
                mau = 8;
                map (src_offset=0x00000000, dest_offset=0x00000000, size=4G,      dest=bus:fpi_bus);
                                
                copytable
                (
                        align = 4,
                        copy_unit = 1,
                        dest = linear
                );
                
                stack "ustack"
                (
                        min_size = (USTACK),
                        fixed,
                        align = 8,
                        id = 0
                );
                
                stack "istack"
                (
                        min_size = (ISTACK),
                        fixed,
                        align = 8,
                        id = 1
                );
                
                heap "heap"
                (
                        min_size = (HEAP),
                        fixed,
                        align = 8
                );

                heap "pcp_heap_far"
                (
                        min_size = (PCPHEAPFAR),
                        fixed
                );

#ifndef __LINKONLY__
                start_address
                (
                        run_addr = (RESET),
                        symbol = "_START"
                );
#endif

                section_layout
                {
                        // define legacy labels
                        "_lc_bh" := "_lc_ub_heap";
                        "_lc_eh" := "_lc_ue_heap";
                        "_PCP__lc_ub_heap_far" := "_lc_ub_pcp_heap_far";
                        "_PCP__lc_ue_heap_far" := "_lc_ue_pcp_heap_far";
                        "_lc_cp" := "_lc_ub_table";

#if (XVWBUF>0)
                        group (align = 4) reserved "_xvwbuffer_" (size=XVWBUF, attributes=rw);
                        "_lc_ub_xvwbuffer" = "_lc_ub__xvwbuffer_";
                        "_lc_ue_xvwbuffer" = "_lc_ue__xvwbuffer_";
#endif

                        // quasi address spaces (relative to register)
                        
#ifndef __REDEFINE_BASE_ADDRESS_GROUPS
#include               "base_address_groups.lsl"
#endif

                        // vector tables
                        
                        "_lc_u_int_tab" = (INTTAB);

                        // interrupt vector table
                        group int_tab (ordered)
                        {
#                               include "inttab.lsl"
                        }

                        "_lc_u_trap_tab" = (TRAPTAB);

                        // trapvector table
                        group trap_tab (ordered)
                        {
#                               include "traptab.lsl"           
                        }
                        //
                        // CPU_TC.103 workaround:
                        // 1. Test if (start of) interrupt and trap table located at safe addresses.
                        // 2. Locate stubs at safe addresses.
                        //    The compiler generate stubs for RET, RFE, CALL and JUMP
                        //    instructions. These stubs are to be placed in
                        //    'safe' non-spram.
                        //    Definition safe addresses:
                        //    For tc1164/tc1166
                        //      tc1762/tc1764/tc1766,   address bits [14:13] != "11"
                        //      (first 24k of a 32k aligned memory)
                        //    For tc1130, address bits [15:14] != "11"
                        //      (first 48k of a 64k aligned memory)
                        //
#ifdef __CPU_TC103__

#  if (INTTAB & STUBS_MAXSIZE ) == STUBS_MAXSIZE
#    error "Interrupt vector table at non-safe addres"
#  endif
#  if (TRAPTAB & STUBS_MAXSIZE ) == STUBS_MAXSIZE
#    error "Trap vector table at non-safe addres"
#  endif

                        group (page, page_size = STUBS_ALIGNMENT[0 .. STUBS_MAXSIZE])
                        {
                                select ".text.stubs";
                        }
#endif
                        //
                        //      Do not locate PCP linear data in cached memory segments
                        //      or reserved area's. A data cache write back is required,
                        //      before the PCP can read it.
                        //
                        group pcp_linear_ram ( run_addr=[0xa0000000 .. 0xaf000000] | \
                                                        [0xd0000000 .. 0xd0008000] | \
                                                        [0xf0000000 .. 0xffffffff] )
                        {
                                select ".bss.linear";
                                select ".data.linear";
                        }
                        group pcp_linear_rom ( run_addr=[0xa0000000 .. 0xaf000000] | \
                                                        [0xd0000000 .. 0xd0008000] | \
                                                        [0xf0000000 .. 0xffffffff] )
                        {
                                select ".rodata.linear";
                        }
                }
        }
        
        space abs24
        {
                id = 2;
                mau = 8;
                map (src_offset=0x00000000, dest_offset=0x00000000, size=2M, dest=space:linear);
                map (src_offset=0x10000000, dest_offset=0x10000000, size=2M, dest=space:linear);
                map (src_offset=0x20000000, dest_offset=0x20000000, size=2M, dest=space:linear);
                map (src_offset=0x30000000, dest_offset=0x30000000, size=2M, dest=space:linear);
                map (src_offset=0x40000000, dest_offset=0x40000000, size=2M, dest=space:linear);
                map (src_offset=0x50000000, dest_offset=0x50000000, size=2M, dest=space:linear);
                map (src_offset=0x60000000, dest_offset=0x60000000, size=2M, dest=space:linear);
                map (src_offset=0x70000000, dest_offset=0x70000000, size=2M, dest=space:linear);
                map (src_offset=0x80000000, dest_offset=0x80000000, size=2M, dest=space:linear);
                map (src_offset=0x90000000, dest_offset=0x90000000, size=2M, dest=space:linear);
                map (src_offset=0xa0000000, dest_offset=0xa0000000, size=2M, dest=space:linear);
                map (src_offset=0xb0000000, dest_offset=0xb0000000, size=2M, dest=space:linear);
                map (src_offset=0xc0000000, dest_offset=0xc0000000, size=2M, dest=space:linear);
                map (src_offset=0xd0000000, dest_offset=0xd0000000, size=2M, dest=space:linear);
                map (src_offset=0xe0000000, dest_offset=0xe0000000, size=2M, dest=space:linear);
                map (src_offset=0xf0000000, dest_offset=0xf0000000, size=2M, dest=space:linear);
        }
        
        space abs18
        {
                id = 3;
                mau = 8;
                map (src_offset=0x00000000, dest_offset=0x00000000, size=16k, dest=space:linear);
                map (src_offset=0x10000000, dest_offset=0x10000000, size=16k, dest=space:linear);
                map (src_offset=0x20000000, dest_offset=0x20000000, size=16k, dest=space:linear);
                map (src_offset=0x30000000, dest_offset=0x30000000, size=16k, dest=space:linear);
                map (src_offset=0x40000000, dest_offset=0x40000000, size=16k, dest=space:linear);
                map (src_offset=0x50000000, dest_offset=0x50000000, size=16k, dest=space:linear);
                map (src_offset=0x60000000, dest_offset=0x60000000, size=16k, dest=space:linear);
                map (src_offset=0x70000000, dest_offset=0x70000000, size=16k, dest=space:linear);
                map (src_offset=0x80000000, dest_offset=0x80000000, size=16k, dest=space:linear);
                map (src_offset=0x90000000, dest_offset=0x90000000, size=16k, dest=space:linear);
                map (src_offset=0xa0000000, dest_offset=0xa0000000, size=16k, dest=space:linear);
                map (src_offset=0xb0000000, dest_offset=0xb0000000, size=16k, dest=space:linear);
                map (src_offset=0xc0000000, dest_offset=0xc0000000, size=16k, dest=space:linear);
                map (src_offset=0xd0000000, dest_offset=0xd0000000, size=16k, dest=space:linear);
                map (src_offset=0xe0000000, dest_offset=0xe0000000, size=16k, dest=space:linear);
                map (src_offset=0xf0000000, dest_offset=0xf0000000, size=16k, dest=space:linear);
        }
        
        space csa
        {
                id = 4;
                mau = 8;

                //
                // CSA area should be mapped on internal dsram
#ifdef __CPU_TC051__
                //
                // CPU_TC.051 workaround:
                // The Context Save Area address range is restricted 
                // to just 3 areas of 4k in the 24Kb scratch pad ram
                // (DMU). These areas start at an 8k boundary.
                map (src_offset=0xd0000000, dest_offset=0xd0000000, size=4k, dest=space:linear);
                map (src_offset=0xd0002000, dest_offset=0xd0002000, size=4k, dest=space:linear);
                map (src_offset=0xd0004000, dest_offset=0xd0004000, size=4k, dest=space:linear);
#else
                map (src_offset=0xd0000000, dest_offset=0xd0000000, size=4M, dest=space:linear);
#endif
                section_layout
                {
                //
                // CPU_TC.051 workaround:
                // The Context Save Area address range is restricted 
                // to just 3 areas of 4k in the 24Kb scratch pad ram
                // (DMU) of the tc1910/tc1912 and tc1920. These areas
                // start at an 8k boundary.
#ifdef __CPU_TC051__
#if (CSA <= 64)
                        group (align = 8k, attributes=rw)
                                reserved "csa.01" (size = 64 * (CSA));
                        group (align = 8k, attributes=rw)
                                reserved "csa.02" (size = 0);
                        group (align = 8k, attributes=rw)
                                reserved "csa.03" (size = 0);
#elif (CSA > 64 && CSA <= 128)
                        group (align = 8k, attributes=rw)
                                reserved "csa.01" (size = 4k);
                        group (align = 8k, attributes=rw)
                                reserved "csa.02" (size = 64 * (CSA) - 4k);
                        group (align = 8k, attributes=rw)
                                reserved "csa.03" (size = 0);
#elif (CSA > 128)
                        group (align = 8k, attributes=rw)
                                reserved "csa.01" (size = 4k);
                        group (align = 8k, attributes=rw)
                                reserved "csa.02" (size = 4k);
                        group (align = 8k, attributes=rw)
                                reserved "csa.03" (size = 64 * (CSA) - 8k);
#endif
#else
                        group (ordered, align = 64, attributes=rw, run_addr=(CSA_START))
                                reserved "csa.01" (size = 64 * (CSA));
#endif
                }
        }
                
        space pcp_code
        {
                id = 8;
                mau = 16;
                map (src_offset=0x00000000, dest_offset=0, size=0x04000000, dest=bus:pcp_code_bus);
        }
        
        space pcp_data
        {
                id = 9;
                mau = 32;
                page_size = 0x40;
                map (src_offset=0x00000000, dest_offset=0, size=0x04000000, dest=bus:pcp_data_bus);
                heap "pcp_heap"
                (
                        min_size = (PCPHEAP),
                        fixed
                );
                section_layout
                {
                        "_PCP__lc_ub_heap" := "_lc_ub_pcp_heap";
                        "_PCP__lc_ue_heap" := "_lc_ue_pcp_heap";

                        group ( align = 0x40 )
                        {
                                select ".pcpdata.*stack_data";
                        }
                } 
        }

        bus pcp_code_bus
        {
                mau = 8;
                width = 8;
        }
        
        bus pcp_data_bus
        {
                mau = 8;
                width = 8;
        }

        bus fpi_bus
        {
                mau = 8;
                width = 32;
        }
}

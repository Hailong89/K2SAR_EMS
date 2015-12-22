//****************************************************************************
//**                                                                         *
//**  FILE        :  @(#)tc26x.lsl      1.6                                                  *
//**                                                                         *
//**  DESCRIPTION :  LSL description: Infineon TC26X                         *
//**                 This AURIX derivative has 2 TriCore cores and an XC800  *
//**                                                                         *
//**  Copyright 2011-2014 Altium BV                                         *
//**                                                                         *
//****************************************************************************


#include "tc1v1_6_x.lsl"
#include "mcs_arch.lsl"

#ifndef __VSTACK_XDATA
#define __VSTACK_XDATA 1k
#endif

#include "arch51.lsl"

#ifndef XC800INIT_FILL
#define XC800INIT_FILL          0
#endif

#ifndef    __REDEFINE_ON_CHIP_ITEMS

// Specify a multi-core processor environment (mpe)

processor mpe
{
        derivative = tc26x;
}
#endif  // __REDEFINE_ON_CHIP_ITEMS

#ifndef CSA_TC0
#define CSA_TC0         64                      /* number of context blocks tc0 */
#endif

#ifndef CSA_TC1
#define CSA_TC1         64                      /* number of context blocks tc1 */
#endif


#ifndef CSA_START_TC0
#define CSA_START_TC0   0xd0004000              /* start address of CSA tc0 */
#endif

#ifndef CSA_START_TC1
#define CSA_START_TC1   0xd0004000              /* start address of CSA tc1 */
#endif


#ifndef USTACK_TC0
#define USTACK_TC0      16k                     /* user stack size tc0 */
#endif

#ifndef USTACK_TC1
#define USTACK_TC1      1k                      /* user stack size tc1 */
#endif


#ifndef ISTACK_TC0
#define ISTACK_TC0      1k                      /* interrupt stack size tc0 */
#endif

#ifndef ISTACK_TC1
#define ISTACK_TC1      1k                      /* interrupt stack size tc1 */
#endif


#ifndef XVWBUF
#define XVWBUF          0                       /* buffer used by debugger */
#endif

#ifndef INTTAB
#define INTTAB          0xa00f0000              /* start address of interrupt table */
#endif
#ifndef TRAPTAB
#define TRAPTAB         (INTTAB + 0x6000)      /* start address of trap table */
#endif

#ifndef INTTAB0
#define INTTAB0         (INTTAB)
#endif
#ifndef INTTAB1
#define INTTAB1         (INTTAB0 + 0x2000)
#endif

#ifndef TRAPTAB0
#define TRAPTAB0        (TRAPTAB)
#endif
#ifndef TRAPTAB1
#define TRAPTAB1        (TRAPTAB0 + 0x100)
#endif

#ifndef RESET
#define RESET           0xa0000020              /* internal flash start address tc0 */
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

#define DF_EEPROM_SIZE  96k
#define DF_UCB_SIZE     16k
#define DF_EEPROM_ADDR  0xaf000000
#define DF_UCB_ADDR     0xaf100000

derivative tc26x
{
        core tc0
        {
                architecture = TC1V1.6.X;
                space_id_offset = 100;  // add 100 to all space IDs in the architecture definition
                copytable_space = vtc:linear;   // use the copy table in the virtual core for 'bss' and initialized data sections
        }

        core tc1
        {
                architecture = TC1V1.6.X;
                space_id_offset = 200;  // add 200 to all space IDs in the architecture definition
                copytable_space = vtc:linear;   // use the copy table in the virtual core for 'bss' and initialized data sections
        }


        core mcs00      // core mcs00
        {
                architecture = MCS;
                copytable_space = vtc:linear;   // use the copy table in the virtual core for 'bss' and initialized data sections
        }

        core mcs01      // core mcs01
        {
                architecture = MCS;
                copytable_space = vtc:linear;   // use the copy table in the virtual core for 'bss' and initialized data sections
        }

        core mcs02      // core mcs02
        {
                architecture = MCS;
                copytable_space = vtc:linear;   // use the copy table in the virtual core for 'bss' and initialized data sections
        }


        core vtc
        {
                architecture = TC1V1.6.X;
                import tc0;                      // add all address spaces of core tc0 to core vtc for linking and locating
                import tc1;                      //                             tc1
        }

        core xc800
        {
                architecture = c51;
        }

        bus sri
        {
                mau = 8;
                width = 32;

                // map shared addresses one-to-one to real cores and virtual cores
                map (dest=bus:tc0:fpi_bus, src_offset=0, dest_offset=0, size=0x50000000 + 1*0x10000000);
                map (dest=bus:tc1:fpi_bus, src_offset=0, dest_offset=0, size=0x50000000 + 1*0x10000000);
                map (dest=bus:vtc:fpi_bus, src_offset=0, dest_offset=0, size=0x50000000 + 1*0x10000000);

                // map shared addresses one-to-one to real cores and virtual cores
                map (dest=bus:tc0:fpi_bus, src_offset=0x80000000, dest_offset=0x80000000, size=0x40000000);
                map (dest=bus:tc1:fpi_bus, src_offset=0x80000000, dest_offset=0x80000000, size=0x40000000);
                map (dest=bus:vtc:fpi_bus, src_offset=0x80000000, dest_offset=0x80000000, size=0x40000000);

                // map shared addresses one-to-one to real cores and virtual
                map (dest=bus:tc0:fpi_bus, src_offset=0xe0000000, dest_offset=0xe0000000, size=0x20000000);
                map (dest=bus:tc1:fpi_bus, src_offset=0xe0000000, dest_offset=0xe0000000, size=0x20000000);
                map (dest=bus:vtc:fpi_bus, src_offset=0xe0000000, dest_offset=0xe0000000, size=0x20000000);
                
                // map local memory
                map (dest=bus:tc0:fpi_bus, src_offset=0x70000000, dest_offset=0x70000000, size=0x00100000, priority=1, exec_priority=0);
                map (dest=bus:tc1:fpi_bus, src_offset=0x60000000, dest_offset=0x60000000, size=0x00100000, priority=1, exec_priority=0);
                map (dest=bus:tc0:fpi_bus, src_offset=0x70100000, dest_offset=0x70100000, size=0x10000000-0x00100000, exec_priority=1);
                map (dest=bus:tc1:fpi_bus, src_offset=0x60100000, dest_offset=0x60100000, size=0x10000000-0x00100000, exec_priority=1);
                map (dest=bus:vtc:fpi_bus, src_offset=0x50000000 + 1*0x10000000, dest_offset=0x50000000 + 1*0x10000000, size=2*0x10000000);
                map (dest=bus:tc0:fpi_bus, src_offset=0x60000000, dest_offset=0x60000000, size=0x10000000);
                map (dest=bus:tc1:fpi_bus, src_offset=0x70000000, dest_offset=0x70000000, size=0x10000000);
        }

        bus aei
        {
                mau = 8;
                width = 32;
                map (dest=bus:sri, dest_offset=0, size=0x100000000);
        }
#ifndef    __REDEFINE_ON_CHIP_ITEMS

        memory dspr0 // Data Scratch Pad Ram
        {
                mau = 8;
                size = 72k;
                type = ram;
                map (dest=bus:tc0:fpi_bus, dest_offset=0xd0000000, size=72k, priority=1, exec_priority=0);
                map (dest=bus:sri, dest_offset=0x70000000, size=72k);
        }

        memory pspr0 // Program Scratch Pad Ram
        {
                mau = 8;
                size = 16k;
                type = ram;
                map (dest=bus:tc0:fpi_bus, dest_offset=0xc0000000, size=16k, exec_priority=1);
                map (dest=bus:sri, dest_offset=0x70100000, size=16k);
        }

        memory dspr1 // Data Scratch Pad Ram
        {
                mau = 8;
                size = 120k;
                type = ram;
                map (dest=bus:tc1:fpi_bus, dest_offset=0xd0000000, size=120k, priority=1, exec_priority=0);
                map (dest=bus:sri, dest_offset=0x60000000, size=120k);
        }

        memory pspr1 // Program Scratch Pad Ram
        {
                mau = 8;
                size = 32k;
                type = ram;
                map (dest=bus:tc1:fpi_bus, dest_offset=0xc0000000, size=32k, exec_priority=1);
                map (dest=bus:sri, dest_offset=0x60100000, size=32k);
        }

        memory pflash0
        {
                mau = 8;
                size = 1M;
                type = rom;
                map     cached (dest=bus:sri, dest_offset=0x80000000,           size=1M);
                map not_cached (dest=bus:sri, dest_offset=0xa0000000, reserved, size=1M);
        }

        memory pflash1
        {
                mau = 8;
                size = 1536k;   // 1.5M
                type = rom;
                map     cached (dest=bus:sri, dest_offset=0x80100000,           size=1536k);
                map not_cached (dest=bus:sri, dest_offset=0xa0100000, reserved, size=1536k);
        }

        memory brom
        {
                mau = 8;
                size = 32k;
                type = reserved rom;
                map     cached (dest=bus:sri, dest_offset=0x8fff8000,           size=32k);
                map not_cached (dest=bus:sri, dest_offset=0xafff8000, reserved, size=32k);
        }

        memory dflash0
        {
                mau = 8;
                size = DF_EEPROM_SIZE + DF_UCB_SIZE;
                type = reserved nvram;
                map (dest=bus:sri, src_offset=0, dest_offset=DF_EEPROM_ADDR, size=DF_EEPROM_SIZE);
                map (dest=bus:sri, src_offset=DF_EEPROM_SIZE, dest_offset=DF_UCB_ADDR, size=DF_UCB_SIZE);
        }

        memory scr_iram
        {
            mau = 8;
            type = ram;
            size = 256;
            map ( dest=bus:xc800:idata_bus, src_offset=0x0, dest_offset=0x0, size=256 );
        }
        memory scr_xram
        {
            mau = 8;
            type = nvram;
            size = 8k;
            map ( dest=bus:xc800:xdata_bus, src_offset=0x0, dest_offset=0x0, size=8k );
            map ( dest=bus:xc800:code_bus, src_offset=0x0, dest_offset=0x0, size=8k );
        }
        memory scr_bootrom
        {
            mau = 8;
            type = reserved rom;
            size = 2k;
            map ( dest=bus:xc800:code_bus, src_offset=0x0, dest_offset=0xd000, size=2k );
        }


#endif  // __REDEFINE_ON_CHIP_ITEMS
        section_setup :vtc:linear
        {
#ifndef __LINKONLY__
                start_address
                (
                        run_addr = (RESET),
                        symbol = "_START"
                );
#endif
        }

        section_setup :tc0:linear
        {
                stack "ustack_tc0"
                (
                        min_size = (USTACK_TC0),
                        fixed,
                        align = 8,
                        id = 0
                );

                stack "istack_tc0"
                (
                        min_size = (ISTACK_TC0),
                        fixed,
                        align = 8,
                        id = 1
                );
        }

        section_setup :tc1:linear
        {
                stack "ustack_tc1"
                (
                        min_size = (USTACK_TC1),
                        fixed,
                        align = 8,
                        id = 2
                );

                stack "istack_tc1"
                (
                        min_size = (ISTACK_TC1),
                        fixed,
                        align = 8,
                        id = 3
                );
        }

        section_layout :tc0:linear
        {
                "_lc_ue_ustack" := "_lc_ue_ustack_tc0"; /* common cstart interface for first or single core */
                "_lc_ue_istack" := "_lc_ue_istack_tc0"; /* common cstart interface for first or single core */
        }

        section_setup :vtc:linear
        {
                copytable
                (
                        align = 4,
                        dest = linear
                        ,
                        table
                        {
                                symbol = "_lc_ub_table_tc1";
                                space = :tc1:linear, :tc1:abs24, :tc1:abs18, :tc1:csa;
                        }
                );
        }
        section_layout :tc0:csa
        {
                group  (ordered, align = 64, attributes=rw, run_addr=(CSA_START_TC0)) 
                        reserved "csa_tc0" (size = 64 * (CSA_TC0));
                "_lc_ub_csa_01" := "_lc_ub_csa_tc0"; /* common cstart interface for first or single core */
                "_lc_ue_csa_01" := "_lc_ue_csa_tc0"; /* common cstart interface for first or single core */
        }

        section_layout :tc1:csa
        {
                group  (ordered, align = 64, attributes=rw, run_addr=(CSA_START_TC1)) 
                        reserved "csa_tc1" (size = 64 * (CSA_TC1));
        }

        section_layout :vtc:linear
        {
#if (XVWBUF>0)
                group (align = 4) reserved "_xvwbuffer_" (size=XVWBUF, attributes=rw);
                "_lc_ub_xvwbuffer" = "_lc_ub__xvwbuffer_";
                "_lc_ue_xvwbuffer" = "_lc_ue__xvwbuffer_";
#endif

#ifndef __REDEFINE_BASE_ADDRESS_GROUPS
#include        "base_address_groups.lsl"
#endif

                "_SMALL_DATA_TC0" := "_SMALL_DATA_";
                "_SMALL_DATA_TC1" := "_SMALL_DATA_";

                "_LITERAL_DATA_TC0" := "_LITERAL_DATA_";
                "_LITERAL_DATA_TC1" := "_LITERAL_DATA_";

                "_A8_DATA_TC0" := "_A8_DATA_";
                "_A8_DATA_TC1" := "_A8_DATA_";

                "_A9_DATA_TC0" := "_A9_DATA_";
                "_A9_DATA_TC1" := "_A9_DATA_";
        }

        section_layout :vtc:linear
        {
                        "_lc_u_int_tab_tc0" = (INTTAB0);
                        "_lc_u_int_tab_tc1" = (INTTAB1);
                        "_lc_u_int_tab" = "_lc_u_int_tab_tc0"; /* common cstart interface for first or single core */

                        // interrupt vector tables
                        group int_tab_tc0 (ordered)
                        {
#                               include "inttab0.lsl"
                        }
                        group int_tab_tc1 (ordered)
                        {
#                               include "inttab1.lsl"
                        }

                        "_lc_u_trap_tab_tc0" = (TRAPTAB0);
                        "_lc_u_trap_tab_tc1" = (TRAPTAB1);
                        "_lc_u_trap_tab" = "_lc_u_trap_tab_tc0"; /* common cstart interface for first or single core */

                        // trapvector tables
                        group trap_tab_tc0 (ordered)
                        {
#                               include "traptab0.lsl"           
                        }
                        group trap_tab_tc1 (ordered)
                        {
#                               include "traptab1.lsl"           
                        }
        }

        section_layout :tc0:linear
        {
                "_A9_DATA_TC2" := 0;
                "_LITERAL_DATA_TC2" := 0;
                "_A8_DATA_TC2" := 0;
                "_SMALL_DATA_TC2" := 0;
                "_lc_u_int_tab_tc2" := 0;
                "_lc_u_trap_tab_tc2" := 0;
                "_lc_ue_ustack_tc2" := 0;
                "_lc_ue_istack_tc2" := 0;
                "_lc_ub_csa_tc2" := 0;
                "_lc_ue_csa_tc2" := 0;
                "_lc_ub_table_tc2" := 0;
        }
#ifndef NOXC800INIT
        section_layout :vtc:linear
        {
                group (ordered, align=4) memcopy ".rodata.xc800init" (memory = scr_xram, fill=XC800INIT_FILL);
        }
#endif
        section_layout :vtc:linear
        {
#include        "bmhd.lsl"
        }

#ifndef    __REDEFINE_ON_CHIP_ITEMS

#include        "memdef_03_mcs.lsl"

#endif  // __REDEFINE_ON_CHIP_ITEMS

}
                                
//
//      Next macro's are required for extmem.lsl
//
#define HAS_ON_CHIP_FLASH       // This derivative has on-chip flash
#define HAS_NO_EXTERNAL_RAM     // Exclude xram_8_a

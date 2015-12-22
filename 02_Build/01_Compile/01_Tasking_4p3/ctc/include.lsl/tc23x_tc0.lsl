//****************************************************************************
//**                                                                         *
//**  FILE        :  @(#)tc23x.lsl      1.1 14/02/14                                                 *
//**                                                                         *
//**  DESCRIPTION :  LSL description: Infineon TC23X                         *
//**                                                                         *
//**  Copyright 2011-2014 Altium BV                                         *
//**                                                                         *
//****************************************************************************

#define MCS00_0RAM      0x38000


#include "tc1v1_6_x.lsl"
#include "mcs_arch.lsl"

#ifndef    __REDEFINE_ON_CHIP_ITEMS

// Specify a multi-core processor environment (mpe)

processor mpe
{
        derivative = tc23x;
}
#endif  // __REDEFINE_ON_CHIP_ITEMS

#ifndef CSA_TC0
#define CSA_TC0         64                      /* number of context blocks tc0 */
#endif


#ifndef CSA_START_TC0
#define CSA_START_TC0   0xd0004000              /* start address of CSA tc0 */
#endif


#ifndef USTACK_TC0
#define USTACK_TC0      16k                     /* user stack size tc0 */
#endif


#ifndef ISTACK_TC0
#define ISTACK_TC0      1k                      /* interrupt stack size tc0 */
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

#ifndef TRAPTAB0
#define TRAPTAB0        (TRAPTAB)
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

#define DF_EEPROM_SIZE  128k
#define DF_UCB_SIZE     16k
#define DF_EEPROM_ADDR  0xaf000000
#define DF_UCB_ADDR     0xaf100000

derivative tc23x
{
        core tc0
        {
                architecture = TC1V1.6.X;
        }


        core mcs00      // core mcs00
        {
                architecture = MCS;
                copytable_space = tc0:linear;   // use the copy table in the virtual core for 'bss' and initialized data sections
        }




        bus sri
        {
                mau = 8;
                width = 32;

                // map shared addresses one-to-one to real cores and virtual cores
                map (dest=bus:tc0:fpi_bus, src_offset=0, dest_offset=0, size=0x50000000 + 2*0x10000000);

                // map shared addresses one-to-one to real cores and virtual cores
                map (dest=bus:tc0:fpi_bus, src_offset=0x80000000, dest_offset=0x80000000, size=0x40000000);

                // map shared addresses one-to-one to real cores and virtual
                map (dest=bus:tc0:fpi_bus, src_offset=0xe0000000, dest_offset=0xe0000000, size=0x20000000);
                
                // map local memory
                map (dest=bus:tc0:fpi_bus, src_offset=0x70000000, dest_offset=0x70000000, size=0x00100000, priority=1, exec_priority=0);
                map (dest=bus:tc0:fpi_bus, src_offset=0x70100000, dest_offset=0x70100000, size=0x10000000-0x00100000, exec_priority=1);
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
                size = 184k;
                type = ram;
                map (dest=bus:tc0:fpi_bus, dest_offset=0xd0000000, size=184k, priority=2, exec_priority=0);
                map (dest=bus:sri, dest_offset=0x70000000, size=184k);
        }

        memory pspr0 // Program Scratch Pad Ram
        {
                mau = 8;
                size = 8k;
                type = ram;
                map (dest=bus:tc0:fpi_bus, dest_offset=0xc0000000, size=8k, exec_priority=2);
                map (dest=bus:sri, dest_offset=0x70100000, size=8k);
        }

        memory pflash0
        {
                mau = 8;
                size = 2M;
                type = rom;
                map     cached (dest=bus:sri, dest_offset=0x80000000,           size=2M);
                map not_cached (dest=bus:sri, dest_offset=0xa0000000, reserved, size=2M);
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

#endif  // __REDEFINE_ON_CHIP_ITEMS
        section_setup :tc0:linear
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

        section_layout :tc0:linear
        {
                "_lc_ue_ustack" := "_lc_ue_ustack_tc0"; /* common cstart interface for first or single core */
                "_lc_ue_istack" := "_lc_ue_istack_tc0"; /* common cstart interface for first or single core */
        }

        section_setup :tc0:linear
        {
                copytable
                (
                        align = 4,
                        dest = linear
                );
        }
        section_layout :tc0:csa
        {
                group  (ordered, align = 64, attributes=rw, run_addr=(CSA_START_TC0)) 
                        reserved "csa_tc0" (size = 64 * (CSA_TC0));
                "_lc_ub_csa_01" := "_lc_ub_csa_tc0"; /* common cstart interface for first or single core */
                "_lc_ue_csa_01" := "_lc_ue_csa_tc0"; /* common cstart interface for first or single core */
        }

        section_layout :tc0:linear
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

                "_LITERAL_DATA_TC0" := "_LITERAL_DATA_";

                "_A8_DATA_TC0" := "_A8_DATA_";

                "_A9_DATA_TC0" := "_A9_DATA_";
        }

        section_layout :tc0:linear
        {
                        "_lc_u_int_tab_tc0" = (INTTAB0);
                        "_lc_u_int_tab" = "_lc_u_int_tab_tc0"; /* common cstart interface for first or single core */

                        // interrupt vector tables
                        group int_tab_tc0 (ordered)
                        {
#                               include "inttab0.lsl"
                        }

                        "_lc_u_trap_tab_tc0" = (TRAPTAB0);
                        "_lc_u_trap_tab" = "_lc_u_trap_tab_tc0"; /* common cstart interface for first or single core */

                        // trapvector tables
                        group trap_tab_tc0 (ordered)
                        {
#                               include "traptab0.lsl"           
                        }
        }

        section_layout :tc0:linear
        {
                "_A9_DATA_TC1" := 0;
                "_LITERAL_DATA_TC1" := 0;
                "_A8_DATA_TC1" := 0;
                "_SMALL_DATA_TC1" := 0;
                "_lc_u_int_tab_tc1" := 0;
                "_lc_u_trap_tab_tc1" := 0;
                "_lc_ue_ustack_tc1" := 0;
                "_lc_ue_istack_tc1" := 0;
                "_lc_ub_csa_tc1" := 0;
                "_lc_ue_csa_tc1" := 0;
                "_lc_ub_table_tc1" := 0;
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
        section_layout :tc0:linear
        {
#include        "bmhd.lsl"
        }

#ifndef    __REDEFINE_ON_CHIP_ITEMS

#include        "memdef_01_mcs.lsl"

#endif  // __REDEFINE_ON_CHIP_ITEMS

}
                                
//
//      Next macro's are required for extmem.lsl
//
#define HAS_ON_CHIP_FLASH       // This derivative has on-chip flash
#define HAS_NO_EXTERNAL_RAM     // Exclude xram_8_a

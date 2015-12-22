//****************************************************************************
//**                                                                         *
//**  FILE        :  pseudo_lab_04.lsl                                       *
//**                                                                         *
//**  DESCRIPTION :  This file defines pseudo linker labels for              *
//**                 configurations with  4 MCS(-es)                         *
//**                                                                         *
//**  Copyright 2011-2014 Altium BV                                         *
//**                                                                         *
//****************************************************************************

#define GTM_BASE_ADDR           0xf0100000
#define MCS00_0RAM              0x38000
#define MCS01_0RAM              0x48000
#define MCS02_0RAM              0x58000
#define MCS03_0RAM              0x68000

#ifndef GTM_MCFG_CTRL
# define GTM_MCFG_CTRL                  0x00000000      // NO swap and NO borrow
#endif

#ifndef MCS_RAM1_EN_ADDR_MSB
# define MCS_RAM1_EN_ADDR_MSB           1               // input port level: 0 is enable, 1 is disable
#endif


#define __GTM_MCFG_CTRL_SWAP            0x1
#define __GTM_MCFG_CTRL_BORROW          0x2
#define __MCS_SWAP_MEM_MCS(c)           (((GTM_MCFG_CTRL >> ((c)*2)) & 0x3 ) ==  __GTM_MCFG_CTRL_SWAP)
#define __MCS_BORROW_MEM_MCS(c)         (((GTM_MCFG_CTRL >> ((c)*2)) & 0x3 ) ==  __GTM_MCFG_CTRL_BORROW)
#define __MCS_DEFAULT_MEM_MCS(c)        (!__MCS_SWAP_MEM_MCS(c) && !__MCS_BORROW_MEM_MCS(c))

# define __MCS_RAM0_SIZE                0x1000

#if MCS_RAM1_EN_ADDR_MSB == 1
# define __MCS_RAM1_SIZE                0x800
#else
# define __MCS_RAM1_SIZE                0x1000
#endif



// Define the memory blocks:
//

// MCS00
#if __MCS_SWAP_MEM_MCS(00)
# define __MCS00_BLOCK_1_ADDR   MCS01_0RAM - MCS00_0RAM
# define __MCS00_BLOCK_1_SIZE   __MCS_RAM0_SIZE
#endif

#if __MCS_SWAP_MEM_MCS(03)
# define __MCS00_BLOCK_0_ADDR   MCS03_0RAM - MCS00_0RAM + __MCS_RAM0_SIZE
# define __MCS00_BLOCK_0_SIZE   __MCS_RAM1_SIZE
#endif

#if __MCS_BORROW_MEM_MCS(00)
# define __MCS00_BLOCK_2_ADDR   MCS01_0RAM - MCS00_0RAM
# define __MCS00_BLOCK_2_SIZE   __MCS_RAM0_SIZE
#endif

#if __MCS_BORROW_MEM_MCS(03)
# define __MCS00_BLOCK_0_ADDR   0x0
# define __MCS00_BLOCK_0_SIZE   0x0
#endif

#ifndef __MCS00_BLOCK_0_ADDR
# define __MCS00_BLOCK_0_ADDR   0x0
#endif

#ifndef __MCS00_BLOCK_0_SIZE
# define __MCS00_BLOCK_0_SIZE   __MCS_RAM0_SIZE
#endif

#ifndef __MCS00_BLOCK_1_ADDR
# define __MCS00_BLOCK_1_ADDR   __MCS_RAM0_SIZE
#endif

#ifndef __MCS00_BLOCK_1_SIZE
# define __MCS00_BLOCK_1_SIZE   __MCS_RAM1_SIZE
#endif

#ifndef __MCS00_BLOCK_2_ADDR
# define __MCS00_BLOCK_2_ADDR   0x0
#endif

#ifndef __MCS00_BLOCK_2_SIZE
# define __MCS00_BLOCK_2_SIZE   0x0
#endif

// MCS01
#if __MCS_SWAP_MEM_MCS(01)
# define __MCS01_BLOCK_1_ADDR   MCS02_0RAM - MCS01_0RAM
# define __MCS01_BLOCK_1_SIZE   __MCS_RAM0_SIZE
#endif

#if __MCS_SWAP_MEM_MCS(00)
# define __MCS01_BLOCK_0_ADDR   MCS00_0RAM - MCS01_0RAM + __MCS_RAM0_SIZE
# define __MCS01_BLOCK_0_SIZE   __MCS_RAM1_SIZE
#endif

#if __MCS_BORROW_MEM_MCS(01)
# define __MCS01_BLOCK_2_ADDR   MCS02_0RAM - MCS01_0RAM
# define __MCS01_BLOCK_2_SIZE   __MCS_RAM0_SIZE
#endif

#if __MCS_BORROW_MEM_MCS(00)
# define __MCS01_BLOCK_0_ADDR   0x0
# define __MCS01_BLOCK_0_SIZE   0x0
#endif

#ifndef __MCS01_BLOCK_0_ADDR
# define __MCS01_BLOCK_0_ADDR   0x0
#endif

#ifndef __MCS01_BLOCK_0_SIZE
# define __MCS01_BLOCK_0_SIZE   __MCS_RAM0_SIZE
#endif

#ifndef __MCS01_BLOCK_1_ADDR
# define __MCS01_BLOCK_1_ADDR   __MCS_RAM0_SIZE
#endif

#ifndef __MCS01_BLOCK_1_SIZE
# define __MCS01_BLOCK_1_SIZE   __MCS_RAM1_SIZE
#endif

#ifndef __MCS01_BLOCK_2_ADDR
# define __MCS01_BLOCK_2_ADDR   0x0
#endif

#ifndef __MCS01_BLOCK_2_SIZE
# define __MCS01_BLOCK_2_SIZE   0x0
#endif

// MCS02
#if __MCS_SWAP_MEM_MCS(02)
# define __MCS02_BLOCK_1_ADDR   MCS03_0RAM - MCS02_0RAM
# define __MCS02_BLOCK_1_SIZE   __MCS_RAM0_SIZE
#endif

#if __MCS_SWAP_MEM_MCS(01)
# define __MCS02_BLOCK_0_ADDR   MCS01_0RAM - MCS02_0RAM + __MCS_RAM0_SIZE
# define __MCS02_BLOCK_0_SIZE   __MCS_RAM1_SIZE
#endif

#if __MCS_BORROW_MEM_MCS(02)
# define __MCS02_BLOCK_2_ADDR   MCS03_0RAM - MCS02_0RAM
# define __MCS02_BLOCK_2_SIZE   __MCS_RAM0_SIZE
#endif

#if __MCS_BORROW_MEM_MCS(01)
# define __MCS02_BLOCK_0_ADDR   0x0
# define __MCS02_BLOCK_0_SIZE   0x0
#endif

#ifndef __MCS02_BLOCK_0_ADDR
# define __MCS02_BLOCK_0_ADDR   0x0
#endif

#ifndef __MCS02_BLOCK_0_SIZE
# define __MCS02_BLOCK_0_SIZE   __MCS_RAM0_SIZE
#endif

#ifndef __MCS02_BLOCK_1_ADDR
# define __MCS02_BLOCK_1_ADDR   __MCS_RAM0_SIZE
#endif

#ifndef __MCS02_BLOCK_1_SIZE
# define __MCS02_BLOCK_1_SIZE   __MCS_RAM1_SIZE
#endif

#ifndef __MCS02_BLOCK_2_ADDR
# define __MCS02_BLOCK_2_ADDR   0x0
#endif

#ifndef __MCS02_BLOCK_2_SIZE
# define __MCS02_BLOCK_2_SIZE   0x0
#endif

// MCS03
#if __MCS_SWAP_MEM_MCS(03)
# define __MCS03_BLOCK_1_ADDR   MCS00_0RAM - MCS03_0RAM
# define __MCS03_BLOCK_1_SIZE   __MCS_RAM0_SIZE
#endif

#if __MCS_SWAP_MEM_MCS(02)
# define __MCS03_BLOCK_0_ADDR   MCS02_0RAM - MCS03_0RAM + __MCS_RAM0_SIZE
# define __MCS03_BLOCK_0_SIZE   __MCS_RAM1_SIZE
#endif

#if __MCS_BORROW_MEM_MCS(03)
# define __MCS03_BLOCK_2_ADDR   MCS00_0RAM - MCS03_0RAM
# define __MCS03_BLOCK_2_SIZE   __MCS_RAM0_SIZE
#endif

#if __MCS_BORROW_MEM_MCS(02)
# define __MCS03_BLOCK_0_ADDR   0x0
# define __MCS03_BLOCK_0_SIZE   0x0
#endif

#ifndef __MCS03_BLOCK_0_ADDR
# define __MCS03_BLOCK_0_ADDR   0x0
#endif

#ifndef __MCS03_BLOCK_0_SIZE
# define __MCS03_BLOCK_0_SIZE   __MCS_RAM0_SIZE
#endif

#ifndef __MCS03_BLOCK_1_ADDR
# define __MCS03_BLOCK_1_ADDR   __MCS_RAM0_SIZE
#endif

#ifndef __MCS03_BLOCK_1_SIZE
# define __MCS03_BLOCK_1_SIZE   __MCS_RAM1_SIZE
#endif

#ifndef __MCS03_BLOCK_2_ADDR
# define __MCS03_BLOCK_2_ADDR   0x0
#endif

#ifndef __MCS03_BLOCK_2_SIZE
# define __MCS03_BLOCK_2_SIZE   0x0
#endif


// Define pseudo linker labels:
//

        section_layout :vtc:linear
        {
#if     __MCS00_BLOCK_0_SIZE != 0
                "_lc_lb_mcs00_b0" = GTM_BASE_ADDR + MCS00_0RAM + __MCS00_BLOCK_0_ADDR;
                "_lc_le_mcs00_b0" = "_lc_lb_mcs00_b0" + __MCS00_BLOCK_0_SIZE;
                "_lc_lb_mcs00_b1" = GTM_BASE_ADDR + MCS00_0RAM + __MCS00_BLOCK_1_ADDR;
                "_lc_le_mcs00_b1" = "_lc_lb_mcs00_b1" + __MCS00_BLOCK_1_SIZE;
#else
                "_lc_lb_mcs00_b0" = 0;
                "_lc_le_mcs00_b0" = 0;
                "_lc_lb_mcs00_b1" = GTM_BASE_ADDR + MCS00_0RAM + __MCS00_BLOCK_1_ADDR;
                "_lc_le_mcs00_b1" = "_lc_lb_mcs00_b1" + __MCS00_BLOCK_1_SIZE;
#endif

#if     __MCS00_BLOCK_2_SIZE != 0
                "_lc_lb_mcs00_b2" = GTM_BASE_ADDR + MCS00_0RAM + __MCS00_BLOCK_2_ADDR;
                "_lc_le_mcs00_b2" = "_lc_lb_mcs00_b2" + __MCS00_BLOCK_2_SIZE;
#else
                "_lc_lb_mcs00_b2" = 0;
                "_lc_le_mcs00_b2" = 0;
#endif
#if     __MCS01_BLOCK_0_SIZE != 0
                "_lc_lb_mcs01_b0" = GTM_BASE_ADDR + MCS01_0RAM + __MCS01_BLOCK_0_ADDR;
                "_lc_le_mcs01_b0" = "_lc_lb_mcs01_b0" + __MCS01_BLOCK_0_SIZE;
                "_lc_lb_mcs01_b1" = GTM_BASE_ADDR + MCS01_0RAM + __MCS01_BLOCK_1_ADDR;
                "_lc_le_mcs01_b1" = "_lc_lb_mcs01_b1" + __MCS01_BLOCK_1_SIZE;
#else
                "_lc_lb_mcs01_b0" = 0;
                "_lc_le_mcs01_b0" = 0;
                "_lc_lb_mcs01_b1" = GTM_BASE_ADDR + MCS01_0RAM + __MCS01_BLOCK_1_ADDR;
                "_lc_le_mcs01_b1" = "_lc_lb_mcs01_b1" + __MCS01_BLOCK_1_SIZE;
#endif

#if     __MCS01_BLOCK_2_SIZE != 0
                "_lc_lb_mcs01_b2" = GTM_BASE_ADDR + MCS01_0RAM + __MCS01_BLOCK_2_ADDR;
                "_lc_le_mcs01_b2" = "_lc_lb_mcs01_b2" + __MCS01_BLOCK_2_SIZE;
#else
                "_lc_lb_mcs01_b2" = 0;
                "_lc_le_mcs01_b2" = 0;
#endif
#if     __MCS02_BLOCK_0_SIZE != 0
                "_lc_lb_mcs02_b0" = GTM_BASE_ADDR + MCS02_0RAM + __MCS02_BLOCK_0_ADDR;
                "_lc_le_mcs02_b0" = "_lc_lb_mcs02_b0" + __MCS02_BLOCK_0_SIZE;
                "_lc_lb_mcs02_b1" = GTM_BASE_ADDR + MCS02_0RAM + __MCS02_BLOCK_1_ADDR;
                "_lc_le_mcs02_b1" = "_lc_lb_mcs02_b1" + __MCS02_BLOCK_1_SIZE;
#else
                "_lc_lb_mcs02_b0" = 0;
                "_lc_le_mcs02_b0" = 0;
                "_lc_lb_mcs02_b1" = GTM_BASE_ADDR + MCS02_0RAM + __MCS02_BLOCK_1_ADDR;
                "_lc_le_mcs02_b1" = "_lc_lb_mcs02_b1" + __MCS02_BLOCK_1_SIZE;
#endif

#if     __MCS02_BLOCK_2_SIZE != 0
                "_lc_lb_mcs02_b2" = GTM_BASE_ADDR + MCS02_0RAM + __MCS02_BLOCK_2_ADDR;
                "_lc_le_mcs02_b2" = "_lc_lb_mcs02_b2" + __MCS02_BLOCK_2_SIZE;
#else
                "_lc_lb_mcs02_b2" = 0;
                "_lc_le_mcs02_b2" = 0;
#endif
#if     __MCS03_BLOCK_0_SIZE != 0
                "_lc_lb_mcs03_b0" = GTM_BASE_ADDR + MCS03_0RAM + __MCS03_BLOCK_0_ADDR;
                "_lc_le_mcs03_b0" = "_lc_lb_mcs03_b0" + __MCS03_BLOCK_0_SIZE;
                "_lc_lb_mcs03_b1" = GTM_BASE_ADDR + MCS03_0RAM + __MCS03_BLOCK_1_ADDR;
                "_lc_le_mcs03_b1" = "_lc_lb_mcs03_b1" + __MCS03_BLOCK_1_SIZE;
#else
                "_lc_lb_mcs03_b0" = 0;
                "_lc_le_mcs03_b0" = 0;
                "_lc_lb_mcs03_b1" = GTM_BASE_ADDR + MCS03_0RAM + __MCS03_BLOCK_1_ADDR;
                "_lc_le_mcs03_b1" = "_lc_lb_mcs03_b1" + __MCS03_BLOCK_1_SIZE;
#endif

#if     __MCS03_BLOCK_2_SIZE != 0
                "_lc_lb_mcs03_b2" = GTM_BASE_ADDR + MCS03_0RAM + __MCS03_BLOCK_2_ADDR;
                "_lc_le_mcs03_b2" = "_lc_lb_mcs03_b2" + __MCS03_BLOCK_2_SIZE;
#else
                "_lc_lb_mcs03_b2" = 0;
                "_lc_le_mcs03_b2" = 0;
#endif

// Pseudo linker labels stubs :
//
                "_lc_lb_mcs04_b0" = 0;
                "_lc_le_mcs04_b0" = 0;
                "_lc_lb_mcs04_b1" = 0;
                "_lc_le_mcs04_b1" = 0;
                "_lc_lb_mcs04_b2" = 0;
                "_lc_le_mcs04_b2" = 0;
                "_lc_lb_mcs05_b0" = 0;
                "_lc_le_mcs05_b0" = 0;
                "_lc_lb_mcs05_b1" = 0;
                "_lc_le_mcs05_b1" = 0;
                "_lc_lb_mcs05_b2" = 0;
                "_lc_le_mcs05_b2" = 0;
                "_lc_lb_mcs06_b0" = 0;
                "_lc_le_mcs06_b0" = 0;
                "_lc_lb_mcs06_b1" = 0;
                "_lc_le_mcs06_b1" = 0;
                "_lc_lb_mcs06_b2" = 0;
                "_lc_le_mcs06_b2" = 0;
                "_lc_lb_mcs07_b0" = 0;
                "_lc_le_mcs07_b0" = 0;
                "_lc_lb_mcs07_b1" = 0;
                "_lc_le_mcs07_b1" = 0;
                "_lc_lb_mcs07_b2" = 0;
                "_lc_le_mcs07_b2" = 0;
        }


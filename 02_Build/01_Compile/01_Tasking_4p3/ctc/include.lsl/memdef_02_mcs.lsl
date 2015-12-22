//****************************************************************************
//**                                                                         *
//**  FILE        :  memdef_02_mcs.lsl                                       *
//**                                                                         *
//**  DESCRIPTION :  This file contains definitions for                      *
//**                 configurations with  2 MCS(-es)                         *
//**                                                                         *
//**  Copyright 2011-2014 Altium BV                                         *
//**                                                                         *
//****************************************************************************

#define GTM_BASE_ADDR           0xf0100000
#ifndef MCS00_0RAM
#define MCS00_0RAM              0x38000
#endif
#ifndef MCS01_0RAM
#define MCS01_0RAM              0x40000
#endif

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


// Define MCS RAM offsets
//

// MCS00; (previous=01)
#if __MCS_SWAP_MEM_MCS(01)
# define __MCS00_OFFSET0                __MCS_RAM1_SIZE
# define __MCS01_OFFSET1                __MCS_RAM0_SIZE

#elif __MCS_BORROW_MEM_MCS(01)
# define __MCS00_OFFSET0                0

#endif

// MCS01; (previous=00)
#if __MCS_SWAP_MEM_MCS(00)
# define __MCS01_OFFSET0                __MCS_RAM1_SIZE
# define __MCS00_OFFSET1                __MCS_RAM0_SIZE

#elif __MCS_BORROW_MEM_MCS(00)
# define __MCS01_OFFSET0                0

#endif


// Define not yet defined MCS RAM offsets
//

#ifndef __MCS00_OFFSET0
# define __MCS00_OFFSET0                __MCS_RAM0_SIZE
#endif

#ifndef __MCS00_OFFSET1
# define __MCS00_OFFSET1                __MCS_RAM1_SIZE
#endif

#ifndef __MCS01_OFFSET0
# define __MCS01_OFFSET0                __MCS_RAM0_SIZE
#endif

#ifndef __MCS01_OFFSET1
# define __MCS01_OFFSET1                __MCS_RAM1_SIZE
#endif


// Define the cores and destination offsets to be used in the mappings
//

// instance 00 (previous=01); RAM0 block
#if __MCS_SWAP_MEM_MCS(01)
# define __MCS00_MAP0_CORE      mcs01
# define __MCS00_MAP0_ADDR      __MCS01_OFFSET0

#elif __MCS_BORROW_MEM_MCS(01)
# define __MCS00_MAP0_CORE      mcs01
# define __MCS00_MAP0_ADDR      __MCS01_OFFSET0+__MCS01_OFFSET1

#elif __MCS_DEFAULT_MEM_MCS(01)
# define __MCS00_MAP0_CORE      mcs00
# define __MCS00_MAP0_ADDR      0

#endif

// MCS00 (previous=01); RAM1 block
#if __MCS_SWAP_MEM_MCS(00)
# define __MCS00_MAP1_CORE      mcs01
# define __MCS00_MAP1_ADDR      0

#elif __MCS_BORROW_MEM_MCS(00) || __MCS_DEFAULT_MEM_MCS(00)
# define __MCS00_MAP1_CORE      mcs00
# define __MCS00_MAP1_ADDR      __MCS00_OFFSET0

#endif

// instance 01 (previous=00); RAM0 block
#if __MCS_SWAP_MEM_MCS(00)
# define __MCS01_MAP0_CORE      mcs00
# define __MCS01_MAP0_ADDR      __MCS00_OFFSET0

#elif __MCS_BORROW_MEM_MCS(00)
# define __MCS01_MAP0_CORE      mcs00
# define __MCS01_MAP0_ADDR      __MCS00_OFFSET0+__MCS00_OFFSET1

#elif __MCS_DEFAULT_MEM_MCS(00)
# define __MCS01_MAP0_CORE      mcs01
# define __MCS01_MAP0_ADDR      0

#endif

// MCS01 (previous=00); RAM1 block
#if __MCS_SWAP_MEM_MCS(01)
# define __MCS01_MAP1_CORE      mcs00
# define __MCS01_MAP1_ADDR      0

#elif __MCS_BORROW_MEM_MCS(01) || __MCS_DEFAULT_MEM_MCS(01)
# define __MCS01_MAP1_CORE      mcs01
# define __MCS01_MAP1_ADDR      __MCS01_OFFSET0

#endif


// Define the MCS memories and maps:
//

        memory mcs00
        {
                mau = 8;
                write_unit = 4;
                size = __MCS_RAM0_SIZE + __MCS_RAM1_SIZE;
                type = ram;

                map ram0 (dest=bus:aei, src_offset=0x0000, dest_offset=GTM_BASE_ADDR+MCS00_0RAM,                 size=__MCS_RAM0_SIZE);
                map ram1 (dest=bus:aei, src_offset=0x1000, dest_offset=GTM_BASE_ADDR+MCS00_0RAM+__MCS_RAM0_SIZE, size=__MCS_RAM1_SIZE);

                map mcs_ram0 (dest=bus:__MCS00_MAP0_CORE:mcs_bus, src_offset=0x0000, dest_offset=__MCS00_MAP0_ADDR, size=__MCS_RAM0_SIZE);
                map mcs_ram1 (dest=bus:__MCS00_MAP1_CORE:mcs_bus, src_offset=0x1000, dest_offset=__MCS00_MAP1_ADDR, size=__MCS_RAM1_SIZE);
        }

        memory mcs01
        {
                mau = 8;
                write_unit = 4;
                size = __MCS_RAM0_SIZE + __MCS_RAM1_SIZE;
                type = ram;

                map ram0 (dest=bus:aei, src_offset=0x0000, dest_offset=GTM_BASE_ADDR+MCS01_0RAM,                 size=__MCS_RAM0_SIZE);
                map ram1 (dest=bus:aei, src_offset=0x1000, dest_offset=GTM_BASE_ADDR+MCS01_0RAM+__MCS_RAM0_SIZE, size=__MCS_RAM1_SIZE);

                map mcs_ram0 (dest=bus:__MCS01_MAP0_CORE:mcs_bus, src_offset=0x0000, dest_offset=__MCS01_MAP0_ADDR, size=__MCS_RAM0_SIZE);
                map mcs_ram1 (dest=bus:__MCS01_MAP1_CORE:mcs_bus, src_offset=0x1000, dest_offset=__MCS01_MAP1_ADDR, size=__MCS_RAM1_SIZE);
        }


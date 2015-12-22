//****************************************************************************
//**                                                                         *
//**  FILE        :  tc1796b.lsl                                             *
//**                                                                         *
//**  DESCRIPTION :  LSL description: Infineon TC1796B                       *
//**                                                                         *
//**  Copyright 2004-2014 Altium BV                                         *
//**                                                                         *
//****************************************************************************

#include "tc1v1_3.lsl"

#define HAS_ON_CHIP_FLASH       // this derivative has on-chip flash

// Specify a single processor environment (spe)

#ifndef    __REDEFINE_ON_CHIP_ITEMS
processor spe
{
        derivative = tc1796b;
}
#endif  // __REDEFINE_ON_CHIP_ITEMS

derivative tc1796b
{
        core tc
        {
                architecture = TC1V1.3;
        }
                
        bus fpi_bus
        {
                mau = 8;
                width = 32;
                map (dest=bus:tc:fpi_bus, dest_offset=0, size=4G);
        }
        
        // Specify the on-chip local memories here:

#ifndef    __REDEFINE_ON_CHIP_ITEMS
        memory pflash
        {
                mau = 8;
                size = 2M;
                type = rom;
                speed = 2;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x80000000,           size=2M);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xa0000000, reserved, size=2M);
        }

        memory dflash
        {
                mau = 8;
                size = 128k;
                type = reserved nvram;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x8fe00000,           size=128k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xafe00000, reserved, size=128k);
        }
        
        memory brom
        {
                mau = 8;
                size = 16k;
                type = reserved rom;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x8fffc000,           size=16k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xafffc000, reserved, size=16k);
        }

        memory sram
        {
                mau = 8;
                size = 64k;
                type = reserved ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xc0000000, size=64k);
        }
                        
        memory dsram
        {
                mau = 8;
                size = 56k;
                type = ram;
                speed = 2;
                map (dest=bus:tc:fpi_bus, dest_offset=0xd0000000, size=56k);
        }

        memory dpram
        {
                mau = 8;
                size = 8k;
                type = reserved ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xd000e000, size=8k);
        }
        
        memory spram
        {
                mau = 8;
                write_unit = 2;
                type = reserved ram;
                size = 48k;
                map (dest=bus:tc:fpi_bus, dest_offset=0xd4000000, size=48k);
        }
                
        memory pram
        {
                mau = 8;
                write_unit = 4;
                size = 16k;
                type = ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xf0050000, size=16k);
                map (dest=bus:tc:pcp_data_bus, size=16k);
        }

        memory pcode
        {
                mau = 8;
                write_unit = 4;
                size = 32k;
                type = ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xf0060000, size=32k);
                map (dest=bus:tc:pcp_code_bus, size=32k);
        }
#endif  // __REDEFINE_ON_CHIP_ITEMS
                
        section_layout :tc:pcp_data
        {
                group (run_addr = 0x0, ordered, contiguous) reserved "null_pointer_protection" (size=1,alloc_allowed=absolute);
        }

}

#include "ebu_bootcfg.lsl"

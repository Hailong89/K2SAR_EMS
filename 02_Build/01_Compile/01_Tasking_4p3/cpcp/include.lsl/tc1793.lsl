//****************************************************************************
//**                                                                         *
//**  FILE        :  tc1793.lsl                                              *
//**                                                                         *
//**  DESCRIPTION :  LSL description: Infineon TC1793                        *
//**                                                                         *
//**  Copyright 2009-2014 Altium BV                                         *
//**                                                                         *
//****************************************************************************

#include "tc1v1_6.lsl"

#define HAS_ON_CHIP_FLASH       // this derivative has on-chip flash

// Specify a single processor environment (spe)

#ifndef    __REDEFINE_ON_CHIP_ITEMS
processor spe
{
        derivative = tc1793;
}
#endif  // __REDEFINE_ON_CHIP_ITEMS

derivative tc1793
{
        core tc
        {
                architecture = TC1V1.6;
        }
                
        bus fpi_bus
        {
                mau = 8;
                width = 32;
                map (dest=bus:tc:fpi_bus, dest_offset=0, size=4G);
        }
        
        // Specify the on-chip local memories here:

#ifndef    __REDEFINE_ON_CHIP_ITEMS
        memory pflash0
        {
                mau = 8;
                size = 2M;
                type = rom;
                speed = 2;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x80000000,           size=2M);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xa0000000, reserved, size=2M);
        }

        memory pflash1
        {
                mau = 8;
                size = 2M;
                type = rom;
                speed = 2;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x81000000,           size=2M);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xa1000000, reserved, size=2M);
        }

        memory dflash0
        {
                mau = 8;
                size = 96k;
                type = reserved nvram;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x8f000000,           size=96k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xaf000000, reserved, size=96k);
        }

        memory dflash1
        {
                mau = 8;
                size = 96k;
                type = reserved nvram;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x8f080000,           size=96k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xaf080000, reserved, size=96k);
        }
                        
        memory lmuram   // to be used as overlay memory
        {
                mau = 8;
                size = 128k;
                type = reserved ram;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x90000000,           size=128k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xb0000000, reserved, size=128k);
        }

        memory brom
        {
                mau = 8;
                size = 16k;
                type = reserved rom;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x8fffc000,           size=16k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xafffc000, reserved, size=16k);
        }
                
        memory dspr // Data Scratch Pad Ram; was once ldram
        {
                mau = 8;
                size = 128k;
                type = ram;
                speed = 2;
                map (dest=bus:tc:fpi_bus, dest_offset=0xd0000000, size=128k);
        }

        memory pspr // Program Scratch Pad Ram
        {
                mau = 8;
                size = 32k;
                type = reserved ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xc0000000, size=32k);
                map (dest=bus:tc:fpi_bus, dest_offset=0xc8000000, size=32k);
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

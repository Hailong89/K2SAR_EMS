//****************************************************************************
//**                                                                         *
//**  FILE        :  tc1736.lsl                                              *
//**                                                                         *
//**  DESCRIPTION :  LSL description: Infineon TC1736                        *
//**                                                                         *
//**  Copyright 2008-2014 Altium BV                                         *
//**                                                                         *
//****************************************************************************

#include "tc1v1_3_1.lsl"

#define HAS_ON_CHIP_FLASH       // this derivative has on-chip flash

// Specify a single processor environment (spe)

#ifndef    __REDEFINE_ON_CHIP_ITEMS
processor spe
{
        derivative = tc1736;
}
#endif  // __REDEFINE_ON_CHIP_ITEMS

derivative tc1736
{
        core tc
        {
                architecture = TC1V1.3.1;
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
                size = 1M;
                type = rom;
                speed = 2;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x80000000,           size=1M);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xa0000000, reserved, size=1M);
        }

        memory dflash0
        {
                mau = 8;
                size = 16k;
                type = reserved nvram;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x8fe00000,           size=16k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xafe00000, reserved, size=16k);
        }

        memory dflash1
        {
                mau = 8;
                size = 16k;
                type = reserved nvram;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x8fe10000,           size=16k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xafe10000, reserved, size=16k);
        }

        memory ovram
        {
                mau = 8;
                size = 4k;
                type = reserved ram;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x8fe80000,           size=4k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xafe80000, reserved, size=4k);
        }
                
        memory brom
        {
                mau = 8;
                size = 16k;
                type = reserved rom;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x8fffc000,           size=16k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xafffc000, reserved, size=16k);
        }
                        
        memory ldram
        {
                mau = 8;
                size = 36k;
                type = ram;
                speed = 2;
                map (dest=bus:tc:fpi_bus, dest_offset=0xd0000000, size=36k);
        }

        memory spram
        {
                mau = 8;
                size = 8k;
                type = reserved ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xd4000000, size=8k);
        }
#endif  // __REDEFINE_ON_CHIP_ITEMS
        
}

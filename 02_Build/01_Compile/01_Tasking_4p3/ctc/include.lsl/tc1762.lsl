//****************************************************************************
//**                                                                         *
//**  FILE        :  tc1762.lsl                                              *
//**                                                                         *
//**  DESCRIPTION :  LSL description: Infineon TC1762                        *
//**                                                                         *
//**  Copyright 2005-2014 Altium BV                                         *
//**                                                                         *
//****************************************************************************

#include "tc1v1_3.lsl"

#define HAS_ON_CHIP_FLASH       // this derivative has on-chip flash

// Specify a single processor environment (spe)

#ifndef    __REDEFINE_ON_CHIP_ITEMS
processor spe
{
        derivative = tc1762;
}
#endif  // __REDEFINE_ON_CHIP_ITEMS

derivative tc1762
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
                size = 1M;
                type = rom;
                speed = 2;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x80000000,           size=1M);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xa0000000, reserved, size=1M);
        }

        memory dflash0
        {
                mau = 8;
                size = 8k;
                type = reserved nvram;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x8fe00000,           size=8k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xafe00000, reserved, size=8k);
        }

        memory dflash1
        {
                mau = 8;
                size = 8k;
                type = reserved nvram;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x8fe10000,           size=8k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xafe10000, reserved, size=8k);
        }

        memory brom
        {
                mau = 8;
                size = 16k;
                type = reserved rom;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x8fffc000,           size=16k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xafffc000, reserved, size=16k);
        }
                        
        memory ovram
        {
                mau = 8;
                size = 4k;
                type = reserved ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xc0000000, size=4k);
        }
                
        memory ldram
        {
                mau = 8;
                size = 32k;
                type = ram;
                speed = 2;
                map (dest=bus:tc:fpi_bus, dest_offset=0xd0000000, size=32k);
        }

        memory spram
        {
                mau = 8;
                write_unit = 2;
                size = 8k;
                type = reserved ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xd4000000, size=8k);
        }
#endif  // __REDEFINE_ON_CHIP_ITEMS

}


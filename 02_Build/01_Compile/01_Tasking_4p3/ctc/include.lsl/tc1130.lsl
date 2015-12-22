//****************************************************************************
//**                                                                         *
//**  FILE        :  tc1130.lsl                                              *
//**                                                                         *
//**  DESCRIPTION :  LSL description: Infineon TC1130                        *
//**                                                                         *
//**  Copyright 2003-2014 Altium BV                                         *
//**                                                                         *
//****************************************************************************

#define STUBS_ALIGNMENT 0x00010000 /* alignment of stubs (64k) */
#define STUBS_MAXSIZE   0x0000C000 /* max. size of stubs (48k) */

#include "tc1v1_3.lsl"

// Single processor environment (spe)

#ifndef    __REDEFINE_ON_CHIP_ITEMS
processor spe
{
        derivative = tc1130;
}
#endif  // __REDEFINE_ON_CHIP_ITEMS

derivative tc1130
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

        // On-chip local memories

#ifndef    __REDEFINE_ON_CHIP_ITEMS
        memory lmbram
        {
                mau = 8;
                size = 64k;
                type = reserved ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xC0000000, size=64k);
        }

        memory ldram
        {
                mau = 8;
                size = 28k;
                type = ram;
                speed = 2;
                map (dest=bus:tc:fpi_bus, dest_offset=0xD0000000, size=28k);
        }

        memory spram
        {
                mau = 8;
                write_unit = 2;
                size = 32k;
                type = reserved ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xD4000000, size=32k);
        }

        memory brom
        {
                mau = 8;
                size = 16k;
                type = reserved rom;
                map (dest=bus:tc:fpi_bus, dest_offset=0xDFFFC000, size=16k);
        }
#endif  // __REDEFINE_ON_CHIP_ITEMS

}

#include "ebu_bootcfg.lsl"

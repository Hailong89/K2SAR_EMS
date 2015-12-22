//****************************************************************************
//**                                                                         *
//**  FILE        :  tc1768.lsl                                              *
//**                                                                         *
//**  DESCRIPTION :  LSL description: Infineon TC1768                        *
//**                                                                         *
//**  Copyright 2007-2014 Altium BV                                         *
//**                                                                         *
//****************************************************************************

#define HAS_NO_EXTERNAL_RAM     // Needed for template.lsl to exclude xram_a
#define HAS_ON_CHIP_FLASH       // this derivative has on-chip flash

#include "tc1v1_3_1.lsl"

// Specify a single processor environment (spe)

#ifndef    __REDEFINE_ON_CHIP_ITEMS
processor spe
{
        derivative = tc1768;
}
#endif  // __REDEFINE_ON_CHIP_ITEMS

derivative tc1768
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
        memory pflash0
        {
                mau = 8;
                size = 1536k;
                type = rom;
                speed = 2;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x80000000,           size=1536k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xa0000000, reserved, size=1536k);
        }

        memory pflash1
        {
                mau = 8;
                size = 1536k;
                type = rom;
                speed = 2;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x80400000,           size=1536k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xa0400000, reserved, size=1536k);
        }

        memory dflash0
        {
                mau = 8;
                size = 32k;
                type = reserved nvram;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x8fe00000,           size=32k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xafe00000, reserved, size=32k);
        }

        memory dflash1
        {
                mau = 8;
                size = 32k;
                type = reserved nvram;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x8fe10000,           size=32k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xafe10000, reserved, size=32k);
        }

        memory ovram
        {
                mau = 8;
                size = 8k;
                type = reserved ram;
                map     cached (dest=bus:tc:fpi_bus, dest_offset=0x8fe80000,           size=8k);
                map not_cached (dest=bus:tc:fpi_bus, dest_offset=0xafe80000, reserved, size=8k);
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
                size = 124k;
                type = ram;
                speed = 2;
                map (dest=bus:tc:fpi_bus, dest_offset=0xd0000000, size=124k);
        }

        memory spram
        {
                mau = 8;
                size = 80k;
                type = reserved ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xd4000000, size=80k);
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
                size = 24k;
                type = ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xf0060000, size=24k);
                map (dest=bus:tc:pcp_code_bus, size=24k);
        }
#endif  // __REDEFINE_ON_CHIP_ITEMS
                
        section_layout :tc:pcp_data
        {
                group (run_addr = 0x0, ordered, contiguous) reserved "null_pointer_protection" (size=1);
        }

}


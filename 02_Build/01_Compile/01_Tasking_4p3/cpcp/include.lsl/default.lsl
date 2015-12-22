//***************************************************************************
//**                                                                        *
//**  FILE        :  default.lsl                                            *
//**                                                                        *
//**  DESCRIPTION :  Default lsl file for testing purposes                  *
//**                 Use tc1796b derivative as default,                     *
//**                 extended with external memory.                         *
//**                 Set pram and pcode memory sizes to maximum.            *
//**                                                                        *
//**  Copyright 2002-2014 Altium BV                                         *
//**                                                                        *
//***************************************************************************

#include "tc1v1_3.lsl"

#define HAS_ON_CHIP_FLASH       // this derivative has on-chip flash

// Specify a single processor environment (spe)

processor spe
{
        derivative = tc1796b;
}

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
                
#include "pcpmem.lsl"

}

#include "ebu_bootcfg.lsl"

#include "extmem.lsl"

//****************************************************************************
//**                                                                         *
//**  FILE        :  tc11ib.lsl                                              *
//**                                                                         *
//**  DESCRIPTION :  LSL description: Infineon TC11IB                        *
//**                                                                         *
//**  Copyright 2003-2014 Altium BV                                         *
//**                                                                         *
//****************************************************************************

#include "tc1v1_3.lsl"

// Specify a single processor environment (spe)

#ifndef    __REDEFINE_ON_CHIP_ITEMS
processor spe
{
        derivative = tc11ib;
}
#endif  // __REDEFINE_ON_CHIP_ITEMS

derivative tc11ib
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
        memory edram
        {
                mau = 8;
                size = 512k;
                type = reserved ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xc0000000, size=512k);
                // map (dest=bus:tc:fpi_bus, dest_offset=0xe8000000, size=512k);
        }
        
        memory dsram
        {
                mau = 8;
                size = 24k;
                type = ram;
                speed = 2;
                map (dest=bus:tc:fpi_bus, dest_offset=0xd0000000, size=24k);
                // map (dest=bus:tc:fpi_bus, dest_offset=0xe8400000, size=24k);
        }
        
        memory spram
        {
                mau = 8;
                write_unit = 2;
                size = 24k;
                type = reserved ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xd4000000, size=24k);
                // map (dest=bus:tc:fpi_bus, dest_offset=0xe8500000, size=24k);
        }
                        
        memory comdram
        {
                mau = 8;
                size = 1M;
                type = reserved ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xbfe00000, size=1M);
        }

        memory brom
        {
                mau = 8;
                size = 16k;
                type = reserved rom;
                map (dest=bus:tc:fpi_bus, dest_offset=0xdfffc000, size=16k);
        }

        memory pram
        {
                mau = 8;
                write_unit = 4;
                size = 4k;
                type = ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xf0010000, size=4k);
                map (dest=bus:tc:pcp_data_bus, size=4k);
        }

        memory pcode
        {
                mau = 8;
                write_unit = 4;
                size = 16k;
                type = ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xf0020000, size=16k);
                map (dest=bus:tc:pcp_code_bus, size=16k);
        }
#endif  // __REDEFINE_ON_CHIP_ITEMS
                
        section_layout :tc:pcp_data
        {
                group (run_addr = 0x0, ordered, contiguous) reserved "null_pointer_protection" (size=1,alloc_allowed=absolute);
        }

}

#include "ebu_bootcfg.lsl"

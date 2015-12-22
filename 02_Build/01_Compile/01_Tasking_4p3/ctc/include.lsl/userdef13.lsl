//****************************************************************************
//**                                                                         *
//**  FILE        :  userdef13.lsl                                           *
//**                                                                         *
//**  DESCRIPTION :  LSL description: User Defined TriCore v1.3 Derivative   *
//**                                                                         *
//**  Copyright 2003-2014 Altium BV                                         *
//**                                                                         *
//****************************************************************************

#include "tc1v1_3.lsl"

// Specify a single processor environment (spe)

#ifndef    __REDEFINE_ON_CHIP_ITEMS
processor spe
{
        derivative = userdef13;
}
#endif  // __REDEFINE_ON_CHIP_ITEMS

derivative userdef13
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
                                
#ifndef    __REDEFINE_ON_CHIP_ITEMS
        memory csaram
        {
                mau = 8;
                size = 68k;
                type = ram;
                speed = 2;
                map (dest=bus:tc:fpi_bus, dest_offset=0xd0000000, size=68k);
        }
#endif  // __REDEFINE_ON_CHIP_ITEMS

        // Specify the on-chip local memories here:

#include "pcpmem.lsl"

}

#include "ebu_bootcfg.lsl"

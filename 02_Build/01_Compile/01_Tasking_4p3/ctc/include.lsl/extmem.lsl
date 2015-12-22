//****************************************************************************
//**                                                                         *
//**  FILE        :  extmem.lsl                                              *
//**                                                                         *
//**  DESCRIPTION :  LSL description: External memories                      *
//**                 This is just an example file: Memory sizes and          *
//**                 destination offsets should be adapted to the real       *
//**                 situation. This is application dependent.               *
//**                                                                         *
//**  Copyright 2003-2014 Altium BV                                         *
//**                                                                         *
//****************************************************************************

#ifndef HAS_ON_CHIP_FLASH       // On-chip flash is located at 0x[8a]0000000
memory xrom
{
        mau = 8;
        size = 1M;
        type = rom;

        // segment 0x8 is mapped on segment 0xa
        map     cached (dest=bus:spe:fpi_bus, dest_offset=0x80000000,           size=1M);
        map not_cached (dest=bus:spe:fpi_bus, dest_offset=0xa0000000, reserved, size=1M);
}
#endif

#ifndef HAS_NO_EXTERNAL_RAM     // No EBU or no xRam
memory xram
{
        mau = 8;
        size = 1M;
        type = ram;
        // segment 0x8 is mapped on segment 0xa
        map     cached (dest=bus:spe:fpi_bus, dest_offset=0x80400000,           size=1M);
        map not_cached (dest=bus:spe:fpi_bus, dest_offset=0xa0400000, reserved, size=1M);
}
#endif

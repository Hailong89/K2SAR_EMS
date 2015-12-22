//****************************************************************************
//**                                                                         *
//**  FILE        :  pcpmem.lsl                                              *
//**                                                                         *
//**  DESCRIPTION :  LSL description: PCP memories                           *
//**                 This is just an example file: Memory sizes and          *
//**                 destination offsets should be adapted to the real       *
//**                 situation. This is application dependent.               *
//**                                                                         *
//**  Copyright 2003-2014 Altium BV                                         *
//**                                                                         *
//****************************************************************************

#ifndef    __REDEFINE_ON_CHIP_ITEMS
        memory pram
        {
                mau = 8;
                write_unit = 4;
                size = 64k;
                type = ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xf0050000, size=64k);
                map (dest=bus:tc:pcp_data_bus, size=64k);
        }

        memory pcode
        {
                mau = 8;
                write_unit = 4;
                size = 128k;
                type = ram;
                map (dest=bus:tc:fpi_bus, dest_offset=0xf0060000, size=128k);
                map (dest=bus:tc:pcp_code_bus, size=128k);
        }
#endif  // __REDEFINE_ON_CHIP_ITEMS
                
        section_layout :tc:pcp_data
        {
                group (run_addr = 0x0, ordered, contiguous) reserved "null_pointer_protection" (size=1,alloc_allowed=absolute);
        }


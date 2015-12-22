//***************************************************************************
//**                                                                        *
//**  FILE        :  mcs_arch.lsl                                            *
//**                                                                        *
//**  DESCRIPTION :  LSL description: MCS architecture                       *
//**                                                                        *
//**  Copyright 2011-2014 Altium BV                                         *
//**                                                                        *
//***************************************************************************


architecture MCS
{
        endianness
        {
                little;
        }

        space mcs
        {
                id = 1;
                mau = 8;

                map (src_offset=0, dest_offset=0, size=0x4000, dest=bus:mcs_bus);

        }

        bus mcs_bus
        {
                mau = 8;
                width = 8;
        }

}

//****************************************************************************
//**                                                                         *
//**  FILE        :  ebu_bootcfg.lsl                                         *
//**                                                                         *
//**  DESCRIPTION :  LSL description: for EBU BOOTCFG                        *
//**                                                                         *
//**  Copyright 2007-2014 Altium BV                                         *
//**                                                                         *
//****************************************************************************

#ifndef EBU_BOOTCFG_VALUE
#define EBU_BOOTCFG_VALUE     0x800C
#endif
        // Set address for the Boot Configuration Value
        // to 'Boot memory Offset Address + alignment'
#if     !(EBU_BOOTCFG_VALUE & 0x1)
        // Address Alignment is off
#define EBU_ALIGN       4
#else
        // Address Alignment is on and 16 bit wide memory
#if     ( !(EBU_BOOTCFG_VALUE & 0x8000) )
#define EBU_ALIGN       8
#else
        // Address Alignment is on and 32 bit wide memory
#define EBU_ALIGN       16
#endif
#endif                

section_layout :tc:linear
{
        group ( ordered, contiguous, run_addr=(RESET+EBU_ALIGN) )
        {
                select "*libc.ebu_bootcfg";
        }
}

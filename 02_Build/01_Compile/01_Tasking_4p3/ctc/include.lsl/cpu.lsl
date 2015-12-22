//****************************************************************************
//**                                                                         *
//**  FILE        :  cpu.lsl                                                 *
//**                                                                         *
//**  DESCRIPTION :  Project specific Linker Script.                         *
//**                                                                         *
//**  Copyright 2007-2014 Altium BV                                         *
//**                                                                         *
//****************************************************************************

// Include the CPU specific .lsl file
// The CPU is specified by the __CPU__ macro
#ifndef __CPU__
# error No CPU defined, please link with -D__CPU__=<cpu>
#endif

#define __QUOTE_ME2(x) #x
#define __QUOTE_ME(x) __QUOTE_ME2(x)
#define CPULSL_FILE __QUOTE_ME(__CPU__.lsl)

#include CPULSL_FILE

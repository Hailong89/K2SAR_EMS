/**************************************************************************
**                                                                        *
**  FILE        :  cinit.h                                                *
**                                                                        *
**  DESCRIPTION :                                                         *
**      Initialize or clear data segments as specified by the copy-table. *
**      The copy table is an array of 4 word entries generated by the     *
**      locator:                                                          *
**                                                                        *
**      offset  0: action       - 0=end, 1=copy, 2=clear                  *
**      offset  2: write unit   - wite unit 0=byte,2=half-word,4=word.    *
**      offset  4: destination  - destination address                     *
**      offset  8: source       - source address (copy only)              *
**      offset 12: size         - length in bytes                         *
**                                                                        *
**  Copyright 1996-2014 Altium BV                                         *
**                                                                        *
**************************************************************************/

#ifndef CINIT_H
#define CINIT_H

typedef struct 
{
        unsigned int action_mwu;
        void *dst;
        void *src;
        unsigned int size;
} copytable_entry_t;

extern void _c_init_entry( copytable_entry_t* entry );

#endif /* CINIT_H*/
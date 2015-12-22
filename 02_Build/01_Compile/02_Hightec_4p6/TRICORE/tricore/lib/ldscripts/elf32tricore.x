/* Default linker script, for normal executables */
OUTPUT_FORMAT("elf32-tricore")
OUTPUT_ARCH(tricore)
ENTRY(_start)
/*
 * Define the sizes of the user and system stacks.
 */
__ISTACK_SIZE = DEFINED (__ISTACK_SIZE) ? __ISTACK_SIZE : 4K ;
__USTACK_SIZE = DEFINED (__USTACK_SIZE) ? __USTACK_SIZE : 20K ;
/*
 * The heap is the space which is used by malloc() and various other
 * functions. Below you can define the minimum amount of memory that
 * the heap should provide.
 */
__HEAP_SIZE = DEFINED (__HEAP_SIZE) ? __HEAP_SIZE : 8K ;
SECTIONS
{
  /*
   * The startup code should be placed where the CPU expects it after a reset,
   * so we try to locate it first, no matter where it appears in the list of
   * objects and libraries (note: because the wildcard pattern doesn't match
   * directories, we'll try to find crt0.o in various (sub)directories).
   */
  .startup :
  {
    KEEP (*(.startup_code))
	. = ALIGN(8);
  } > CODE_MEM =0
  /*
   * Allocate space for absolute addressable sections; this requires that
   * "ZDATA_MEM" starts at a TriCore segment (256M) and points to
   * some RAM area!  If these conditions are not met by your particular
   * hardware setup, you should either not use absolute data, or you
   * must move .zdata*,.zbss*,.bdata*,.bbss* input sections to some appropriate
   * memory area.
   */
 CORE(.zbss)  (NOLOAD) : ALIGN(8) FLAGS(aw)
  {
    ZBSS_BASE = . ;
    *(.zbss)
    *(.zbss.*)
    *(.gnu.linkonce.zb.*)
	*(.bbss)
    *(.bbss.*)
    ZBSS_END = . ;
  } > ZDATA_MEM
  CORE(.zdata)  : ALIGN(8) FLAGS(awl)
  {
    ZDATA_BASE = . ;
   *(.zdata)
	*(.zdata.*)
    *(.gnu.linkonce.z.*)
    *(.bdata)
    *(.bdata.*)
    ZDATA_END = . ;
  } > ZDATA_MEM AT> CODE_MEM
  CORE(.zrodata)  : ALIGN(8) FLAGS(al)
  {
 	*(.zrodata)
	*(.zrodata.*)
    *(.gnu.linkonce.zr.*)
  } > ZDATA_MEM AT> CODE_MEM

  /*
   * Allocate trap and interrupt vector tables.
   */
  CORE(.traptab)  : ALIGN(8)
  {
    *(.traptab)
  } > CODE_MEM
  CORE(.inttab)  : ALIGN(8)
  {
    *(.inttab)
  } > CODE_MEM
  CORE(.init)  : ALIGN(8) FLAGS(axl)
  {
      /* we have to keep all .init/.fini section
         because the linker should not delete this
         sections with --gc-sections
       */
	KEEP( *(SORT(.init*)) )
	KEEP( *(SORT(.fini*)) )
  } > CODE_MEM =0
  /*
   * Allocate .text and other read-only sections.
   */
  CORE(.text)  : ALIGN(8) FLAGS(axl)
  {
    *(.text)
	*(.text.*)
    *(.pcp_c_ptr_init)
    *(.pcp_c_ptr_init.*)
    *(.gnu.linkonce.t.*)
    /*
     * .gnu.warning sections are handled specially by elf32.em.
     */
    *(.gnu.warning)

  } > CODE_MEM =0
  CORE(.rodata)   : ALIGN(8) FLAGS(arl)
  {
    *(.rodata)
	*(.rodata.*)
	*(.gnu.linkonce.r.*)
    /*
     * Create the clear and copy tables that tell the startup code
     * which memory areas to clear and to copy, respectively.
     */
    . = ALIGN(4) ;
    PROVIDE(__clear_table = .) ;
    LONG(0 + ADDR(CORE(.bss)));     LONG(SIZEOF(CORE(.bss)));
    LONG(0 + ADDR(CORE(.sbss)));    LONG(SIZEOF(CORE(.sbss)));
    LONG(0 + ADDR(CORE(.zbss)));    LONG(SIZEOF(CORE(.zbss)));
    LONG(__PCP_CODE_RAM_BEGIN);    LONG(__PCP_CODE_RAM_SIZE);
    LONG(-1);                 LONG(-1);
    PROVIDE(__copy_table = .) ;
    LONG(LOADADDR(CORE(.data)));    LONG(0 + ADDR(CORE(.data))); LONG(SIZEOF(CORE(.data)));
    LONG(LOADADDR(CORE(.sdata)));   LONG(0 + ADDR(CORE(.sdata)));LONG(SIZEOF(CORE(.sdata)));
    LONG(LOADADDR(CORE(.zdata)));   LONG(0 + ADDR(CORE(.zdata)));LONG(SIZEOF(CORE(.zdata)));
    LONG(LOADADDR(CORE(.zrodata))); LONG(0 + ADDR(CORE(.zrodata)));LONG(SIZEOF(CORE(.zrodata)));
    LONG(LOADADDR(.pcpdata)); LONG(0 + ADDR(.pcpdata)); LONG(SIZEOF(.pcpdata));
    LONG(LOADADDR(.pcptext)); LONG(0 + ADDR(.pcptext));LONG(SIZEOF(.pcptext));
    LONG(-1);                 LONG(-1);                  LONG(-1);
    . = ALIGN(8);
  } > CODE_MEM
  CORE(.sdata2)  : ALIGN(8) FLAGS(arl)
  {
    *(.sdata.rodata)
    *(.sdata.rodata.*)
    *(.srodata)
    *(.srodata.*)
    *(.gnu.linkonce.sr.*)
  } > CODE_MEM
  /*
   * C++ exception handling tables.  NOTE: gcc emits .eh_frame
   * sections when compiling C sources with debugging enabled (-g).
   * If you can be sure that your final application consists
   * exclusively of C objects (i.e., no C++ objects), you may use
   * the -R option of the "strip" and "objcopy" utilities to remove
   * the .eh_frame section from the executable.
   */
  CORE(.eh_frame)  : ALIGN(8)
  {
    *(.gcc_except_table)
    __EH_FRAME_BEGIN__ = . ;
    KEEP (*(.eh_frame))
    __EH_FRAME_END__ = . ;
  } > CODE_MEM
  .jcr            : { KEEP (*(.jcr)) } > CODE_MEM
  .ctors          : FLAGS(al)
  {
    __CTOR_LIST__ = . ;
    LONG((__CTOR_END__ - __CTOR_LIST__) / 4 - 2);
    /* gcc uses crtbegin.o to find the start of
       the constructors, so we make sure it is
       first.  Because this is a wildcard, it
       doesn't matter if the user does not
       actually link against crtbegin.o; the
       linker won't look for a file to match a
       wildcard.  The wildcard also means that it
       doesn't matter which directory crtbegin.o
       is in.  */
    KEEP (*crtbegin.o(.ctors))
    /* We don't want to include the .ctor section from
       from the crtend.o file until after the sorted ctors.
       The .ctor section from the crtend file contains the
       end of ctors marker and it must be last */
    KEEP (*(EXCLUDE_FILE (*crtend.o ) .ctors))
    KEEP (*(SORT(.ctors.*)))
    KEEP (*(.ctors))
    LONG(0) ;
    __CTOR_END__ = . ;
	. = ALIGN(8);
  } > CODE_MEM
  .dtors          :  FLAGS(al)
  {
    __DTOR_LIST__ = . ;
    LONG((__DTOR_END__ - __DTOR_LIST__) / 4 - 2);
    KEEP (*crtbegin.o(.dtors))
    KEEP (*(EXCLUDE_FILE (*crtend.o ) .dtors))
    KEEP (*(SORT(.dtors.*)))
    KEEP (*(.dtors))
    LONG(0) ;
    __DTOR_END__ = . ;
	. = ALIGN(8);
  } > CODE_MEM
  /*
   * We're done now with the text part of the executable.  The
   * following sections are special in that their initial code or
   * data (if any) must also be stored in said text part of an
   * executable, but they "live" at completely different addresses
   * at runtime -- usually in RAM areas.  NOTE: This is not really
   * necessary if you use a special program loader (e.g., a debugger)
   * to load a complete executable consisting of code, data, BSS, etc.
   * into the RAM of some target hardware or a simulator, but it *is*
   * necessary if you want to burn your application into non-volatile
   * memories such as EPROM or FLASH.
   */
  .pcptext : ALIGN(8) FLAGS(axpl)
  {
    PCODE_BASE = . ;
    KEEP(*(.pcptext))
    KEEP(*(.pcptext.*))
    . = ALIGN(8) ;
   PCODE_END = . ;
  } > PCP_CODE AT> CODE_MEM
  .pcpdata : ALIGN(8) FLAGS(awpl)
  {
    PRAM_BASE = . ;
    KEEP(*(.pcpdata))
    KEEP(*(.pcpdata.*))
    . = ALIGN(8) ;
    PRAM_END = . ;
  } > PCP_DATA AT> CODE_MEM
  CORE(.data) : ALIGN(8) FLAGS(awl)
  {
    DATA_BASE = . ;
    *(.data)
    *(.data.*)
    *(.gnu.linkonce.d.*)
    SORT(CONSTRUCTORS)
    DATA_END = . ;
  } > DATA_MEM AT> CODE_MEM
  CORE(.sdata)  : ALIGN(8) FLAGS(awl)
  {
	SDATA_BASE = . ;
    PROVIDE(__sdata_start = .);
    *(.sdata)
    *(.sdata.*)
    *(.gnu.linkonce.s.*)
  } > SDATA_MEM  AT> CODE_MEM
  CORE(.sbss)  (NOLOAD) : ALIGN(8) FLAGS(aw)
  {
    PROVIDE(__sbss_start = .);
    *(.sbss)
    *(.sbss.*)
    *(.gnu.linkonce.sb.*)
  } > SDATA_MEM
  /*
   * Allocate space for BSS sections.
   */
  CORE(.bss)  (NOLOAD) : ALIGN(8) FLAGS(aw)
  {
    BSS_BASE = . ;
    *(.bss)
    *(.bss.*)
    *(.gnu.linkonce.b.*)
    *(COMMON)
    . = ALIGN(8) ;
  } > BSS_MEM
  CORE(.ustack)  (NOLOAD) : ALIGN(8) FLAGS(aw)
  {
    . +=  __USTACK_SIZE ;
    . = ALIGN(8) ;
    __USTACK =  . ;
  } > BSS_MEM
  CORE(.istack)  (NOLOAD) : ALIGN(8) FLAGS(aw)
  {
    . +=  __ISTACK_SIZE ;
    . = ALIGN(8) ;
    __ISTACK =  . ;
  } > BSS_MEM
  CORE(.heap)  (NOLOAD) : ALIGN(8) FLAGS(aw)
  {
    __HEAP = . ;
    . +=  __HEAP_SIZE ;
    . = ALIGN(8) ;
    __HEAP_END =  . ;
  } > BSS_MEM
  /* define the CSA Memory area as an own section
   * this section will be allocated into the internal RAM
   * after the absolute addressable sections .zdata/.zbss
   * and allocate all internal memory not occupied by .zdata/.zbss
  */
  CORE(.csa) (NOLOAD) : ALIGN(64)
  {
    __CSA_BEGIN = . ;
    . +=  MIN(((__INT_DATA_RAM_BEGIN + __INT_DATA_RAM_SIZE) - ABSOLUTE(__CSA_BEGIN)) ,0x8000 - ABSOLUTE(__CSA_BEGIN));
    __CSA_END = .;
  } > CSA_MEM
  __CSA_SIZE = __CSA_END - __CSA_BEGIN;
  _end = __HEAP_END ;
  PROVIDE(end = _end) ;
  /* Make sure CSA, stack and heap addresses are properly aligned.  */
  _. = ASSERT ((__CSA_BEGIN & 0x3f) == 0 , "illegal CSA start address") ;
  _. = ASSERT ((__CSA_SIZE & 0x3f) == 0 , "illegal CSA size") ;
  _. = ASSERT ((__ISTACK & 7) == 0 , "ISTACK not doubleword aligned") ;
  _. = ASSERT ((__USTACK & 7) == 0 , "USTACK not doubleword aligned") ;
  _. = ASSERT ((__HEAP_END & 7) == 0 , "HEAP not doubleword aligned") ;
  /* Define a default symbol for address 0.  */
  NULL = DEFINED (NULL) ? NULL : 0 ;
  /*
   * DWARF debug sections.
   * Symbols in the DWARF debugging sections are relative to the
   * beginning of the section, so we begin them at 0.
   */
  /*
   * DWARF 1
   */
  .comment         0 : { *(.comment) }
  .debug           0 : { *(.debug) }
  .line            0 : { *(.line) }
  /*
   * GNU DWARF 1 extensions
   */
  .debug_srcinfo   0 : { *(.debug_srcinfo) }
  .debug_sfnames   0 : { *(.debug_sfnames) }
  /*
   * DWARF 1.1 and DWARF 2
   */
  .debug_aranges   0 : { *(.debug_aranges) }
  .debug_pubnames  0 : { *(.debug_pubnames) }
  /*
   * DWARF 2
   */
  .debug_info      0 : { *(.debug_info) }
  .debug_abbrev    0 : { *(.debug_abbrev) }
  .debug_line      0 : { *(.debug_line) }
  .debug_frame     0 : { *(.debug_frame) }
  .debug_str       0 : { *(.debug_str) }
  .debug_loc       0 : { *(.debug_loc) }
  .debug_macinfo   0 : { *(.debug_macinfo) }
  .debug_ranges    0 : { *(.debug_ranges) }
  /*
   * SGI/MIPS DWARF 2 extensions
   */
  .debug_weaknames 0 : { *(.debug_weaknames) }
  .debug_funcnames 0 : { *(.debug_funcnames) }
  .debug_typenames 0 : { *(.debug_typenames) }
  .debug_varnames  0 : { *(.debug_varnames) }
  /*
   * Optional sections that may only appear when relocating.
   */
  /*
   * Optional sections that may appear regardless of relocating.
   */
  .version_info    0 : { *(.version_info) }
  .boffs           0 : { KEEP (*(.boffs)) }
}

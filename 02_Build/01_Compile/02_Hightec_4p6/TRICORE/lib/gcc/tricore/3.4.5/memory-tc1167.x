/*
 * memory.x -- The default memory description
 *
 * Copyright (C) 2009 HighTec EDV-Systeme GmbH.
 *
 */
__USTACK_SIZE = 1K;
__ISTACK_SIZE = 1K;
__HEAP_MIN = 1K;
__TRICORE_DERIVATE_MEMORY_MAP__ = 0x1167;
/* the external RAM description */
__EXT_CODE_RAM_BEGIN = 0xa0000000;
__EXT_CODE_RAM_SIZE = 1M ;
__EXT_DATA_RAM_BEGIN = 0xd0000000;
__EXT_DATA_RAM_SIZE = 72K;
__RAM_END = __EXT_DATA_RAM_BEGIN + __EXT_DATA_RAM_SIZE;
/* internal FLASH description */
__INT_CODE_FLASH_BEGIN = 0x80000000;
__INT_CODE_FLASH_SIZE = 1M;




__INT_DATA_FLASH_BEGIN = 0x8fe00000;
__INT_DATA_FLASH_SIZE = 32K;

__INT_DATA_FLASH_BANK1_BEGIN = 0x8fe10000;
__INT_DATA_FLASH_BANK1_SIZE = 32K;

/* the internal ram description */
__INT_CODE_RAM_BEGIN = 0xd4000000;
__INT_CODE_RAM_SIZE = 24K;
__INT_DATA_RAM_BEGIN = 0xd0000000;
__INT_DATA_RAM_SIZE = 72K;
/* the pcp memory description */
__PCP_CODE_RAM_BEGIN = 0xf0060000;
__PCP_CODE_RAM_SIZE = 16K;
__PCP_DATA_RAM_BEGIN = 0xf0050000;
__PCP_DATA_RAM_SIZE = 8K;

MEMORY
{
  PMU_PFLASH0 (rx!p): org = 0x80000000, len = 1M



  PMU_DFLASH0 (w!xp): org = 0x8fe00000, len = 32K

  PMU_DFLASH1 (w!xp): org = 0x8fe10000, len = 32K

  PMI_SPRAM (rx!p): org = 0xd4000000, len = 24K
  DMI_LDRAM (w!xp): org = 0xd0000000, len = 72K
  PCP_PRAM (wp!x): org = 0xf0050000, len = 8K
  PCP_CMEM (rpx): org = 0xf0060000, len = 16K
}

REGION_ALIAS("DATA_MEM", DMI_LDRAM)
REGION_ALIAS("CODE_MEM", PMU_PFLASH0)
REGION_ALIAS("SDATA_MEM", DMI_LDRAM)
REGION_ALIAS("BSS_MEM", DMI_LDRAM)
REGION_ALIAS("ZDATA_MEM", DMI_LDRAM)
REGION_ALIAS("CSA_MEM", DMI_LDRAM)
REGION_ALIAS("PCP_CODE", PCP_CMEM)
REGION_ALIAS("PCP_DATA", PCP_PRAM)


/* the symbol __TRICORE_DERIVATE_NAME__ will be defined in the crt0.S and is
 * tested here to confirm that this memory map and the startup file will
 * fit together
*/
_. = ASSERT ((__TRICORE_DERIVATE_MEMORY_MAP__ == __TRICORE_DERIVATE_NAME__), "Using wrong Memory Map. This Map is for TC1167");

INSERT BEFORE .startup

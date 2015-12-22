/*
 * memory.x -- The default memory description
 *
 * Copyright (C) 2009 HighTec EDV-Systeme GmbH.
 *
 */
__USTACK_SIZE = 4K;
__ISTACK_SIZE = 1K;
__HEAP_MIN = 32K;
__TRICORE_DERIVATE_MEMORY_MAP__ = 0x1337;
/* the external RAM description */
__EXT_CODE_RAM_BEGIN = 0x80800000;
__EXT_CODE_RAM_SIZE = 1M ;
__EXT_DATA_RAM_BEGIN = 0x80900000;
__EXT_DATA_RAM_SIZE = 1M;
__RAM_END = __EXT_DATA_RAM_BEGIN + __EXT_DATA_RAM_SIZE;
/* internal FLASH description */
__INT_CODE_FLASH_BEGIN = 0x80000000;
__INT_CODE_FLASH_SIZE = 0x180000;

__INT_CODE_FLASH_BANK1_BEGIN = 0x80400000;
__INT_CODE_FLASH_BANK1_SIZE = 0x180000;

__INT_DATA_FLASH_BEGIN = 0x8fe00000;
__INT_DATA_FLASH_SIZE = 32K;

__INT_DATA_FLASH_BANK1_BEGIN = 0x8fe10000;
__INT_DATA_FLASH_BANK1_SIZE = 32K;

/* the internal ram description */
__INT_CODE_RAM_BEGIN = 0xd4000000;
__INT_CODE_RAM_SIZE = 80K;
__INT_DATA_RAM_BEGIN = 0xd0000000;
__INT_DATA_RAM_SIZE = 124K;
/* the pcp memory description */
__PCP_CODE_RAM_BEGIN = 0xf0060000;
__PCP_CODE_RAM_SIZE = 24K;
__PCP_DATA_RAM_BEGIN = 0xf0050000;
__PCP_DATA_RAM_SIZE = 16K;

MEMORY
{
  PMU_PFLASH0 (rx!p): org = 0x80000000, len = 0x180000

  PMU_PFLASH1 (rx!p): org = 0x80400000, len = 0x180000

  PMU_DFLASH0 (w!xp): org = 0x8fe00000, len = 32K

  PMU_DFLASH1 (w!xp): org = 0x8fe10000, len = 32K

  PMI_SPRAM (rx!p): org = 0xd4000000, len = 80K
  DMI_LDRAM (w!xp): org = 0xd0000000, len = 124K
  PCP_PRAM (wp!x): org = 0xf0050000, len = 16K
  PCP_CMEM (rpx): org = 0xf0060000, len = 24K
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
_. = ASSERT ((__TRICORE_DERIVATE_MEMORY_MAP__ == __TRICORE_DERIVATE_NAME__), "Using wrong Memory Map. This Map is for TC1337");

INSERT BEFORE .startup

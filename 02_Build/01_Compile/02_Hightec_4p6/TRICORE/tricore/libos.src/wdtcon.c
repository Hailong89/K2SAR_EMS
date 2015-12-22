/*
 * wdtcon.c -- Lock/unlock the ENDINIT bit in WDTCON to gain write access
 *             for ENDINIT-protected SFRs (such as BIV, BTV and the CLC
 *             registers of the various core functional blocks).
 *
 * Copyright (C) 2000 HighTec EDV-Systeme GmbH.
 *
 */


static inline unsigned int ReadWdtCon0(void)
{	unsigned int ret;
	__asm__ volatile ("ld.w %0, $wdtcon0": "=d" (ret));
	return ret;
}
static inline void WriteWdtCon0(unsigned int val)
{
	__asm__ volatile ("st.w $wdtcon0, %0 ": :"d" (val));
}
static inline unsigned int ReadWdtCon1(void)
{	unsigned int ret;
	__asm__ volatile ("ld.w %0, $wdtcon1": "=d" (ret));
	return ret;
}
static inline void WriteWdtCon1(unsigned int val)
{
	__asm__ volatile ("st.w $wdtcon1, %0 ": :"d" (val));
}

/* Unlock (reset) the ENDINIT bit.  */

void
unlock_wdtcon (void)
{
  unsigned int wcon0, wcon1;
  unsigned int wcon0_res;

  wcon0 = ReadWdtCon0();
  wcon1 = ReadWdtCon1();
  wcon0 &= 0xffffff03;
  wcon0 |= 0xf0;
  wcon0 |= (wcon1 & 0xc);
  wcon0 ^= 0x2;
  WriteWdtCon0(wcon0);
  wcon0 &= 0xfffffff0;
  wcon0 |= 0x2;
  WriteWdtCon0(wcon0);
  /* read back new value ==> synchronise LFI */
  wcon0_res = ReadWdtCon0();
}

/* Lock (set) the ENDINIT bit.  */

void
lock_wdtcon (void)
{
  unsigned int wcon0, wcon1;
  unsigned int wcon0_res;

  wcon0 = ReadWdtCon0();
  wcon1 = ReadWdtCon1();
  wcon0 &= 0xffffff03;
  wcon0 |= 0xf0;
  wcon0 |= (wcon1 & 0xc);
  wcon0 ^= 0x2;
  WriteWdtCon0(wcon0);
  wcon0 &= 0xfffffff0;
  wcon0 |= 0x3;
  WriteWdtCon0(wcon0);
  /* read back new value ==> synchronise LFI */
  wcon0_res = ReadWdtCon0();
}

/* These functions are taken from the TriCore Application Note AP321201.pdf.
   WDT_Passwd() is essentially another implementation of unlock_wdtcon(),
   while WDT_Modify() allows to set or reset certain bits in WDTCON0 after
   it was unlocked with WDT_Modify().  */

void
WDT_Passwd (void)
{
  unsigned int passwd;
  unsigned int wcon0_res;

  passwd = ReadWdtCon0() | 0xf0;
  passwd = (ReadWdtCon1() & 0xc) | (passwd & 0xfffffff3);
  WriteWdtCon0(passwd ^ 0x2);
  /* read back new value ==> synchronise LFI */
  wcon0_res = ReadWdtCon0();
}

void
WDT_Modify (unsigned long modify, unsigned long mask)
{
  unsigned int newvalue;
  unsigned int wcon0_res;

  newvalue = ReadWdtCon0() & ~mask;
  newvalue |= (modify & mask);
  newvalue = (newvalue | 0xf2) & 0xfffffff3;
  WriteWdtCon0(newvalue);
  /* read back new value ==> synchronise LFI */
  wcon0_res = ReadWdtCon0();
}


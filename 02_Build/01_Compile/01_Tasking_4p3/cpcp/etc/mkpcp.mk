# @(#)gen_mk.sh	1.3 10/11/08
#
# default mkpcp rules
#

SHELLCMD=	break call cd chcp chdir cls copy ctty date del dir echo erase\
		exit for goto if md mkdir path pause prompt rd rem ren rename\
		rmdir set shift time type ver verify vol
RM	=	del

.SUFFIXES:	.cpp .cc .c .asm .pcp .o .elf .mil .ms .ml

MAKE	=	"$(PRODDIR)\bin\mkpcp"
CC	=	"$(PRODDIR)\bin\ccpcp"
CCFLAGS	=
CPPFLAGS=
AS	=	"$(PRODDIR)\bin\ccpcp"
ASFLAGS	=
LD	=	"$(PRODDIR)\bin\ccpcp"
LDFLAGS	=


.cc.o:
	$(CC) -co -o $@ $(CCFLAGS) $(CCFLAGS_$*) $(CPPFLAGS) $(CPPFLAGS_$*) $<

.cpp.o:
	$(CC) -co -o $@ $(CCFLAGS) $(CCFLAGS_$*) $(CPPFLAGS) $(CPPFLAGS_$*) $<

.c.o:
	$(CC) -co -o $@ $(CCFLAGS) $(CCFLAGS_$*) $(CPPFLAGS) $(CPPFLAGS_$*) $<

.asm.o:
	$(AS) -co -o $@ $(ASFLAGS) $(ASFLAGS_$*) $<

.pcp.o:
	$(AS) -co -o $@ $(ASFLAGS) $(ASFLAGS_$*) $<

.o.elf:
	$(LD) -o $@  $(match .o $!) $(match .a $!) $(LDFLAGS) $(LDFLAGS_$*)

.c.mil:
	$(CC) -cm -o $@ $(CCFLAGS) $(CCFLAGS_$*) $(CPPFLAGS) $(CPPFLAGS_$*) $<

.mil.ml:
	$(CC) -cm -o $@  $(match .mil $!) $(match .ma $!) --mil-split $(CCFLAGS) $(CCFLAGS_$*)

.ms.o:
	$(CC) -c -o $@ $(CCFLAGS) $(CCFLAGS_$*) $(CPPFLAGS) $(CPPFLAGS_$*) $<

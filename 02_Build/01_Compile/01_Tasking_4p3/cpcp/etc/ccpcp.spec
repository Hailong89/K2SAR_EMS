##  TriCore specific specification file 
##  (derived from /usr/src/ccng/src/cc/vcc.spec)
##
##  FILE:		@(#)ccpcp.spec	1.16	13/06/17
##  AUTHOR(S):		Kees de Bruin		(bruin)
##			Richard Horbach		(richard)
##  COPYRIGHT:		Copyright 2003-2014 Altium BV
##

# tool configuration
CFE	= cpcp
ASM	= aspcp
LLNG	= lpcp

# output extensions
MS_OUT   = ms
MIL_OUT  = mil
CFE_OUT	 = src
ASM_OUT	 = o
ASM_LST	 = lst
LLNG_OUT = elf
LK_OUT   = out

# Defaults
IS_PCP10     = no
IS_PCP20     = yes

%file	*.c
{
	C_FILES = $(C_FILES) $(MATCH)
}

%file	*.mil *.ms
{
	MIL_FILES = $(MIL_FILES) $(MATCH)
}

%file	*.ma
{
	MIL_ARCHIVE_FILES = $(MIL_ARCHIVE_FILES) $(MATCH)
}

%file	*.pcp *.src *.asm
{
	ASM_FILES = $(ASM_FILES) $(MATCH)
}

%file	*.o *.out *.ro *.obj
{
	OBJ_FILES = $(OBJ_FILES) $(MATCH)
}

%file	*.a *.lib
{
	LIB_FILES = $(LIB_FILES) $(MATCH)
}

%file	*.lsl
{
	LSL_FILES = $(LSL_FILES) -d$(MATCH)
}

# handle options
# Set LLNG_OUT depending on options --format and --create=relocatable
%option OUTPUT_FORMAT
{
	LLNG_OUTPUT_FLAGS = :$(MATCH)
	%if option(OUTPUT_ADDRSIZE)
	{
		LLNG_OUTPUT_FLAGS = $(LLNG_OUTPUT_FLAGS):option(OUTPUT_ADDRSIZE)
	}
	%if option(OUTPUT_SPACE)
	{
		LLNG_OUTPUT_FLAGS = $(LLNG_OUTPUT_FLAGS),option(OUTPUT_SPACE)
	}

	%switch $(MATCH) 
	{
		%case elf
		{
			LLNG_OUT = elf
		}
		%case  ieee
		{
			LLNG_OUT = abs
		}
	}
}

%switch	option(MODEL)
{
	%case near n
	{
		MODEL = n
	}
	%case far f
	{
		MODEL = f
	}
	%default
	{
		MODEL = n
	}
}

%if $(MODEL)
{
	%if ( $(MODEL) == f )
	{
		C_FLAGS = $(C_FLAGS) -M$(MODEL)
	}
}

%option C_RELOCATION
{
        LLNG_FLAGS = --incremental $(LLNG_FLAGS)
	LLNG_OUT = $(LK_OUT)	
}

%option LINKONLY
{
        LLNG_FLAGS = --link-only $(LLNG_FLAGS)
	LLNG_OUT = $(LK_OUT)	
	LLNG_FLAGS = -D__LINKONLY__ $(LLNG_FLAGS)		
}

%option	LSL_FILE
{
	# Add LSL files
	LSL_FILES = $(LSL_FILES) -d$(MATCH)
}

%option	ASM_LISTFILE
{
	ASM_LIST_FILE = 1
	ASM_LIST_NAME = $(MATCH)
}

%option DEPFILE
{
	%if has_arg(DEPFILE)
	{
		C_FLAGS = $(C_FLAGS) --dep-file=$(MATCH)
	}
	%else
	{
		C_FLAGS = $(C_FLAGS) --dep-file
	}
}

#=============================================================================
# Handling the processor related options

%option PROCESSORS
{
	user_func( read_processors_xml, $(MATCH) )
}

%option CPU
{
	user_func( validate_and_register_processor, $(MATCH) )
}

%option CORE
{
	user_func( validate_and_register_core, $(MATCH) )
}

# all is now known about cpu and/or core
# set all required tool parameters

CPU     = user_func( get_cpu  )
CORE    = user_func( get_core )
CPU_UPPERCASE = user_func( uppercase, $(CPU) )

# set the cpu parameters for the tools
#
%if $(CPU) == ""
{
}
%else
{
	C_FLAGS     = $(C_FLAGS)     -D__CPU__=$(CPU) -D__CPU_$(CPU_UPPERCASE)__
	ASM_FLAGS   = $(ASM_FLAGS)   -D__CPU__=$(CPU) -D__CPU_$(CPU_UPPERCASE)__
	LLNG_FLAGS  = $(LLNG_FLAGS)  -D__CPU__=$(CPU)
	%if $(LSL_FILES) == ""
	{	
		LSL_FILES = -d$(CPU).lsl -dextmem.lsl
	}
}
	
# set the core parameter for the tools
#
CPLUS_FLAGS = $(CPLUS_FLAGS) --core=$(CORE)
C_FLAGS     = $(C_FLAGS)     --core=$(CORE)
ASM_FLAGS   = $(ASM_FLAGS)   --core=$(CORE)

#=============================================================================

%if option(ISO_MODE) == "99"
{
	C_FLAGS = -c99 $(C_FLAGS)
}
%elif option(ISO_MODE) == "90"
{
	C_FLAGS = -c90 $(C_FLAGS)
}

%option EABI
{
	C_FLAGS = $(C_FLAGS) --eabi-compliant
	%if ( !%option( DWVER ) )
	{
		ASM_FLAGS = $(ASM_FLAGS) --dwarf-version=2
	}
}

%option STATIC
{
	STATIC_FLAGS = --static
}

%option UCHAR
{
	C_FLAGS = $(C_FLAGS) --uchar
}

%option ERROR_FILE
{
	C_FLAGS    = $(C_FLAGS)    --error-file
	ASM_FLAGS  = $(ASM_FLAGS)  --error-file
	LLNG_FLAGS = $(LLNG_FLAGS) --error-file
}

%option TYPE_CHECK
{
	C_FLAGS    = $(C_FLAGS) --global-type-checking
	LLNG_FLAGS = $(LLNG_FLAGS) --global-type-checking
}

%option MACRO_DEFINE
{
	# Add macro definitions
	C_FLAGS   = $(C_FLAGS)   -D$(MATCH)
	ASM_FLAGS = $(ASM_FLAGS) -D$(MATCH)
}

%option MACRO_UNDEF
{
	# Add macro un-definitions
	C_FLAGS = $(C_FLAGS) -U$(MATCH)
}

%option INCLUDE_DIR
{
	# Add include directories
	C_FLAGS   = $(C_FLAGS)   -I$(MATCH)
	ASM_FLAGS = $(ASM_FLAGS) -I$(MATCH)
}

#--------------------------------------------------------------------------------------------------

%option SILICON_BUG
	{
		user_func( validate_and_register_silicon_bug, $(MATCH) )
	}

# All silicon bug workarounds have been registered, now add the options for compiler and assembler

	C_FLAGS    = $(C_FLAGS)    user_func( get_compiler_sibug_options  )
	ASM_FLAGS  = $(ASM_FLAGS)  user_func( get_assembler_sibug_options )
	LLNG_FLAGS = $(LLNG_FLAGS) user_func( get_linker_sibug_options    )

#--------------------------------------------------------------------------------------------------

%if option (NO_DEFLIB_PATH)
{
	LIB_FLAGS = -L
}
%else
{
	LIB_PATH    = $(LIBDIR)/user_func( get_library_path )
	SYSLIBS_DIR = -L$(LIB_PATH)
}

%option LIBRARY_DIR
{
	# Add library directories
	LIB_FLAGS = $(LIB_FLAGS) -L$(MATCH)
}

%option LIBRARY_FILE
{
	# Add libraries
	LIB_FLAGS = $(LIB_FLAGS) -l$(MATCH)
}

#--------------------------------------------------------------------------------------------------

# Specify default libraries
%if !option(NO_SYSLIBS)
{
	C_LIB	= -lc
	FP_LIB	= -lfp

	%if option(TRAP_FP)
	{
		FP_LIB = $(FP_LIB)t
	}

	%if ( $(MODEL) == f )
	{
		SUFFIX = f
	}

	SYSLIBS = $(SYSLIBS) $(C_LIB)$(SUFFIX) $(FP_LIB)$(SUFFIX)
	%if option(MILLINK) || option(MILSPLIT)
	{
		MILLIB = libc$(SUFFIX).ma
	}
}

%if option(TC_MAIN)
{
	TC_MAIN_PATH = $(LIBDIR)/../tc_main/user_func( get_library_path )

	%if ( $(MODEL) == f )
	{
		SUFFIX = f
	}

	OBJ_FILES = $(OBJ_FILES) $(TC_MAIN_PATH)/tc_main$(SUFFIX).out
}

%option	ERRWARN
{
	%if $(MATCH)
	{
		C_FLAGS = $(C_FLAGS) --warnings-as-error=$(MATCH)
	}
	%else
	{
		C_FLAGS    = $(C_FLAGS)    --warnings-as-errors
		ASM_FLAGS  = $(ASM_FLAGS)  --warnings-as-errors
		LLNG_FLAGS = $(LLNG_FLAGS) --warnings-as-errors
	}
}

%option NOWARN
{
	%if !$(MATCH)
	{
		C_FLAGS    = $(C_FLAGS)    --no-warnings
		ASM_FLAGS  = $(ASM_FLAGS)  --no-warnings
		LLNG_FLAGS = $(LLNG_FLAGS) --no-warnings
	}
}

%option SYMDEB
{
	C_FLAGS   = $(C_FLAGS)   -g$(MATCH)
	ASM_FLAGS = $(ASM_FLAGS) -gsl
	# Linker has no -g option, it does have a -S to strip debug info
	# LLNG_FLAGS = $(LLNG_FLAGS) -g
}

%option KEEP_FILES
{
	C_FLAGS    = $(C_FLAGS)    -k
	ASM_FLAGS  = $(ASM_FLAGS)  -k
	LLNG_FLAGS = $(LLNG_FLAGS) -k
}

%option	PASS_C
{
	C_FLAGS = $(C_FLAGS) $(MATCH)
}

%option	PASS_ASM
{
	ASM_FLAGS = $(ASM_FLAGS) $(MATCH)
}

%option	PASS_LLNG
{
	LLNG_FLAGS = $(LLNG_FLAGS) $(MATCH)
}

%if !option(NO_MAPFILE) && !option(MAP_FILE)
{
	LLNG_FLAGS = $(LLNG_FLAGS) --map-file
}
%option MAP_FILE
{
	%if $(MATCH)
	{
		LLNG_FLAGS = $(LLNG_FLAGS) --map-file=$(MATCH)
	}
	%else
	{
		LLNG_FLAGS = $(LLNG_FLAGS) --map-file
	}
}


%option CASE_INSENS
{
	ASM_FLAGS  = $(ASM_FLAGS)  --case-insensitive
	LLNG_FLAGS = $(LLNG_FLAGS) --case-insensitive
}

%option NO_TASKING_SFR
{
        %diag W_no_tasking_sfr
}

%option TASKING_SFR
{
    	%if $(CPU) != ""
	{
	    C_FLAGS   = $(C_FLAGS)   -Hsfr/reg$(CPU).sfr
	    ASM_FLAGS = $(ASM_FLAGS) -Hsfr/reg$(CPU).def
	}
}

%option TRADEOFF
{
	C_FLAGS = $(C_FLAGS) -t$(MATCH)
}

%option DWVER
{
	C_FLAGS = $(C_FLAGS) --dwarf-version=$(MATCH)
	ASM_FLAGS = $(ASM_FLAGS) --dwarf-version=$(MATCH)
}

# non-control program options
#
# priority:	C compiler / Linker/Locator / Assembler
#
%set_option C_FLAGS
{
%include opt-cpcp.spec
}

%set_option LLNG_FLAGS
{
%include opt-llpcp.spec
}

%set_option ASM_FLAGS
{
%include opt-aspcp.spec
}

#-----------------------------------------------------------------------------
# determine whether there is a single input file
#
# when there are more input files, the variable SINGLE_INPUT does NOT exist
#                                                                 ===
#
ALL_FILES = $(C_FILES) $(MIL_FILES) $(ASM_FILES)
%if count(ALL_FILES) == 1
{
	SINGLE_INPUT = 1
}

#-----------------------------------------------------------------------------
# Preprocess only
#
%option PREPROC
{	# -E -> use only for preprocessing, remember flags in PP_FLAGS
	PP_FLAGS = $(PP_FLAGS) -E$(MATCH)
}

%if option(PREPROC) || option(PREPROC_COMP)
{
	%if !option(PREPROC)
	{
		PP_FLAGS = -E
	}
        %action $(C_FILES)
        {
		%if $(PP_FLAGS) == "-Ed"
		{
			OUT = 
		}		
		%elif option(OUTPUT) && !option(PREPROC_COMP)
		{
			OUT = -o $(OUTPUT)
		}
		%elif option(MAKEDEP)
		{
			OUT = -o replace_extension($(MATCH), $(CPPM_OUT))
		}
		%else
		{
			OUT = -o output_file($(MATCH), $(CPP_OUT), $(SINGLE_INPUT), option(C_PREPROC))
		}
                $(CFE) $(PP_FLAGS) $(C_FLAGS) $(OUT) $(MATCH)
        }
}

%stop option(PREPROC) && !option(PREPROC_COMP)


#-----------------------------------------------------------------------------
# Syntax checking only
#
%if option(CHECK)
{
	%action $(C_FILES)
	{
		$(CFE) --check $(C_FLAGS) $(MATCH)
	}

	%action $(ASM_FILES)
	{
		$(ASM) --check $(ASM_FLAGS) $(MATCH)
	}

	%stop 1
}


#-----------------------------------------------------------------------------
# handle c files

# normal c-files
#
%action $(C_FILES)
{
	%if ! (option(MILLINK) || option(MILSPLIT))
	{
		%if option(C_MIL)
		{
			OUT = output_file($(MATCH), $(MIL_OUT), $(SINGLE_INPUT), "1")
			$(CFE) $(C_FLAGS) --mil -o $(OUT) $(MATCH)
		}
		%else
		{
			OUT = output_file($(MATCH), $(CFE_OUT), $(SINGLE_INPUT), option(C_ASSEMBLY))
			$(CFE) $(C_FLAGS) -o $(OUT) $(MATCH)
			GEN_ASM_FILES = $(GEN_ASM_FILES) $(OUT)
		}
	}
}

# mil files
#
%action $(MIL_FILES)
{
	%if ! (option(MILLINK) || option(MILSPLIT) || option(C_MIL))
	{
		OUT = output_file($(MATCH), $(CFE_OUT), $(SINGLE_INPUT), option(C_ASSEMBLY))
		$(CFE) $(C_FLAGS) -o $(OUT) $(MATCH)
		GEN_ASM_FILES = $(GEN_ASM_FILES) $(OUT)
	}
}

#-----------------------------------------------------------------------------
# MIL linking/splitting

%action $(C_FILES) $(MIL_FILES) $(MIL_ARCHIVE_FILES)
{
	%if option(MILSPLIT)
	{
		GEN_MS_FILES = $(GEN_MS_FILES) replace_extension($(MATCH), $(MS_OUT))
	}
}

%single_action $(C_FILES) $(MIL_FILES) $(MIL_ARCHIVE_FILES)
{
	%if option(MILLINK) || option(MILSPLIT)
	{
		%if $(MILLIB)
		{
			MILLIBPATH = $(LIB_PATH)/$(MILLIB)
			%if option(MILSPLIT)
			{
				GEN_MS_FILES = $(GEN_MS_FILES) replace_extension($(MILLIB), $(MS_OUT))
			}
		}
		%if option(MILSPLIT)
		{
			OUT = output_file($(OUTPUT), $(MIL_OUT), "1", option(C_MIL))
			MILOPT = "--mil-split"
		}
		%elif option(C_MIL)
		{
			OUT = output_file($(OUTPUT), $(MIL_OUT), "1", "1")
			MILOPT = "--mil"
		}
		%else
		{
			OUT = output_file($(OUTPUT), $(CFE_OUT), "1", option(C_ASSEMBLY))
			GEN_ASM_FILES = $(GEN_ASM_FILES) $(OUT)
			MILOPT = ""
		}
		$(CFE) $(MILOPT) $(C_FLAGS) $(STATIC_FLAGS) -o $(OUT) $(MATCH) $(MILLIBPATH)
	}
}

%stop option(C_MIL)

#-----------------------------------------------------------------------------
# MS files

%action $(GEN_MS_FILES)
{
	OUT = output_file($(MATCH), $(CFE_OUT), $(SINGLE_INPUT), option(C_ASSEMBLY))
	$(CFE) $(C_FLAGS) -o $(OUT) $(MATCH)
	GEN_ASM_FILES = $(GEN_ASM_FILES) $(OUT)
}

%stop option(C_ASSEMBLY)

#-----------------------------------------------------------------------------
# handle assembly files

%action $(ASM_FILES) $(GEN_ASM_FILES)
{
	OUT = output_file($(MATCH), $(ASM_OUT), $(SINGLE_INPUT), option(C_OBJECT))

	%if	$(ASM_LIST_FILE)
	{
		LST_NAME = ""
		%if	$(SINGLE_INPUT)
		{
			LST_NAME = $(ASM_LIST_NAME)
		}
		%if	! $(LST_NAME)
		{
			LST_NAME = output_file($(MATCH), $(ASM_LST), $(SINGLE_INPUT), "1", "1")
		}
		ASM_LST_FLAGS = -l$(LST_NAME)
	}
	%else
	{
		ASM_LST_FLAGS = ""
	}

	$(ASM) $(ASM_FLAGS) $(ASM_LST_FLAGS) -o $(OUT) $(MATCH)

	GEN_OBJ_FILES = $(GEN_OBJ_FILES) $(OUT)
}

%stop option(C_OBJECT)

#-----------------------------------------------------------------------------
# handle obj files

%single_action $(OBJ_FILES) $(GEN_OBJ_FILES) $(LIB_FILES)
{
	OBJ_FILES = $(OBJ_FILES) $(GEN_OBJ_FILES) $(LIB_FILES)
}

%single_action $(OBJ_FILES)
{
	OUTFILE = output_file($(OUTPUT), $(LLNG_OUT), "1", "1")
	$(LLNG) -o $(OUTFILE)$(LLNG_OUTPUT_FLAGS) $(LSL_FILES) $(LLNG_FLAGS) $(MATCH) $(LIB_FLAGS) $(SYSLIBS_DIR) $(SYSLIBS)
}


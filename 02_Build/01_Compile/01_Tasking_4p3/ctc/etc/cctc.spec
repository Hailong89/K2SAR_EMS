#
# @(#)cctc.spec	1.150.1.1 14/03/14
#
# TriCore control program specification file 
#
# Copyright 2003-2014 Altium BV
#

# tool configuration
CPFE	= cptc
CFE	= ctc
ASM	= astc
LLNG	= ltc
ELFP	= elfpatch

# output extensions
CPFE_OUT = ic
MS_OUT   = ms
MIL_OUT  = mil
CFE_OUT	 = src
ASM_OUT	 = o
ASM_LST	 = lst
LLNG_OUT = elf
LK_OUT   = out
CPP_OUT  = pre
CPPM_OUT = d
ELFP_OUT = p.o
ELFP_LOUT = p.a

C_MIL_LIB_STD = libc.ms
P_MIL_LIB_STD = libp.ms

# input file handling
# Note: The Perennial testsuite uses *.C as extension for cpp files

%if has_arg(MILSPLIT)
{
	%file_option *.cc *.cpp *.cxx *.C, MILSPLIT
	{
	        # When --force-c is used, all C++ input files are handled as C files by the control program
	        %if option(FORCE_C)
	        {
	                C_FILES         = $(C_FILES) $(MATCH)
			C_FILES_MSFILES = $(C_FILES_MSFILES) $(MATCHOPT)
			%if ! $(MATCHOPT)
			{
				%diag F_mil_split_options
			}
	        }
	        %else
	        {
	                CPLUS_FILES = $(CPLUS_FILES) $(MATCH)
	                HAVE_CPLUS  = 1
	        }
	}
	%file_option *.c, MILSPLIT
	{
	        # When --force-c++ is used, all C input files are handled as C++ files by the control program
	        %if option(FORCE_CPLUS)
	        {
	                CPLUS_FILES = $(CPLUS_FILES) $(MATCH)
	                HAVE_CPLUS  = 1
	        }
	        %else
	        {
	                C_FILES         = $(C_FILES) $(MATCH)
			C_FILES_MSFILES = $(C_FILES_MSFILES) $(MATCHOPT)
			%if ! $(MATCHOPT)
			{
				%diag F_mil_split_options
			}
	        }
	}
	%file_option *.mil *.ms, MILSPLIT
	{
		MIL_FILES         = $(MIL_FILES) $(MATCH)
		MIL_FILES_MSFILES = $(MIL_FILES_MSFILES) $(MATCHOPT)
		%if ! $(MATCHOPT)
		{
			%diag F_mil_split_options
		}
	}
	%file_option *.ma, MILSPLIT
	{
		MIL_ARCHIVES         = $(MIL_ARCHIVES) $(MATCH)
		MIL_ARCHIVES_MSFILES = $(MIL_ARCHIVES_MSFILES) $(MATCHOPT)
		%if ! $(MATCHOPT)
		{
			%diag F_mil_split_options
		}
	}
	%file_option *.ic, MILSPLIT
	{
	        # All .ic files are always compiled using the C compiler
	        IC_FILES         = $(IC_FILES) $(MATCH)
		IC_FILES_MSFILES = $(IC_FILES_MSFILES) $(MATCHOPT)
	        HAVE_CPLUS      = 1
		%if ! $(MATCHOPT)
		{
			%diag F_mil_split_options
		}
	}
}
%else
{
	%file	*.cc *.cpp *.cxx *.C
	{
		# When --force-c is used, all C++ input files are handled as C files by the control program
		%if option(FORCE_C)
		{
			C_FILES = $(C_FILES) $(MATCH)
		}
		%else
		{
			CPLUS_FILES = $(CPLUS_FILES) $(MATCH)
			HAVE_CPLUS = 1
		}
	}

	%file	*.c
	{
		# When --force-c++ is used, all C input files are handled as C++ files by the control program
		%if option(FORCE_CPLUS)
		{
			CPLUS_FILES = $(CPLUS_FILES) $(MATCH)
			HAVE_CPLUS = 1
		}
		%else
		{
			C_FILES = $(C_FILES) $(MATCH)
		}
	}

	%file	*.mil *.ms
	{
		MIL_FILES = $(MIL_FILES) $(MATCH)
	}

	%file	*.ma
	{
		MIL_ARCHIVES = $(MIL_ARCHIVES) $(MATCH)
	}

	%file	*.ic
	{
		# All .ic files are always compiled using the C compiler
		IC_FILES = $(IC_FILES) $(MATCH)
        	%if !option(FORCE_C)
        	{
                	HAVE_CPLUS = 1
        	}
	}
}

%file	*.asm *.src
{
	ASM_FILES = $(ASM_FILES) $(MATCH)
}

%file	*.o *.out *.ro *.obj
{
	OBJ_FILES = $(OBJ_FILES) $(MATCH)
}

#%file	*p.o *p.a
#{
#	ELFP_FILES = $(ELFP_FILES) $(MATCH)
#}

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

%option C_RELOCATION
{
        LLNG_FLAGS = --incremental $(LLNG_FLAGS)
	LLNG_OUT = $(LK_OUT)	
}

%option LINKONLY
{
        LLNG_FLAGS = --link-only $(LLNG_FLAGS)
	LLNG_OUT = $(LK_OUT)	
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

%option TRAP_FP
{
	C_FLAGS = $(C_FLAGS) --fp-trap
}

%option USERMODE
{
	C_FLAGS = $(C_FLAGS) --user-mode=$(MATCH)
	ASM_FLAGS = $(ASM_FLAGS) --user-mode=$(MATCH)
}

%option INTENUM
{
	CPLUS_FLAGS = $(CPLUS_FLAGS) --integer-enumeration
	C_FLAGS = $(C_FLAGS) --integer-enumeration
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

%option MMU_PRESENT
{
	user_func( validate_and_register_mmu_present )
}

%option MMU_ON
{
	user_func( validate_and_register_mmu_on )
}

# all is now known about cpu and/or core
# set all required tool parameters

PROCID  = user_func( get_procid )
CPU     = user_func( get_cpu )
CORE    = user_func( get_core )
HAS_FPU = user_func( get_fpu )
HAS_MMU = user_func( get_mmu )
LSL_CORE = user_func( get_lsl_core )

PROCID_UPPERCASE = user_func( uppercase, $(PROCID) )
CPU_UPPERCASE = user_func( uppercase, $(CPU) )

%option MCS_TASKS
{
       MCS_TASK_LIST = user_func( mcstasks, $(MATCH) )
}

%option NEW_TASK
{
	NEW_TASKS_LIST = $(NEW_TASKS_LIST) user_func( new_task, $(MATCH), option(NO_MAPFILE) )
}

#
#	Get user specified core name for linking the current task.
#
%option LSL_CORE_NAME
{
#
#	LSL_CORE is only defined for multi-core hardware.
#
#	A core name is only required for linking multi-core hardware.
#	The linker default core name "spe:tc" is used for linking
#	single core hardware. 
#
    %if $(LSL_CORE)
    {
#
#	Use the user specified core name instead of the one derived
#	from the registered processor or core.
#
    	LSL_CORE=mpe:$(MATCH)

#
#	LSL multi-core naming convention:
#		tc0..n: 	<derivative_nane>_<core_name>.lsl
#		vtc:		<derivative_nane>.lsl
#
	%if option(LSL_CORE_NAME) != "vtc"
	{
	    LSL_SUFFIX=_$(MATCH)
	    LSL_SUFFIX_UPPERCASE = user_func( uppercase, $(MATCH) )
	    C_FLAGS=$(C_FLAGS) -D__CORE_$(LSL_SUFFIX_UPPERCASE)__
	}
    }
}

# set the cpu parameters for the tools
#
%if $(CPU) == ""
{
}
%else
{
	CPLUS_FLAGS = $(CPLUS_FLAGS) -D__CPU__=$(CPU) -D__CPU_$(CPU_UPPERCASE)__
	C_FLAGS     = $(C_FLAGS)     -D__CPU__=$(CPU) -D__CPU_$(CPU_UPPERCASE)__
	ASM_FLAGS   = $(ASM_FLAGS)   -D__CPU__=$(CPU) -D__CPU_$(CPU_UPPERCASE)__
	LLNG_FLAGS  = $(LLNG_FLAGS)  -D__CPU__=$(CPU)
	%if $(LSL_FILES) == ""
	{	
		LSL_FILES = -d$(CPU)$(LSL_SUFFIX).lsl -dextmem.lsl
	}
}

%if $(PROCID_UPPERCASE)
{
	LLNG_FLAGS = $(LLNG_FLAGS) -D__PROC_$(PROCID_UPPERCASE)__
}

# set the core parameter for the tools
#
CPLUS_FLAGS = $(CPLUS_FLAGS) --core=$(CORE)
C_FLAGS     = $(C_FLAGS)     --core=$(CORE)
ASM_FLAGS   = $(ASM_FLAGS)   --core=$(CORE)

# set the default lsl core when required
#
%if $(LSL_CORE) == ""
{
}
%else
{
	%if !option(LINKONLY)
	{
	    LLNG_FLAGS  = $(LLNG_FLAGS) --core=$(LSL_CORE)
	}
}

# set the fpu parameters for the tools
#
%if ( $(HAS_FPU) == no || option(NO_FPU) )
{
	CPLUS_FLAGS = $(CPLUS_FLAGS) --no-fpu
	C_FLAGS     = $(C_FLAGS)     --no-fpu
	ASM_FLAGS   = $(ASM_FLAGS)   --no-fpu
}

# set the mmu parameters for the tools
#
%if $(HAS_MMU) == yes
{
	CPLUS_FLAGS = $(CPLUS_FLAGS) --mmu-present
	C_FLAGS     = $(C_FLAGS)     --mmu-present
	ASM_FLAGS   = $(ASM_FLAGS)   --mmu-present
	%if option(MMU_ON)
	{
		CPLUS_FLAGS = $(CPLUS_FLAGS) --mmu-on
		C_FLAGS     = $(C_FLAGS)     --mmu-on
	}
}

#=============================================================================

%option INCFILE
{
	INCFILE_FLAGS = $(INCFILE_FLAGS) -H $(MATCH)
}

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
	%if ( !option( DWVER ) )
	{
		ASM_FLAGS = $(ASM_FLAGS) --dwarf-version=2
	}
}

%if ( $(HAS_FPU) == yes && !option(NO_FPU) && !option(USE_DPF) && !option(EABI) )
{
	CPLUS_FLAGS = $(CPLUS_FLAGS) -F
	C_FLAGS = $(C_FLAGS) -F
	SINGLE_FP_tag = s
}

%option STATIC
{
	STATIC_FLAGS = --static
}

%option SINTBF
{
        CPLUS_FLAGS = $(CPLUS_FLAGS) --signed-bitfields
        C_FLAGS = $(C_FLAGS) --signed-bitfields
}

%option UCHAR
{
	CPLUS_FLAGS = $(CPLUS_FLAGS) --uchar
	C_FLAGS = $(C_FLAGS) --uchar
}

%option ERROR_FILE
{
	# Note that the --error-file needs a filename when used by the C++ compiler. Thus we add this to the compilation
	# rules for C++ files.
	C_FLAGS = $(C_FLAGS) --error-file
	ASM_FLAGS = $(ASM_FLAGS) --error-file
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
	CPLUS_FLAGS = $(CPLUS_FLAGS) -D$(MATCH)
	C_FLAGS = $(C_FLAGS) -D$(MATCH)
	ASM_FLAGS = $(ASM_FLAGS) -D$(MATCH)
}

%option MACRO_UNDEF
{
	# Add macro un-definitions
	CPLUS_FLAGS = $(CPLUS_FLAGS) -U$(MATCH)
	C_FLAGS = $(C_FLAGS) -U$(MATCH)
}

%option INCLUDE_DIR
{
	# Add include directories
	CPLUS_FLAGS = $(CPLUS_FLAGS) -I$(MATCH)
	C_FLAGS = $(C_FLAGS) -I$(MATCH)
	ASM_FLAGS = $(ASM_FLAGS) -I$(MATCH)
}

%option IO_STREAMS
{
	CPLUS_FLAGS = $(CPLUS_FLAGS) --io-streams
}

#--------------------------------------------------------------------------------------------------

%option SILICON_BUG
{
	user_func( validate_and_register_silicon_bug, $(MATCH) )
}

# All silicon bug workarounds have been registered, now add the options for compiler and assembler
#
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
	SYSLIBS_DIR = $(LIB_PATH)
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

# We have suboptions PROFBLOCK, PROFCALL, PROFFUNC and PROFTIME.
# PROFEDGE is not yet available.
# We have libraries for block/function, callgraph, callgraph/timing and timing,
# so do something smart with correct combinations, and nothing with the rest.
P_LIB_TYPE	=
%option PROFILE
{
        PROFILE_FLAGS = $(PROFILE_FLAGS)$(MATCH)
	%if !option(PROFCALL) && !option(PROFTIME) && ( option(PROFBLOCK) || option(PROFFUNC) )
	{
		# function or block
		P_LIB_TYPE = b
	}
	%elif !option(PROFCALL) && !option(PROFBLOCK) && option(PROFTIME)
	{
		# timing
		P_LIB_TYPE = t
	}
	%elif option(PROFCALL) && !option(PROFBLOCK) && !option(PROFTIME)
	{
		# callgraph
		P_LIB_TYPE = c
	}
	%elif option(PROFCALL) && !option(PROFBLOCK) && option(PROFTIME)
	{
		# callgraph + timing
		P_LIB_TYPE = ct
	}
	%elif option(BR_STAT)
	{	
		# static profiling requires no library
	}
#	%else
#	{
#		%diag F_profiling_combo
#	}
}

%if option(PROFILE)
{
        C_FLAGS = $(C_FLAGS) -p$(PROFILE_FLAGS)
}

%if option(PROFILE) && !option(SYMDEB)
{
        C_FLAGS = $(C_FLAGS) -g
}

#--------------------------------------------------------------------------------------------------

# Specify default libraries
%if !option(NO_SYSLIBS)
{
	# determine several library name extensions
	
	%if option(TRAP_FP)
	{
		TRAP_FP_tag = t
	}

	%if option(EXCEPTIONS) || option(IO_STREAMS)
	{
		EH_tag	= x
	}

	%if ( $(HAS_FPU) == yes && !option(NO_FPU) )
	{
		#
		# The runtime floating point library using FPU instructions
		#
	    	FP_FPU_tag = _fpu

		#
		# C, STL and C++ libraries with FPU instructions and trap handling do not exist,
		# because they are superfluous.
		#
		# When trapping is enabled FPU instruction generation is disabled in the compiler,
		# the FPU instructions are supported via compiler generated run-time floating point
		# function calls, the run-time floating point functions contain FPU trap handler calls.
		#
		%if !option(TRAP_FP)
		{
			FPU_tag = _fpu
		}
	}

	# construct syslib option(s) for c++ (libcp and possibly libstl)
	#
	%if $(HAVE_CPLUS) || option(FORCE_CPLUS)
	{
		%if option(IO_STREAMS)
		{
			STL_LIB	= -lstl$(SINGLE_FP_tag)$(EH_tag)$(FPU_tag)
		}
		CPLUS_LIB = $(STL_LIB) -lcp$(SINGLE_FP_tag)$(EH_tag)$(FPU_tag)
	}

	# construct syslib option(s) for libc
	#
	C_LIB = -lc$(SINGLE_FP_tag)$(FPU_tag)
	# construct syslib option for libp
	#
	%if $(P_LIB_TYPE)
	{
		P_LIB	= -lp$(P_LIB_TYPE)
	}

	%if option(MILLINK) || option(MILSPLIT)
	{
		C_MIL_LIB = libc$(SINGLE_FP_tag)$(FPU_tag).ma
                %if $(P_LIB_TYPE)
                {
                        P_MIL_LIB = libp$(P_LIB_TYPE).ma
                }
 	}

	# construct syslib option for libfp
	#
	FP_LIB	= -lfp$(TRAP_FP_tag)$(FP_FPU_tag)
	
	# construct syslib option for librt
	#
	RT_LIB	= -lrt
	
	SYSLIBS = $(CPLUS_LIB) $(P_LIB) $(C_LIB) $(FP_LIB) $(RT_LIB) -L$(SYSLIBS_DIR)
}

%option	ERRWARN
{
	%if $(MATCH)
	{
		C_FLAGS = $(C_FLAGS) --warnings-as-error=$(MATCH)
	}
	%else
	{
		CPLUS_FLAGS = $(CPLUS_FLAGS) --warnings-as-errors
		C_FLAGS = $(C_FLAGS) --warnings-as-errors
		ASM_FLAGS = $(ASM_FLAGS) --warnings-as-errors
		LLNG_FLAGS = $(LLNG_FLAGS) --warnings-as-errors
	}
}

%option NOWARN
{
	%if !$(MATCH)
	{
		CPLUS_FLAGS = $(CPLUS_FLAGS) --no-warnings
		C_FLAGS = $(C_FLAGS) --no-warnings
		ASM_FLAGS = $(ASM_FLAGS) --no-warnings
		LLNG_FLAGS = $(LLNG_FLAGS) --no-warnings
	}
}

%if !option(SHOW_CPLUS_WARN) && !option(NOWARN)
{
	IC_FLAGS     = $(IC_FLAGS)     --no-warnings
	IC_ASM_FLAGS = $(IC_ASM_FLAGS) --no-warnings
}


%option SYMDEB
{
	C_FLAGS = $(C_FLAGS) -g$(MATCH)
	ASM_FLAGS = $(ASM_FLAGS) -gsl
	# Linker has no -g option, it does have a -S to strip debug info
	# LLNG_FLAGS = $(LLNG_FLAGS) -g
}

%option KEEP_FILES
{
	# Not implemented in the C++ compiler
	C_FLAGS = $(C_FLAGS) -k
	ASM_FLAGS = $(ASM_FLAGS) -k
	LLNG_FLAGS = $(LLNG_FLAGS) -k
}

%option PASS_CPLUS
{
	CPLUS_FLAGS = $(CPLUS_FLAGS) $(MATCH)
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

%option EXCEPTIONS
{
	CPLUS_FLAGS = $(CPLUS_FLAGS) -x
}

%if option(NO_AUTO_INST)
{
	CPLUS_FLAGS = $(CPLUS_FLAGS) --no-auto-instantiation
}

%option INSTANTIATE
{
	CPLUS_FLAGS = $(CPLUS_FLAGS) -t$(MATCH)
}

# C++ muncher
%if $(HAVE_CPLUS) || option(FORCE_MUNCH)
{
	LLNG_FLAGS = $(LLNG_FLAGS) --munch
}

%option CASE_INSENS
{
	ASM_FLAGS = $(ASM_FLAGS) --case-insensitive
	LLNG_FLAGS = $(LLNG_FLAGS) --case-insensitive
}

%option NO_TASKING_SFR
{
        %diag W_no_tasking_sfr
}

%option FPU_PRESENT
{
        %diag W_fpu_present
}

%option TASKING_SFR
{
    	%if $(CPU) != ""
	{
            SFR_SFR = -Hsfr/reg$(CPU).sfr
            SFR_DEF = -Hsfr/reg$(CPU).def
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

# elfpatch options

%option RENAMESECTIONS
{
        ELFP_FLAGS = $(ELFP_FLAGS) --command-file=$(MATCH)
}

%option DATAREFERENCEMODIFICATION
{
        ELFP_FLAGS = $(ELFP_FLAGS) --data-reference-modification-file=$(MATCH)
}

%option VAREDSECTION
{
        ELFP_FLAGS = $(ELFP_FLAGS) --vared-info-section=$(MATCH)
}

# non-control program options
#
# priority:	C compiler / C++ compiler / Linker/Locator / Assembler
#

%set_option C_FLAGS
{
	%include opt-ctc.spec
}

%set_option CPLUS_FLAGS
{
	%include opt-cptc.spec
}

%set_option LLNG_FLAGS
{
	%include opt-lltc.spec
}

%set_option ASM_FLAGS
{
	%include opt-astc.spec
}

#-----------------------------------------------------------------------------
# determine whether there is a single input file
#
# when there are more input files, the variable SINGLE_INPUT does NOT exist
#                                                                 ===
#
ALL_FILES = $(CPLUS_FILES) $(C_FILES) $(MIL_FILES) $(ASM_FILES) $(IC_FILES)
%if count(ALL_FILES) == 1
{
	SINGLE_INPUT = 1
	%if count(CPLUS_FILES) == 1
	{
		CPP_INCFILE_FLAGS = $(INCFILE_FLAGS)
	}
	%elif count(ASM_FILES) == 1
	{
		ASM_INCFILE_FLAGS = $(INCFILE_FLAGS)
	}
	%else
	{
		C_INCFILE_FLAGS = $(INCFILE_FLAGS)
	}
}
%else
{
	ALL_CFILES = $(C_FILES) $(MIL_FILES) $(IC_FILES)
	%if count(CPLUS_FILES) != 0
	{
		CPP_INCFILE_FLAGS = $(INCFILE_FLAGS)
	}
	%if count(ASM_FILES) != 0
	{
		ASM_INCFILE_FLAGS = $(INCFILE_FLAGS)
	}
	%if count(ALL_CFILES) != 0 
	{
		C_INCFILE_FLAGS = $(INCFILE_FLAGS)
	}
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
	%action $(CPLUS_FILES)
        {
                %if option(ERROR_FILE)
                {
                        ERR_FLAGS = --error-file=replace_extension($(MATCH), ecp)
                }
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
                $(CPFE) $(PP_FLAGS) $(CPP_INCFILE_FLAGS) $(CPLUS_FLAGS) $(SFR_SFR) $(ERR_FLAGS) $(OUT) $(MATCH)
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
                $(CFE) $(PP_FLAGS) $(C_INCFILE_FLAGS) $(C_FLAGS) $(SFR_SFR) $(OUT) $(MATCH)
        }
}

%stop option(PREPROC) && !option(PREPROC_COMP)


#-----------------------------------------------------------------------------
# Syntax checking only
#
%if option(CHECK)
{
	%action $(CPLUS_FILES)
	{
		$(CPFE) --check $(CPP_INCFILE_FLAGS) $(CPLUS_FLAGS) $(SFR_SFR) $(MATCH)
	}

	%action $(C_FILES)
	{
		$(CFE) --check $(C_INCFILE_FLAGS) $(C_FLAGS) $(SFR_SFR) $(MATCH)
	}

	%action $(ASM_FILES)
	{
		$(ASM) --check $(ASM_INCFILE_FLAGS) $(ASM_FLAGS) $(SFR_DEF) $(MATCH)
	}

	%stop 1
}


#-----------------------------------------------------------------------------
# handle c++ files

# compilation actions
%if	count(CPLUS_FILES) == 1 && count(C_FILES) == 0 && count(ASM_FILES) == 0 && count(OBJ_FILES) == 0 &&
	!(option(C_CFILE) || option(C_ASSEMBLY) || option(C_OBJECT) || option(C_RELOCATION)) &&
	!option(INSTANTIATE)
{
	CPLUS_FLAGS = $(CPLUS_FLAGS) -tused
}

%action $(CPLUS_FILES)
{
	%if option(ERROR_FILE)
	{
		ERR_FLAGS = --error-file=replace_extension($(MATCH), ecp)
	}

	OUT = output_file($(MATCH), $(CPFE_OUT), $(SINGLE_INPUT), option(C_CFILE))
        $(CPFE) $(CPP_INCFILE_FLAGS) $(CPLUS_FLAGS) $(SFR_SFR) $(ERR_FLAGS) -o $(OUT) $(MATCH)
       	GEN_IC_FILES = $(GEN_IC_FILES) $(OUT)
}

%stop option(C_CFILE)

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
			$(CFE) $(C_INCFILE_FLAGS) $(C_FLAGS) $(SFR_SFR) --mil -o $(OUT) $(MATCH)
		}
		%else
		{
			OUT = output_file($(MATCH), $(CFE_OUT), $(SINGLE_INPUT), option(C_ASSEMBLY))
			$(CFE) $(C_INCFILE_FLAGS) $(C_FLAGS) $(SFR_SFR) -o $(OUT) $(MATCH)
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
		$(CFE) $(C_INCFILE_FLAGS) $(C_FLAGS) $(SFR_SFR) -o $(OUT) $(MATCH)
		GEN_ASM_FILES = $(GEN_ASM_FILES) $(OUT)
	}
}

# from c++ generated c-files
#
%action $(IC_FILES) $(GEN_IC_FILES)
{
	%if ! (option(MILLINK) || option(MILSPLIT))
	{
		%if option(C_MIL)
		{
			OUT = output_file($(MATCH), $(MIL_OUT), $(SINGLE_INPUT), "1")
			$(CFE) $(C_INCFILE_FLAGS) $(C_FLAGS) $(IC_FLAGS) --mil -o $(OUT) $(MATCH)
		}
		%else
		{
			OUT = output_file($(MATCH), $(CFE_OUT), $(SINGLE_INPUT), option(C_ASSEMBLY))
			$(CFE) $(C_INCFILE_FLAGS) $(C_FLAGS) $(IC_FLAGS) -o $(OUT) $(MATCH)
			IC_ASM_FILES = $(IC_ASM_FILES) $(OUT)
		}
	}
}

#-----------------------------------------------------------------------------
# MIL linking/splitting

# when milsplit is used with default file extensions, the outputfiles are listed here
# when milsplit is used with named outputfiles, the outputfiles will already have been listed when handling
#	the input files, except for the generated c-files.
#
%action $(C_FILES)
{
	%if option(MILSPLIT) && !has_arg(MILSPLIT)
	{
		C_FILES_MSFILES = $(C_FILES_MSFILES) output_file($(MATCH), $(MS_OUT), "", option(C_MIL) )
	}
}
%action $(IC_FILES)
{
	%if option(MILSPLIT) && !has_arg(MILSPLIT)
	{
		IC_FILES_MSFILES = $(IC_FILES_MSFILES) output_file($(MATCH), $(MS_OUT), "", option(C_MIL) )
	}
}
%action $(MIL_FILES)
{
	%if option(MILSPLIT) && !has_arg(MILSPLIT)
	{
		MIL_FILES_MSFILES = $(MIL_FILES_MSFILES) output_file($(MATCH), $(MS_OUT), "", option(C_MIL) )
	}
}
%action $(MIL_ARCHIVES)
{
	%if option(MILSPLIT) && !has_arg(MILSPLIT)
	{
		MIL_ARCHIVES_MSFILES = $(MIL_ARCHIVES_MSFILES) output_file($(MATCH), $(MS_OUT), "", option(C_MIL) )
	}
}
%action $(GEN_IC_FILES)
{
	%if option(MILSPLIT)
	{
		GEN_IC_FILES_MSFILES = $(GEN_IC_FILES_MSFILES) output_file($(MATCH), $(MS_OUT), "", option(C_MIL) )
	}
}

# when milspit is used all ms-outputfiles are listed, generate the compiler options to handle them
# the c-compiler is always called with named outputfiles, when milsplit is used
# make sure the list of MSFILES are given in the same order as the related file lists for the c-compiler.
#
%action $(C_FILES_MSFILES) $(MIL_FILES_MSFILES) $(IC_FILES_MSFILES) $(GEN_IC_FILES_MSFILES) $(MIL_ARCHIVES_MSFILES)
{
	%if option(MILSPLIT)
	{
		MSFILE_FLAGS = $(MSFILE_FLAGS) --mil-split=$(MATCH)
	}
}

# call the c-compiler, using millinking/milspliting
#
%single_action $(C_FILES) $(MIL_FILES) $(IC_FILES) $(GEN_IC_FILES) $(MIL_ARCHIVES)
{
	%if option(MILLINK) || option(MILSPLIT)
	{
                %if option(ERROR_FILE) && (option(KEEP_TEMPS) || count(C_FILES) != 0 || count(MIL_FILES) != 0 || count(MIL_ARCHIVES) != 0)
                {
                        EXTENSION = $(MIL_OUT).$(C_ERR)
                        ERR_FLAGS = --error-file=output_file($(OUTPUT), $(EXTENSION), "", "1")
                }
                %else
                {
                        ERR_FLAGS =
                }
                %if $(P_MIL_LIB)
                {
                        MIL_LIBPATH = $(SYSLIBS_DIR)/$(P_MIL_LIB)
                }
                %if $(C_MIL_LIB)
                {
                        MIL_LIBPATH = $(MIL_LIBPATH) $(SYSLIBS_DIR)/$(C_MIL_LIB)
                }
		%if option(MILSPLIT)
		{
                        %if $(P_MIL_LIB)
                        {
                                MIL_LIB_P_MSFILE     = output_file($(P_MIL_LIB_STD), $(MS_OUT), "", option(C_MIL))
                                MIL_LIB_MSFILE_FLAGS = --mil-split=$(MIL_LIB_P_MSFILE)
                        }
                        %if $(C_MIL_LIB)
                        {
                                MIL_LIB_C_MSFILE     = output_file($(C_MIL_LIB_STD), $(MS_OUT), "", option(C_MIL))
                                MIL_LIB_MSFILE_FLAGS = $(MIL_LIB_MSFILE_FLAGS) --mil-split=$(MIL_LIB_C_MSFILE)
                        }
                        MIL_LIB_MSFILES = $(MIL_LIB_P_MSFILE) $(MIL_LIB_C_MSFILE)
                        OUT             = output_file($(OUTPUT), $(MIL_OUT), "1", option(C_MIL))
                        MIL_FLAGS       =
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
		}
		$(CFE) $(C_INCFILE_FLAGS) $(C_FLAGS) $(SFR_SFR) $(MILOPT) $(MSFILE_FLAGS) $(MIL_LIB_MSFILE_FLAGS) $(STATIC_FLAGS) -o $(OUT) $(MATCH) $(MIL_LIBPATH)
	}
}

%stop option(C_MIL)

#-----------------------------------------------------------------------------
# MS files

%if option(MILSPLIT) && !option(CHECK)
{
        GEN_MS_FILES = $(C_FILES_MSFILES) $(GEN_IC_FILES_MSFILES) $(MIL_FILES_MSFILES) $(MIL_ARCHIVES_MSFILES) $(MIL_LIB_MSFILES)
}

%action $(GEN_MS_FILES)
{
	OUT = output_file($(MATCH), $(CFE_OUT), $(SINGLE_INPUT), option(C_ASSEMBLY))
	$(CFE) $(C_INCFILE_FLAGS) $(C_FLAGS) $(SFR_SFR) -o $(OUT) $(MATCH)
	GEN_ASM_FILES = $(GEN_ASM_FILES) $(OUT)
}

%action $(IC_FILES_MSFILES) $(GEN_IC_FILES_MSFILES)
{
	OUT = output_file($(MATCH), $(CFE_OUT), $(SINGLE_INPUT), option(C_ASSEMBLY))
	$(CFE) $(C_INCFILE_FLAGS) $(C_FLAGS) $(SFR_SFR) -o $(OUT) $(MATCH)
	IC_ASM_FILES = $(IC_ASM_FILES) $(OUT)
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

	$(ASM) $(ASM_INCFILE_FLAGS) $(ASM_FLAGS) $(SFR_DEF) $(ASM_LST_FLAGS) -o $(OUT) $(MATCH)

	GEN_OBJ_FILES = $(GEN_OBJ_FILES) $(OUT)
}

%action $(IC_ASM_FILES)
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

	$(ASM) $(ASM_INCFILE_FLAGS) $(ASM_FLAGS) $(SFR_DEF) $(IC_ASM_FLAGS) $(ASM_LST_FLAGS) -o $(OUT) $(MATCH)

	GEN_OBJ_FILES = $(GEN_OBJ_FILES) $(OUT)
}

%stop option(C_OBJECT)

#-----------------------------------------------------------------------------
# handle obj files

%if	(option(RENAMESECTIONS) || option(DATAREFERENCEMODIFICATION))
{
	%single_action $(OBJ_FILES) $(GEN_OBJ_FILES)
	{
		OBJ_FILES = $(OBJ_FILES) $(GEN_OBJ_FILES)
	}

	%action	$(OBJ_FILES)
	{
		OUT = output_file($(MATCH), $(ELFP_OUT), $(SINGLE_INPUT), "")
		$(ELFP) -o $(OUT) $(ELFP_FLAGS) $(MATCH)
		LL_IN = $(LL_IN) $(OUT)
	}

	%action	$(LIB_FILES)
	{
		OUT = output_file($(MATCH), $(ELFP_LOUT), $(SINGLE_INPUT), "")
		$(ELFP) -o $(OUT) $(ELFP_FLAGS) $(MATCH)
		LL_IN = $(LL_IN) $(OUT)
	}

	%single_action $(LL_IN)
	{
		OUTFILE = output_file($(OUTPUT), $(LLNG_OUT), "1", "1")
		$(LLNG) -o $(OUTFILE)$(LLNG_OUTPUT_FLAGS) $(LSL_FILES) $(LLNG_FLAGS) $(MATCH) $(LIB_FLAGS) $(SYSLIBS) $(MCS_TASK_LIST) $(NEW_TASKS_LIST)
	}
}
%else
{
	%single_action $(OBJ_FILES) $(GEN_OBJ_FILES) $(LIB_FILES)
	{
		OBJ_FILES = $(OBJ_FILES) $(GEN_OBJ_FILES) $(LIB_FILES)
	}

	%single_action $(OBJ_FILES)
	{
		OUTFILE = output_file($(OUTPUT), $(LLNG_OUT), "1", "1")
		$(LLNG) -o $(OUTFILE)$(LLNG_OUTPUT_FLAGS) $(LSL_FILES) $(LLNG_FLAGS) $(MATCH) $(LIB_FLAGS) $(SYSLIBS) $(MCS_TASK_LIST) $(NEW_TASKS_LIST)
	}
}


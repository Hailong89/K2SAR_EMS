#!<mil-archive>
=                 535
__prof_block_entry
__prof_func_entry
__prof_func_entry2
__prof_func_exit
__prof_cleanup
__prof_int_entry
__prof_int_exit
__prof_init_real
__prof_clock
=               44621
_endinit_clear
_endinit_set
_START
_EBU_BOOTCFG
=               85819
_c_init_entry
_c_init
=              123635
__prof_open
__prof_write
__prof_close
__prof_int2hex
__prof_error
__prof_init
=              156243
__prof_open
__prof_write
__prof_close
__prof_int2hex
__prof_error
__prof_init_use_fs
__prof_init_use_stdout
.
+               44026           1397159280 profcalltime.mil
#!<mil>
# TASKING VX-toolset for TriCore: C compiler v99.9r9 Build 759
# options: --mil --core=tc1.6 -Rlibpct --section-name-with-symbol -N0 -O3 -g1 --global-type-checking --user-mode=user-0
# files: ..\..\..\profcalltime.c
#!G__prof_block_entry
#!G__prof_func_entry
#!G__prof_func_entry2
#!G__prof_func_exit
#!G__prof_cleanup
#!G__prof_int_entry
#!G__prof_int_exit
#!E__get_return_address
#!Ecalloc
#!Eexit
#!Eatexit
#!Eclock
#!e__prof_open
#!e__prof_write
#!e__prof_close
#!G__prof_init_real
#!e__prof_int2hex
#!e__prof_error
#!G__prof_clock
#!E__libc_references
MIL - 0 - version=3:2:b646:a4b1:loopinfo,profData
HEAD - 0 -
MODULE <1:1:..\..\..\profcalltime.c:<1
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=B,C,E,F,G,I,S,T
RUNTIME=B,C,M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=f
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=f
PACK=0
PREDEF=t
PROFENABLE=t
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=f
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=f
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=user-0
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=f
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=t
UM_USER1=f>> 0 <1
1
3
:
<:403:..\..\..\profcalltime.c:<2
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=B,C,E,F,G,I,S,T
RUNTIME=B,C,M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=f
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=f
PACK=0
PREDEF=f
PROFENABLE=f
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=f
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=f
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=user-0
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=f
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=t
UM_USER1=f>>
-
-
-
<1:__wchar_t 4 3 1 6 :1:..\..\..\profcalltime.c:1 <1:5,-,-,<2:1,int,<1:signed,-,<2:short,-,->>>,0,-> - - - 0 0 0>
<2:__size_t 4 3 1 6 : <3:5,-,-,<4:1,int,<3:unsigned,-,->>,0,-> - - - 0 0 0>
<3:__ssize_t 4 3 1 6 : <5:5,-,-,<6:1,int,<4:signed,-,->>,0,-> - - - 0 0 0>
4:__ptrdiff_t 4 3 1 6 : 5 - - - 0 0 0
5:__bounds_off_t 4 3 1 6 : 5 - - - 0 0 0
<6:__bounds_t 4 3 1 6 : <7:5,-,-,<8:5,-,-,<9:1,char,<5:.signed,-,->>,0,->,0,-> - - - 0 0 0>
7:__bounds_mem_t 4 3 1 6 : 7 - - - 0 0 0
<8:__ull 4 3 1 6 : <10:5,-,-,<11:1,int,<6:unsigned,-,<7:long,-,<8:long,-,->>>>,0,-> - - - 0 0 0>
<9:__prof_adm 4 3 1 6 : <12:5,-,-,<13:5,-,-,<14:1,void,->,0,->,0,-> - - - 0 0 0>
<10:__codeptr 4 3 1 6 : <15:5,-,-,<16:5,-,-,<17:7,-,-,14,0,->,0,->,0,-> - - - 0 0 0>
<11:__prof_block_entry 4 1 3 2 6:208:..\..\..\profcalltime.c:2 <18:5,-,-,<19:7,-,<9:-,<20:5,-,-,12,0,->,->,14,2,->,0,-> <10:.async_signal_safe,-,<11:__const__,-,<12:__export__,-,<13:__noinline__,-,->>>> <2
4
0
24
44
1
-
-
12:admin 4 3 7 1 38 20 - - 9 32 0 8> <3
4
0
24
44
<4
1
3
1:1:..\..\..\profcalltime.c:1
:403:..\..\..\profcalltime.c:2
-
-
-
<13:.1.tag 2 3 8 3 <9:36:..\..\..\..\ctc\bin\..\include\stdlib.h:<3
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=B,C,E,F,G,I,S,T
RUNTIME=B,C,M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=f
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=f
PACK=0
PREDEF=f
PROFENABLE=t
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=f
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=f
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=user-0
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=f
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=t
UM_USER1=f>> 21:2,-,-,-,0,13 - <5
5
0
17
:39
1
-
-
14:quot 3 3 8 5 29:37 5 - 0 - - 16 0 0
15:rem 3 3 8 5 :38 5 - 20 - - 16 0 0> 40 - - 32 0 0>
<16:.2.tag 2 3 8 3 9:41 22:2,-,-,-,0,16 - <6
5
0
17
:44
1
-
-
<17:quot 3 3 8 5 30:42 <23:5,-,-,<24:1,int,<14:signed,-,8>>,0,-> - 0 - - 16 0 0>
18:rem 3 3 8 5 :43 23 - 20 - - 16 0 0> 40 - - 32 0 0>
<19:.3.tag 2 3 8 3 9:47 25:2,-,-,-,0,19 - <7
5
0
17
:50
1
-
-
<20:quot 3 3 8 5 35:48 <26:5,-,-,<27:1,int,<15:signed,-,7>>,0,-> - 0 - - 32 0 0>
21:rem 3 3 8 5 :49 26 - 40 - - 32 0 0> 80 - - 32 0 0>
<22:tm 2 3 8 3 8:62:..\..\..\..\ctc\bin\..\include\time.h 28:2,tm,-,-,0,22 - <8
5
0
1:63
:73
1
-
-
23:tm_sec 3 3 8 5 17:64 5 - 0 - - 16 0 0
24:tm_min 3 3 8 5 :65 5 - 20 - - 16 0 0
25:tm_hour 3 3 8 5 :66 5 - 40 - - 16 0 0
26:tm_mday 3 3 8 5 :67 5 - 60 - - 16 0 0
27:tm_mon 3 3 8 5 :68 5 - 80 - - 16 0 0
28:tm_year 3 3 8 5 :69 5 - a0 - - 16 0 0
29:tm_wday 3 3 8 5 :70 5 - c0 - - 16 0 0
30:tm_yday 3 3 8 5 :71 5 - e0 - - 16 0 0
31:tm_isdst 3 3 8 5 :72 5 - 100 - - 16 0 0> 120 - - 32 0 0>
<32:__prof_elt_s 2 3 8 3 8:84:..\..\..\profcalltime.c:2 29:2,__prof_elt_s,-,-,0,32 - <9
5
0
1:85
:97
1
-
-
<33:next 3 3 8 5 26:86 <30:5,-,-,<31:5,-,-,29,0,->,0,-> - 0 - <34:__prof_elt_t 4 3 1 6 29:83 31 - - - 0 0 0> 32 0 0>
35:ref 3 3 8 5 25:87 12 - 20 - - 32 0 0
36:count 3 3 8 5 :88 5 - 40 - - 16 0 0
37:return_address 3 3 8 5 :89 15 - 60 - 10 32 0 0
38:depth 3 3 8 5 :90 23 - 80 - - 16 0 0
<39:start_time 3 3 8 5 :91 10 - a0 - <40:clock_t 4 3 1 6 33:32:..\..\..\..\ctc\bin\..\include\time.h:3 <32:5,-,-,<33:1,-,<16:long,-,<17:long,-,3>>>,0,-> - - - 0 0 0> 32 0 0>
41:total_time 3 3 8 5 25:92:..\..\..\profcalltime.c:2 10 - e0 - 40 32 0 0> 120 - - 32 0 0>
<42:__prof_admin_s 2 3 8 3 8:100 34:2,__prof_admin_s,-,-,0,42 - <10
5
0
1:101
:104
1
-
-
<43:next 3 3 8 5 26:102 <35:5,-,-,<36:5,-,-,34,0,->,0,-> - 0 - <44:__prof_admin_t 4 3 1 6 31:99 36 - - - 0 0 0> 32 0 0>
<45:call_info 3 3 8 5 25:103 <37:5,-,-,<38:6,-,-,29,40,->,0,-> - 20 - 34 32 0 0>> 4820 - - 32 0 0>
<46:__prof_info_s 2 3 8 3 8:107 39:2,__prof_info_s,-,-,0,46 - <11
5
0
1:108
:113
1
-
-
47:first 3 3 8 5 26:109 35 - 0 - 44 32 0 0
48:current 3 3 8 5 :110 35 - 20 - 44 32 0 0
49:current_count 3 3 8 5 25:111 5 - 40 - - 16 0 0
50:lock 3 3 8 5 :112 5 - 60 - - 16 0 0> 80 - - 32 0 0>>
-
-> - - 8 0 32>
<51:__prof_func_entry 4 1 3 2 6:209 18 10 <12
4
0
23
43
1
-
-
52:admin 4 3 7 1 37 20 - - 9 32 0 8> <13
4
0
23
43
4
-
-> - - 8 0 32>
<53:__prof_func_entry2 4 1 3 2 6:167 <40:5,-,-,<41:7,-,<18:-,20,<19:-,15,->>,14,2,->,0,-> 12 <14
4
0
24
63
1
-
-
54:admin 4 3 7 1 38 20 - - 9 32 0 8
55:retaddr 4 3 7 1 55 15 - - 10 32 0 8> <15
4
0
24
63
4
-
-> - - 8 0 32>
<56:__prof_func_exit 4 1 3 2 6:211 18 12 <16
4
0
22
42
1
-
-
57:admin 4 3 7 1 36 20 - - 9 32 0 8> <17
4
0
22
42
4
-
-> - - 8 0 32>
<58:__prof_cleanup 4 1 3 2 6:257 <42:5,-,-,<43:7,-,-,14,2,->,0,-> - <18
4
0
20
25
1
-
-> <19
4
0
20
25
4
-
-> - - 8 0 35>
<59:__prof_int_entry 4 1 3 2 6:239 42 12 <20
4
0
22
29
1
-
-> <21
4
0
22
29
4
-
-> - - 8 0 32>
<60:__prof_int_exit 4 1 3 2 6:244 42 12 <22
4
0
21
28
1
-
-> <23
4
0
21
28
4
-
-> - - 8 0 32>
<61:__get_return_address 4 1 2 2 <-:<4
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=B,C,E,F,G,I,S,T
RUNTIME=B,C,M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=f
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=t
PACK=0
PREDEF=t
PROFENABLE=t
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=f
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=f
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=user-0
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=f
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=t
UM_USER1=f>> <44:5,-,-,<45:7,-,-,16,2,->,0,-> <20:__const__,-,<21:__leaf__,-,<22:__builtin,-,->>> <24
4
0
-
-
1
-
-> <25
4
0
-
-
4
-
-> - 10 8 0 32>
62:size_t 4 3 1 6 25:15:..\..\..\..\ctc\bin\..\include\stddef.h:3 3 - - - 0 0 0
<63:wchar_t 4 3 1 6 26:20 <46:5,-,-,<47:1,int,<23:short,-,4>>,0,-> - - - 0 0 0>
64:ptrdiff_t 4 3 1 6 25:24 5 - - - 0 0 0
65:div_t 4 3 1 6 19:39:..\..\..\..\ctc\bin\..\include\stdlib.h 48:5,-,-,21,0,- - - - 0 0 0
66:ldiv_t 4 3 1 6 :44 49:5,-,-,22,0,- - - - 0 0 0
67:lldiv_t 4 3 1 6 :50 50:5,-,-,25,0,- - - - 0 0 0
<68:calloc 4 1 2 2 33:70 <51:5,-,-,<52:7,-,<24:-,3,<25:-,3,->>,13,2,->,0,-> 26:__malloc__,-,- <26
4
2
42
59
1
-
-
69:.1.nn 4 3 7 1 44 3 - - 62 16 0 0
70:.2.nn 4 3 7 1 52 3 - - 62 16 0 0> <27
4
0
42
59
4
-
-> - - 8 0 0>
<71:exit 4 1 2 2 33:90 <53:5,-,-,<54:7,-,<27:-,5,->,14,2,->,0,-> 28:__noreturn__,-,- <28
4
1
42
48
1
-
-
72:.1.nn 4 3 7 1 44 5 - - - 16 0 0> <29
4
0
42
48
4
-
-> - - 8 0 0>
<73:atexit 4 1 2 2 33:92 <55:5,-,-,<56:7,-,<29:-,<57:5,-,-,42,0,->,->,6,2,->,0,-> - <30
4
1
42
59
1
-
-
74:.1.nn 4 3 7 1 49 57 - - - 32 0 0> <31
4
0
42
59
4
-
-> - - 8 0 0>
40
<75:time_t 4 3 1 6 25:36:..\..\..\..\ctc\bin\..\include\time.h <58:5,-,-,<59:1,-,17>,0,-> - - - 0 0 0>
<76:clock 4 1 2 2 21:84 <60:5,-,-,<61:7,-,-,11,2,->,0,-> - <32
4
0
26
31
1
-
-> <33
4
0
26
31
4
-
-> - 40 8 0 0>
<77:__prof_open 4 1 2 2 6:13:..\..\..\profile.h <62:5,-,-,<63:7,-,-,6,2,->,0,-> - <34
4
0
23
28
1
-
-> <35
4
0
23
28
4
-
-> - - 8 0 64>
<78:__prof_write 4 1 2 2 6:14 <64:5,-,-,<65:7,-,<30:-,<66:5,-,-,<67:5,-,<31:const,-,->,9,0,->,0,->,27>,14,2,->,0,-> - <36
4
2
23
41
1
-
-
79:.1.nn 4 3 7 1 35 66 - - - 32 0 0
80:.2.nn 4 3 7 1 38 5 - - - 16 0 0> <37
4
0
23
41
4
-
-> - - 8 0 64>
<81:__prof_close 4 1 2 2 6:15 42 - <38
4
0
23
28
1
-
-> <39
4
0
23
28
4
-
-> - - 8 0 64>
<82:__prof_init_real 4 1 3 2 6:326:..\..\..\profcalltime.c:2 42 - <40
4
0
22
27
1
-
-> <41
4
0
22
27
4
-
-> - - 8 0 0>
<83:__prof_int2hex 4 1 2 2 6:17:..\..\..\profile.h:3 <68:5,-,-,<69:7,-,<32:-,7,<33:-,5,<34:-,<70:5,-,-,<71:1,int,<35:unsigned,-,8>>,0,->,27>>>,14,2,->,0,-> - <42
4
4
23
55
1
-
-
84:.1.nn 4 3 7 1 29 7 - - - 32 0 0
85:.2.nn 4 3 7 1 32 5 - - - 16 0 0
86:.3.nn 4 3 7 1 37 70 - - - 16 0 0
87:.4.nn 4 3 7 1 52 5 - - - 16 0 0> <43
4
0
23
55
4
-
-> - - 8 0 64>
<88:__prof_error 4 1 2 2 6:18 <72:5,-,-,<73:7,-,<36:-,7,->,14,2,->,0,-> - <44
4
1
23
30
1
-
-
89:.1.nn 4 3 7 1 29 7 - - - 32 0 0> <45
4
0
23
30
4
-
-> - - 8 0 64>
34
44
90:__prof_info_t 4 3 1 6 :106:..\..\..\profcalltime.c:2 74:5,-,-,39,0,- - - - 0 0 0
91:__prof_info 4 2 4 1 25:115 74 - - 90 32 0 3
92:last_int_start_time 4 2 4 1 :116 10 - - 40 32 0 8
93:total_int_time 4 2 4 1 :117 10 - - 40 32 0 3
94:total_prof_time 4 2 4 1 :118 10 - - 40 32 0 3
95:prof_const_overhead_time 4 2 4 1 :119 10 - - 40 32 0 3
96:prof_const_overhead_time_r 4 2 4 1 :120 10 - - 40 32 0 3
97:function_correction_value 4 2 4 1 :121 10 - - 40 32 0 3
<98:check_available_page 4 2 4 2 13:128 42 - <46
4
0
33
40
1
-
-> <47
4
0
33
40
4
-
-> - - 8 0 136>
<99:.1.str 4 2 6 1 39:138 <75:5,-,31,<76:6,-,-,9,34,->,0,-> - - - 8 0 3>
<100:__prof_clock 4 1 3 2 9:156 60 - <48
4
0
21
26
1
-
-> <49
4
0
21
26
4
-
-> - 40 8 0 0>
<101:.2.ini 4 2 5 1 27:260 <77:5,-,31,<78:6,-,-,9,22,->,0,-> - - - 8 0 8>
<102:.3.ini 4 2 5 1 :265 <79:5,-,31,<80:6,-,-,9,17,->,0,-> - - - 8 0 8>
<103:never_true 4 2 4 1 21:320 <81:5,-,<37:volatile,-,->,6,0,-> - - - 16 0 8>
<104:empty_func 4 2 4 2 13:321 42 - <50
4
0
23
28
1
-
-> <51
4
0
23
28
4
-
-> - - 8 0 8>
105:__libc_references 4 1 2 2 1:1:..\..\..\profcalltime.c:1 16 22 - - - - 8 0 1056> 1 4
BEGIN : 0 1
FUNC 13:128:..\..\..\profcalltime.c:2 4 <52
3
0
1:129
:154
46
<53
3
0
9:132
:153
52
-
->
-> 98 <54
2
0
1:129
:154
-
-
-> 52 <55
3
0
:129
:154
47
<56
3
0
9:132
:153
55
-
->
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY 1:129 0 52 profData=0,0,0,1,0,0,0,0,1,0
EXIT :154 0 52 profData=0,0,0,1,0,0,0,0,1,0
FUNC 9:156 0 <57
3
1
1:157
:165
48
-
-
106:clk 4 3 7 1 17:158 10 - - 40 32 0 8
107:.c1 4 3 7 1 9:156 7 - - - 32 0 264> 100 <58
2
0
1:157
:165
-
-
-> 57 <59
3
0
:157
:165
49
-
-> profData=0,0,0,0,1,0,0,0,0,11
ENTRY :157 0 57 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 27:160 0 57 profData=0,0,0,1,1,0,0,0,1,11
STAT : 0 57
ST 20 0 - 14
OBJ : 0 - 7 107
ADD : 0 - 8
CONV : 0 - 8
OBJ 9 0 - 74 91
CON 20 0 - 6 c
STAT 27 0 57
ST 25 0 - 14
CONV 20 0 - 5
LD : 0 - 8
OBJ : 0 - 7 107
ADD 25 0 - 6
LD 20 0 - 6
CONV : 0 - 5
LD : 0 - 8
OBJ : 0 - 7 107
CON 25 0 - 6 1
STAT 22:161 0 57
ST 13 0 - 14
OBJ 9 0 - 10 106
CALL 20 0 - 11
OBJ 15 0 - 60 76
NIL 21 0 - 14
STAT 27:162 0 57
ST 25 0 - 14
CONV 20 0 - 5
LD : 0 - 8
OBJ : 0 - 7 107
SUB 25 0 - 6
LD 20 0 - 6
CONV : 0 - 5
LD : 0 - 8
OBJ : 0 - 7 107
CON 25 0 - 6 1
RETURN 9:164 0 57 1 profData=0,0,1,0,0,0,0,100,0,0
LD 16 0 - 11
OBJ : 0 - 10 106
LABEL 1:165 0 57 1
EXIT : 0 57 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:167 0 <60
3
7
1:168
:206
14
<61
3
0
:129
:154
60
<62
3
0
9:132
:153
61
<63
3
0
33:128
40
60
-
->
53
108:new_page 4 3 7 1 34:133 35 - - 44 32 0 8>
52>
-
109:reff 4 3 7 1 25:169 82:5,-,-,30,0,- - - 34 32 0 8
110:ref 4 3 7 1 :170 30 - - 34 32 0 8
111:clk 4 3 7 1 :171 10 - - 40 32 0 8
112:.c1 4 3 7 1 6:167 7 - - - 32 0 264
113:.c2 4 3 7 1 : 30 - - - 32 0 264
114:.c3 4 3 7 1 : 30 - - - 32 0 264
115:.c4 4 3 7 1 : 7 - - - 32 0 264
116:.c5 4 3 7 1 : 83:5,-,-,10,0,- - - - 32 0 264
117:.c6 4 3 7 1 : 7 - - - 32 0 264
118:.c7 4 3 7 1 : 84:5,-,-,74,0,- - - - 32 0 264> 53 <64
2
0
1:168
:206
-
-
-> 60 <65
3
0
:168
:206
15
<66
3
0
:129
:154
65
<67
3
0
9:132
:153
66
<68
3
0
33:128
40
65
-
->
56>
55>
-> profData=0,0,0,0,1,0,0,0,0,2
ENTRY 1:168 0 60 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 30:169 0 60 profData=0,0,0,1,1,0,0,0,1,2
STAT : 0 60
ST : 1 - 14
OBJ 25 0 - 82 109
CONV 32 32 - 30
LD 48 0 - 12
OBJ : 0 - 20 54
STAT 9:174 0 60
ST 14 0 - 14
OBJ : 0 - 84 118
OBJ : 0 - 74 91
STAT 9 0 60
ST 25 0 - 14
OBJ : 0 - 7 112
ADD : 0 - 8
CONV : 0 - 8
LD 14 0 - 74
OBJ : 0 - 84 118
CON 25 0 - 6 c
JUMPT 9 0 60 12 profData=0,1,1,0,0,0,81,50,0,0
NE : 0 - 85:1,_Bool,- profData=0,1,1,0,0,0,-1,50,0,0
LD 25 0 - 6
CONV : 0 - 5
LD : 0 - 8
OBJ : 0 - 7 112
CON 9 0 - 6 0
BLOCK 29:178 0 60 profData=0,0,0,1,1,0,0,0,0.19,0.38
STAT : 0 60
ST 13 0 - 14
OBJ 9 0 - 10 111
CALL 27 0 - 11
OBJ 15 0 - 60 100
NIL 28 0 - 14
JUMP 61:180 0 60 2 profData=0,0,1,0,0,0,0,100,0,0
LABEL : 0 60 -1 loopinfo=2,0,0,-2,1
BLOCK 40:182 0 60 profData=0,0,0,1,1,0,0,0,0.96,1.9
STAT : 0 60
ST 22 0 - 14
OBJ 17 0 - 82 109
CONV 33 0 - 30
LD 27 0 - 31
LD 28 0 - 30
OBJ : 0 - 82 109
NOJUMP 40 0 60 profData=0,0,1,0,0,0,0,0,0,0
LABEL 61:180 0 60 2
BLOCK 17 0 60 profData=0,0,0,1,1,0,0,0,1.1,2.2
STAT : 0 60
ST : 0 - 14
OBJ : 0 - 30 113
LD : 0 - 31
LD 18 0 - 30
OBJ : 0 - 82 109
JUMPF 17 0 60 3 profData=0,1,1,0,0,0,1,50,0,0
NE : 0 - 85 profData=0,1,1,0,0,0,60,50,0,0
LD : 0 - 31
OBJ : 0 - 30 113
CON : 0 - 31 0
BLOCK 50 0 60 profData=0,0,0,1,1,0,0,0,1.1,2.1
JUMPT : 0 60 -1 profData=0,1,1,0,0,0,90,50,0,0
NE : 0 - 85 profData=0,1,1,0,0,0,60,50,0,0
LD 33 0 - 16
CONV : 0 - 15
ADD : 0 - 8
CONV : 0 - 8
LD 27 0 - 31
OBJ : 0 - 30 113
CON 33 0 - 6 c
LD 53 0 - 16
OBJ : 0 - 15 55
LABEL 23 0 60 3
BLOCK 14:184 0 60 profData=0,0,0,1,1,0,0,0,0.12,0.24
JUMPT : 0 60 10 profData=0,1,1,0,0,0,60,50,0,0
NE : 0 - 85 profData=0,1,1,0,0,0,60,50,0,0
LD : 0 - 31
OBJ : 0 - 30 113
CON : 0 - 31 0
BLOCK :130 0 61 profData=0,0,0,1,1,0,0,0,0.047,0.094
JUMPF : 0 61 4 profData=0,1,1,0,0,0,16,50,0,0
NE : 0 - 85 profData=0,1,1,0,0,0,60,50,0,0
LD 25 0 - 36
CONV : 0 - 35
LD 14 0 - 74
OBJ : 0 - 84 118
CON : 0 - 36 0
BLOCK 39:131 0 61 profData=0,0,0,1,1,0,0,0,0.04,0.079
STAT : 0 61
ST 24 0 - 14
OBJ : 0 - 7 117
ADD : 0 - 8
CONV : 0 - 8
LD 13 0 - 74
OBJ : 0 - 84 118
CON 24 0 - 6 8
JUMPF 39 0 61 9 profData=0,1,1,0,0,0,81,50,0,0
EQ : 0 - 85 profData=0,1,1,0,0,0,-1,50,0,0
LD 24 0 - 6
CONV : 0 - 5
LD : 0 - 8
OBJ : 0 - 7 117
CON 42 0 - 6 40
LABEL 32:130 0 61 4
BLOCK 35:135 0 62 profData=0,0,0,1,1,0,0,0,0.015,0.03
STAT : 0 61
ST 32:130 0 - 14
OBJ : 0 - 7 117
ADD 24:131 0 - 8
CONV : 0 - 8
LD 13 0 - 74
OBJ : 0 - 84 118
CON 24 0 - 6 8
STAT 35:135 0 62
ST 33 0 - 14
CONV 28 0 - 5
LD : 0 - 8
OBJ : 0 - 7 112
ADD 33 0 - 6
LD 28 0 - 6
CONV : 0 - 5
LD : 0 - 8
OBJ : 0 - 7 112
CON 33 0 - 6 1
STAT 32:136 0 62
ST : 0 - 14
OBJ 23 0 - 35 108
CONV 34 32 - 36
CALL 57 0 - 13
OBJ 51 0 - 51 68
ARG 59 0 - 14
CON 58 0 - 4 1
ARG 82 0 - 14
CON 60 0 - 4 904
NIL 82 0 - 14
JUMPT 22 0 62 5 profData=0,1,1,0,0,0,81,50,0,0
NE : 0 - 85 profData=0,1,1,0,0,0,60,50,0,0
LD 23 0 - 36
OBJ : 0 - 35 108
CON 22 0 - 36 0
BLOCK 95:138 0 62 profData=0,0,0,1,1,0,0,0,0.0029,0.0057
STAT : 0 62
CALL 37 0 - 14
OBJ 25 0 - 72 88
ARG 94 0 - 14
CONV 39 0 - 8
OBJ : 0 - 86:5,-,-,76,0,- 99
NIL 94 0 - 14
STAT 32:139 0 62
CALL 29 0 - 14
OBJ 25 0 - 53 71
ARG 31 0 - 14
CON 30 0 - 6 1
NIL 31 0 - 14
JUMP 32 2 62 8 profData=0,0,1,0,0,0,0,100,0,0
LABEL 17:136 0 62 5
BLOCK 35:141 0 62 profData=0,0,0,1,1,0,0,0,0.012,0.024
STAT : 0 62
ST 33 0 - 14
CONV 28 0 - 5
LD : 0 - 8
OBJ : 0 - 7 112
SUB 33 0 - 6
LD 28 0 - 6
CONV : 0 - 5
LD : 0 - 8
OBJ : 0 - 7 112
CON 33 0 - 6 1
STAT 46:142 0 62
ST 43 0 - 14
CONV 28 0 - 5
LD : 0 - 8
OBJ : 0 - 7 117
CON 45 0 - 6 0
JUMPT 22:143 0 62 6 profData=0,1,1,0,0,0,60,50,0,0
NE : 0 - 85 profData=0,1,1,0,0,0,60,50,0,0
LD 33 0 - 36
CONV : 0 - 35
LD 22 0 - 74
OBJ : 0 - 84 118
CON : 0 - 36 0
BLOCK 53:145 0 62 profData=0,0,0,1,1,0,0,0,0.0049,0.0098
STAT : 0 62
ST 43 0 - 14
CONV 36 0 - 35
LD 25 0 - 74
OBJ : 0 - 84 118
LD 45 0 - 36
OBJ : 0 - 35 108
JUMP 53 0 62 7 profData=0,0,1,0,0,0,0,100,0,0
LABEL 17:143 0 62 6
BLOCK 61:150 0 62 profData=0,0,0,1,1,0,0,0,0.0073,0.015
STAT : 0 62
ST 51 0 - 14
CONV 44 0 - 35
LD 36 0 - 36
CONV : 0 - 35
ADD : 0 - 8
CONV : 0 - 8
LD 25 0 - 74
OBJ : 0 - 84 118
CON 36 0 - 6 4
LD 53 0 - 36
OBJ : 0 - 35 108
NOJUMP 61 0 62 profData=0,0,1,0,0,0,0,0,0,0
LABEL 17:148 0 62 7
BLOCK 55:151 0 62 profData=0,0,0,1,1,0,0,0,0.012,0.024
STAT : 0 62
ST 45 0 - 14
CONV 36 0 - 35
ADD : 0 - 8
CONV : 0 - 8
LD 25 0 - 74
OBJ : 0 - 84 118
CON 36 0 - 6 4
LD 47 0 - 36
OBJ : 0 - 35 108
NOJUMP 55 0 62 profData=0,0,1,0,0,0,0,0,0,0
LABEL 1:154 0 61 8
LABEL 9:130 0 61 9
BLOCK 39:186 0 60 profData=0,0,0,1,1,0,0,0,0.047,0.094
STAT 102:187 0 60
ST 47 0 - 14
OBJ : 0 - 30 114
ADD : 0 - 31
CONV 36 0 - 31
ADD : 0 - 8
CONV : 0 - 8
LD 28 0 - 36
CONV : 0 - 35
ADD : 0 - 8
CONV : 0 - 8
LD 17 0 - 74
OBJ : 0 - 84 118
CON 28 0 - 6 4
CON 36 0 - 6 4
MUL 47 0 - 6
LD 59 0 - 6
CONV : 0 - 5
LD : 0 - 8
OBJ : 0 - 7 117
CON 47 0 - 6 24
STAT 102 0 60
ST 79 0 - 14
CONV 74 0 - 12
ADD : 0 - 8
CONV : 0 - 8
LD 47 0 - 31
OBJ : 0 - 30 114
CON 74 0 - 6 4
CONV 81 32 - 13
LD 97 0 - 12
OBJ : 0 - 20 54
STAT 99:188 0 60
ST 90 0 - 14
CONV 74 0 - 15
ADD : 0 - 8
CONV : 0 - 8
LD 47 0 - 31
OBJ : 0 - 30 114
CON 74 0 - 6 c
LD 92 0 - 16
OBJ : 0 - 15 55
STAT 83:189 0 60
ST 23 0 - 14
LD 18 0 - 30
OBJ : 0 - 82 109
LD 56 0 - 31
OBJ : 0 - 30 114
STAT 44:190 0 60
ST 42 0 - 14
CONV 28 0 - 5
LD : 0 - 8
OBJ : 0 - 7 117
ADD 42 0 - 6
LD 28 0 - 6
CONV : 0 - 5
LD : 0 - 8
OBJ : 0 - 7 117
CON 42 0 - 6 1
NOJUMP 44 0 60 profData=0,0,1,0,0,0,0,0,0,0
LABEL 9:184 0 60 10
BLOCK 25:192 0 60 profData=0,0,0,1,1,0,0,0,0.12,0.24
STAT : 0 60
ST 16 0 - 14
OBJ : 0 - 7 115
ADD : 0 - 8
CONV : 0 - 8
LD 10 0 - 31
LD 11 0 - 30
OBJ : 0 - 82 109
CON 16 0 - 6 8
STAT 25 0 60
ST 23 0 - 14
CONV 16 0 - 5
LD : 0 - 8
OBJ : 0 - 7 115
ADD 23 0 - 6
LD 16 0 - 6
CONV : 0 - 5
LD : 0 - 8
OBJ : 0 - 7 115
CON 23 0 - 6 1
STAT 39:194 0 60
ST 13 0 - 14
OBJ 9 0 - 30 110
LD 15 0 - 31
CONV 17 32 - 30
LD 33 0 - 12
OBJ : 0 - 20 54
STAT 21:195 0 60
ST 19 0 - 14
CONV 12 0 - 23
ADD : 0 - 8
CONV : 0 - 8
LD 9 0 - 31
OBJ : 0 - 30 110
CON 12 0 - 6 10
ADD 19 0 - 24
LD 12 0 - 24
CONV : 0 - 23
ADD : 0 - 8
CONV : 0 - 8
LD 9 0 - 31
OBJ : 0 - 30 110
CON 12 0 - 6 10
CON 19 0 - 24 1
JUMPF 9:196 0 60 11 profData=0,1,1,0,0,0,43,50,0,0
EQ 24 0 - 85 profData=0,1,1,0,0,0,-1,50,0,0
LD 16 0 - 24
CONV : 0 - 23
ADD : 0 - 8
CONV : 0 - 8
LD 13 0 - 31
OBJ : 0 - 30 110
CON 16 0 - 6 10
CON 27 0 - 24 1
BLOCK 73:198 0 60 profData=0,0,0,1,1,0,0,0,0.067,0.13
STAT : 0 60
ST 58 0 - 14
OBJ : 0 - 83 116
OBJ : 0 - 10 94
STAT 73 0 60
ST 33 0 - 14
CONV 20 0 - 10
ADD : 0 - 8
CONV : 0 - 8
LD 17 0 - 31
OBJ : 0 - 30 110
CON 20 0 - 6 14
SUB 56 0 - 11
SUB 39 0 - 11
LD 35 0 - 11
OBJ : 0 - 10 111
LD 41 0 - 11
OBJ : 0 - 10 93
LD 58 0 - 11
LD : 0 - 10
OBJ : 0 - 83 116
NOJUMP 73 0 60 profData=0,0,1,0,0,0,0,0,0,0
LABEL 9:196 0 60 11
BLOCK 50:203 0 60 profData=0,0,0,1,1,0,0,0,0.12,0.24
STAT : 0 60
ST 9:196 0 - 14
OBJ : 0 - 83 116
OBJ 58:198 0 - 10 94
STAT 50:203 0 60
ST 25 0 - 14
LD 9 0 - 10
OBJ : 0 - 83 116
ADD 25 0 - 11
LD 9 0 - 11
LD : 0 - 10
OBJ : 0 - 83 116
SUB 44 0 - 11
CALL 41 0 - 11
OBJ 29 0 - 60 100
NIL 42 0 - 14
LD 46 0 - 11
OBJ : 0 - 10 111
NOJUMP 50 0 60 profData=0,0,1,0,0,0,0,0,0,0
LABEL 1:206 0 60 12
EXIT : 0 60 profData=0,0,0,1,0,0,0,0,0.93,0
FUNC 6:208 0 <69
3
0
81
82
2
-
-> 11 <70
2
0
81
82
-
-
-> 69 <71
3
0
81
82
3
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY 81 0 69 profData=0,0,0,1,0,0,0,0,1,0
EXIT 82 0 69 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:209 0 <72
3
0
81
82
12
-
-> 51 <73
2
0
81
82
-
-
-> 72 <74
3
0
81
82
13
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY 81 0 72 profData=0,0,0,1,0,0,0,0,1,0
EXIT 82 0 72 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:211 0 <75
3
2
1:212
:237
16
<76
3
0
9:223
:231
75
-
->
-
119:reff 4 3 7 1 25:213 82 - - 34 32 0 8
120:ref 4 3 7 1 :214 30 - - 34 32 0 8
121:clk 4 3 7 1 :215 10 - - 40 32 0 8
122:.f1 4 3 7 1 6:211 10 - - - 32 0 8
123:.c2 4 3 7 1 : 83 - - - 32 0 264> 56 <77
2
0
1:212
:237
-
-
-> 75 <78
3
0
:212
:237
17
<79
3
0
9:223
:231
78
-
->
-> profData=0,0,0,0,1,0,0,0,0,2
ENTRY 1:212 0 75 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 30:213 0 75 profData=0,0,0,1,1,0,0,0,1,2
STAT : 0 75
ST : 1 - 14
OBJ 25 0 - 82 119
CONV 32 32 - 30
LD 48 0 - 12
OBJ : 0 - 20 57
JUMPT 9:217 0 75 4 profData=0,1,1,0,0,0,81,50,0,0
NE : 0 - 85 profData=0,1,1,0,0,0,-1,50,0,0
LD 25 0 - 6
CONV : 0 - 5
ADD : 0 - 8
CONV : 0 - 8
OBJ 14 0 - 74 91
CON 25 0 - 6 c
CON 9 0 - 6 0
BLOCK 29:219 0 75 profData=0,0,0,1,1,0,0,0,0.19,0.38
STAT : 0 75
ST 13 0 - 14
OBJ 9 0 - 10 121
CALL 27 0 - 11
OBJ 15 0 - 60 100
NIL 28 0 - 14
STAT 20:221 0 75
ST 13 0 - 14
OBJ 9 0 - 30 120
LD 15 0 - 31
LD 16 0 - 30
OBJ : 0 - 82 119
STAT 9:222 0 75
ST 64:224 0 - 14
OBJ : 0 - 83 123
OBJ : 0 - 10 94
STAT 9:222 0 75
ST : 0 - 14
OBJ : 0 - 10 122
LD 64:224 0 - 11
LD : 0 - 10
OBJ : 0 - 83 123
JUMPF 9:222 0 75 2 profData=0,1,1,0,0,0,38,50,0,0
EQ 24 0 - 85 profData=0,1,1,0,0,0,-1,50,0,0
LD 16 0 - 24
CONV : 0 - 23
ADD : 0 - 8
CONV : 0 - 8
LD 13 0 - 31
OBJ : 0 - 30 120
CON 16 0 - 6 10
CON 27 0 - 24 1
BLOCK 36:224 0 76 profData=0,0,0,1,1,0,0,0,0.12,0.24
STAT 46:225 0 76
ST 33 0 - 14
CONV 20 0 - 10
ADD : 0 - 8
CONV : 0 - 8
LD 17 0 - 31
OBJ : 0 - 30 120
CON 20 0 - 6 1c
ADD 33 0 - 11
LD 20 0 - 11
CONV : 0 - 10
ADD : 0 - 8
CONV : 0 - 8
LD 17 0 - 31
OBJ : 0 - 30 120
CON 20 0 - 6 1c
SUB 100:224 0 - 11
SUB 81 0 - 11
SUB 62 0 - 11
SUB 45 0 - 11
LD 41 0 - 11
OBJ : 0 - 10 121
LD 47 0 - 11
OBJ : 0 - 10 93
LD 64 0 - 11
OBJ : 0 - 10 122
LD 86 0 - 11
CONV : 0 - 10
ADD : 0 - 8
CONV : 0 - 8
LD 83 0 - 31
OBJ : 0 - 30 120
CON 86 0 - 6 14
LD 102 0 - 11
OBJ : 0 - 10 97
STAT 60:230 0 76
ST 33 0 - 14
OBJ 17 0 - 10 122
ADD 33 0 - 11
LD 17 0 - 11
OBJ : 0 - 10 122
LD 36 0 - 11
OBJ : 0 - 10 95
JUMP :224 0 75 3 profData=0,0,1,0,0,0,0,100,0,0
LABEL 9:222 0 75 2
BLOCK 62:234 0 75 profData=0,0,0,1,1,0,0,0,0.072,0.14
STAT : 0 75
ST 33 0 - 14
OBJ 17 0 - 10 122
ADD 33 0 - 11
LD 17 0 - 11
OBJ : 0 - 10 122
LD 36 0 - 11
OBJ : 0 - 10 96
NOJUMP 62 0 75 profData=0,0,1,0,0,0,0,0,0,0
LABEL 9:232 0 75 3
BLOCK 21:236 0 75 profData=0,0,0,1,1,0,0,0,0.19,0.38
STAT : 0 75
ST : 0 - 14
LD 64:224 0 - 10
OBJ : 0 - 83 123
LD 21:236 0 - 11
OBJ : 0 - 10 122
STAT : 0 75
ST 19 0 - 14
CONV 12 0 - 23
ADD : 0 - 8
CONV : 0 - 8
LD 9 0 - 31
OBJ : 0 - 30 120
CON 12 0 - 6 10
SUB 19 0 - 24
LD 12 0 - 24
CONV : 0 - 23
ADD : 0 - 8
CONV : 0 - 8
LD 9 0 - 31
OBJ : 0 - 30 120
CON 12 0 - 6 10
CON 19 0 - 24 1
NOJUMP 21 0 75 profData=0,0,1,0,0,0,0,0,0,0
LABEL 1:237 0 75 4
EXIT : 0 75 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:239 0 <80
3
0
1:240
:242
20
-
-> 59 <81
2
0
:240
:242
-
-
-> 80 <82
3
0
:240
:242
21
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :240 0 80 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 63:241 0 80 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 80
ST 29 0 - 14
OBJ 9 0 - 10 92
SUB 46 0 - 11
CALL 43 0 - 11
OBJ 31 0 - 60 100
NIL 44 0 - 14
LD 48 0 - 11
OBJ : 0 - 10 94
NOJUMP 63 0 80 profData=0,0,1,0,0,0,0,0,0,0
EXIT 1:242 0 80 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:244 0 <83
3
1
1:245
:247
22
-
-
124:.c1 4 3 7 1 6:244 83 - - - 32 0 264> 60 <84
2
0
1:245
:247
-
-
-> 83 <85
3
0
:245
:247
23
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :245 0 83 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 83:246 0 83 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 83
ST 9 0 - 14
OBJ : 0 - 83 124
OBJ : 0 - 10 93
STAT 83 0 83
ST 24 0 - 14
LD 9 0 - 10
OBJ : 0 - 83 124
ADD 24 0 - 11
LD 9 0 - 11
LD : 0 - 10
OBJ : 0 - 83 124
SUB 61 0 - 11
SUB 43 0 - 11
CALL 40 0 - 11
OBJ 28 0 - 60 100
NIL 41 0 - 14
LD 45 0 - 11
OBJ : 0 - 10 94
LD 63 0 - 11
OBJ : 0 - 10 92
NOJUMP 83 0 83 profData=0,0,1,0,0,0,0,0,0,0
EXIT 1:247 0 83 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:257 0 <86
3
6
1:258
:315
18
<87
3
0
9:281
:310
86
-
-
125:i 4 3 7 1 25:282 5 - - - 16 0 8
126:max_index 4 3 7 1 :283 5 - - - 16 0 8>
-
127:walk 4 3 7 1 26:259 35 - - 44 32 0 8
128:G_record 4 3 7 1 14:260 87:5,-,-,78,0,- - - - 8 0 515
129:T_record 4 3 7 1 :265 88:5,-,-,80,0,- - - - 8 0 515
130:.c1 4 3 7 1 6:257 7 - - - 32 0 264
131:.c2 4 3 7 1 : 7 - - - 32 0 264
132:.c3 4 3 7 1 : 7 - - - 32 0 264
133:.c4 4 3 7 1 : 84 - - - 32 0 264
134:.s6 4 3 7 1 : 30 - - - 32 0 8> 58 <88
2
0
1:258
:315
-
-
-> 86 <89
3
0
:258
:315
19
<90
3
0
9:281
:310
89
-
->
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY 1:258 0 86 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 31:259 0 86 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 86
ST 33 0 - 14
OBJ : 0 - 84 133
OBJ : 0 - 74 91
STAT 31 0 86
ST : 1 - 14
OBJ 26 0 - 35 127
LD 44 0 - 36
CONV : 0 - 35
LD 33 0 - 74
OBJ : 0 - 84 133
STAT 25:260 0 86
ST : 1 - 14
OBJ 14 0 - 87 128
LD 27 0 - 78
OBJ : 0 - 77 101
STAT 25:265 0 86
ST : 1 - 14
OBJ 14 0 - 88 129
LD 27 0 - 80
OBJ : 0 - 79 102
STAT 9:269 0 86
ST 25 0 - 14
OBJ : 0 - 7 130
ADD : 0 - 8
CONV : 0 - 8
LD 14 0 - 74
OBJ : 0 - 84 133
CON 25 0 - 6 c
JUMPT 9 0 86 9 profData=0,1,1,0,0,0,72,50,0,0
NE : 0 - 85 profData=0,1,1,0,0,0,-1,50,0,0
LD 25 0 - 6
CONV : 0 - 5
LD : 0 - 8
OBJ : 0 - 7 130
CON 9 0 - 6 0
BLOCK 29:270 0 86 profData=0,0,0,1,1,0,0,0,0.28,0.28
STAT : 0 86
ST 26 0 - 14
CONV 20 0 - 5
LD : 0 - 8
OBJ : 0 - 7 130
CON 28 0 - 6 1
JUMPF 14:272 0 86 8 profData=0,1,1,0,0,0,-1,50,0,0
NE : 0 - 85 profData=0,1,1,0,0,0,-1,50,0,0
CALL 25 0 - 6
OBJ 14 0 - 62 77
NIL 26 0 - 14
CON 14 0 - 6 0
BLOCK 20:280 0 86 profData=0,0,0,1,1,0,0,0,0.14,0.14
JUMP : 0 86 7 profData=0,1,1,0,0,0,12,50,0,0
LABEL : 0 86 -1 loopinfo=2,0,1,-1,0
BLOCK 17:284 0 87 profData=0,0,0,1,1,0,0,0,6.2,6.2
JUMPF : 0 87 2 profData=0,1,1,0,0,0,40,50,0,0
NE : 0 - 85 profData=0,1,1,0,0,0,60,50,0,0
LD 25 0 - 36
CONV : 0 - 35
LD 21 0 - 36
OBJ : 0 - 35 127
CON 17 0 - 36 0
BLOCK 52:286 0 87 profData=0,0,0,1,1,0,0,0,3.7,3.7
STAT : 0 87
ST 35 0 - 14
OBJ 25 0 - 5 126
CON 37 0 - 6 40
JUMP 52 0 87 3 profData=0,0,1,0,0,0,0,100,0,0
LABEL 17:284 0 87 2
BLOCK 62:290 0 87 profData=0,0,0,1,1,0,0,0,2.5,2.5
STAT : 0 87
ST 35 0 - 14
OBJ 25 0 - 5 126
LD 48 0 - 6
CONV : 0 - 5
ADD : 0 - 8
CONV : 0 - 8
LD 37 0 - 74
OBJ : 0 - 84 133
CON 48 0 - 6 8
NOJUMP 62 0 87 profData=0,0,1,0,0,0,0,0,0,0
LABEL 17:288 0 87 3
BLOCK 25:292 0 87 profData=0,0,0,1,1,0,0,0,6.2,6.2
STAT : 0 87
ST 23 0 - 14
OBJ 22 0 - 5 125
CON 24 0 - 6 0
STAT 43 0 87
ST : 0 - 14
OBJ : 0 - 30 134
CONV 78:294 0 - 31
LD 74 0 - 36
OBJ : 0 - 35 127
JUMP 38:292 0 87 6 profData=0,1,1,0,0,0,59,50,0,0
LABEL 43 0 87 -4 loopinfo=2,1,0,-1,0,125,-3,-3,0,0,-1,0,0,0,2,0,0,1
BLOCK 100:294 0 87 profData=0,0,0,1,1,0,0,0,15,15
STAT : 0 87
ST 92 0 - 14
OBJ : 0 - 7 131
ADD : 0 - 8
CONV : 0 - 8
LD : 0 - 31
OBJ : 0 - 30 134
CON 78 0 - 6 8
STAT 100 0 87
CALL 39 0 - 14
OBJ 25 0 - 68 83
ARG 53 0 - 14
ADD 49 0 - 8
CONV 41 0 - 8
OBJ : 0 - 87 128
CON 51 0 - 6 2
ARG 56 0 - 14
CON 55 0 - 6 8
ARG 96 0 - 14
CONV 58 32 - 71
LD 92 0 - 13
CONV : 0 - 12
LD : 0 - 8
OBJ : 0 - 7 131
ARG 99 0 - 14
CON 98 0 - 6 1
NIL 99 0 - 14
STAT 111:295 0 87
CALL 39 0 - 14
OBJ 25 0 - 68 83
ARG 53 0 - 14
ADD 49 0 - 8
CONV 41 0 - 8
OBJ : 0 - 87 128
CON 50 0 - 6 d
ARG 56 0 - 14
CON 55 0 - 6 8
ARG 107 0 - 14
CONV 58 32 - 71
LD 92 0 - 16
CONV : 0 - 15
ADD : 0 - 8
CONV : 0 - 8
LD : 0 - 31
OBJ : 0 - 30 134
CON 78 0 - 6 10
ARG 110 0 - 14
CON 109 0 - 6 1
NIL 110 0 - 14
STAT 102:296 0 87
CALL 39 0 - 14
OBJ 25 0 - 68 83
ARG 53 0 - 14
ADD 49 0 - 8
CONV 41 0 - 8
OBJ : 0 - 87 128
CON 50 0 - 6 18
ARG 56 0 - 14
CON 55 0 - 6 8
ARG 98 0 - 14
CONV 58 32 - 71
LD 92 0 - 6
CONV : 0 - 5
ADD : 0 - 8
CONV : 0 - 8
LD : 0 - 31
OBJ : 0 - 30 134
CON 78 0 - 6 c
ARG 101 0 - 14
CON 100 0 - 6 0
NIL 101 0 - 14
STAT 67:297 0 87
CALL 37 0 - 14
OBJ 25 0 - 64 78
ARG 46 0 - 14
CONV 38 0 - 67
OBJ : 0 - 87 128
ARG 66 0 - 14
CON 64 0 - 6 21
NIL 66 0 - 14
STAT 25:299 0 87
ST 47 0 - 14
OBJ : 0 - 7 132
ADD : 0 - 8
CONV : 0 - 8
LD : 0 - 31
OBJ : 0 - 30 134
CON 33 0 - 6 20
JUMPF 25 0 87 5 profData=0,1,1,0,0,0,68,50,0,0
NE : 0 - 85 profData=0,1,1,0,0,0,-1,50,0,0
LD 47 0 - 11
CONV : 0 - 10
LD : 0 - 8
OBJ : 0 - 7 132
CON 25 0 - 11 0
BLOCK 108:301 0 87 profData=0,0,0,1,1,0,0,0,4.8,4.8
STAT : 0 87
CALL 47 0 - 14
OBJ 33 0 - 68 83
ARG 61 0 - 14
ADD 57 0 - 8
CONV 49 0 - 8
OBJ : 0 - 88 129
CON 59 0 - 6 2
ARG 64 0 - 14
CON 63 0 - 6 8
ARG 104 0 - 14
CONV 66 32 - 71
LD 100 0 - 13
CONV : 0 - 12
LD : 0 - 8
OBJ : 0 - 7 131
ARG 107 0 - 14
CON 106 0 - 6 1
NIL 107 0 - 14
STAT 115:302 0 87
CALL 47 0 - 14
OBJ 33 0 - 68 83
ARG 61 0 - 14
ADD 57 0 - 8
CONV 49 0 - 8
OBJ : 0 - 88 129
CON 58 0 - 6 d
ARG 64 0 - 14
CON 63 0 - 6 8
ARG 111 0 - 14
CONV 66 32 - 71
LD 100 0 - 11
CONV : 0 - 10
LD : 0 - 8
OBJ : 0 - 7 132
ARG 114 0 - 14
CON 113 0 - 6 0
NIL 114 0 - 14
STAT 75:306 0 87
CALL 45 0 - 14
OBJ 33 0 - 64 78
ARG 54 0 - 14
CONV 46 0 - 67
OBJ : 0 - 88 129
ARG 74 0 - 14
CON 72 0 - 6 16
NIL 74 0 - 14
NOJUMP 75 0 87 profData=0,0,1,0,0,0,0,0,0,0
LABEL 25:299 0 87 5
BLOCK 43:292 0 87 profData=0,0,0,1,1,0,0,0,15,15
STAT 41 0 87
ST : 0 - 14
OBJ : 0 - 30 134
ADD : 0 - 31
LD : 0 - 31
OBJ : 0 - 30 134
CON 89:294 0 - 6 24
STAT 43:292 0 87
ST 41 0 - 14
OBJ 40 0 - 5 125
ADD 41 0 - 6
LD 40 0 - 6
OBJ : 0 - 5 125
CON 41 0 - 6 1
NOJUMP 38 0 87 profData=0,0,0,0,0,0,0,0,0,0
LABEL : 0 87 6
BLOCK : 0 87 profData=0,0,0,0,0,0,0,0,0,0
JUMPT : 0 87 -4 profData=0,1,1,0,0,0,83,50,0,0
LT 28 0 - 85 profData=0,1,1,0,0,0,-1,50,0,0
LD 27 0 - 6
OBJ : 0 - 5 125
LD 29 0 - 6
OBJ : 0 - 5 126
BLOCK 34:309 0 87 profData=0,0,0,1,1,0,0,0,6.2,6.2
STAT : 0 87
ST 22 0 - 14
OBJ 17 0 - 35 127
LD 28 0 - 36
CONV : 0 - 35
LD 24 0 - 36
OBJ : 0 - 35 127
NOJUMP 20:280 0 86 profData=0,0,0,0,0,0,0,0,0,0
LABEL : 0 86 7
BLOCK : 0 87 profData=0,0,0,0,0,0,0,0,0,0
JUMPT : 0 86 -1 profData=0,1,1,0,0,0,98,50,0,0
NE : 0 - 85 profData=0,1,1,0,0,0,60,50,0,0
LD 16 0 - 36
OBJ : 0 - 35 127
CON 20 0 - 36 0
BLOCK 23:312 0 86 profData=0,0,0,1,1,0,0,0,0.14,0.14
STAT : 0 86
CALL 21 0 - 14
OBJ 9 0 - 42 81
NIL 22 0 - 14
NOJUMP 23 0 86 profData=0,0,1,0,0,0,0,0,0,0
LABEL 1:315 0 86 8
LABEL : 0 86 9
EXIT : 0 86 profData=0,0,0,1,0,0,0,0,1,0
FUNC 13:321 0 <91
3
0
1:322
:324
50
-
-> 104 <92
2
0
:322
:324
-
-
-> 91 <93
3
0
:322
:324
51
-
-> profData=0,0,0,0,1,0,0,0,0,1.3
ENTRY :322 0 91 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 9:323 0 91 profData=0,0,0,1,1,0,0,0,1,1.3
JUMPF : 0 91 1 profData=0,1,1,0,0,0,78,50,0,0
NE : 0 - 85 profData=0,1,1,0,0,0,-1,50,0,0
LD 13 0 - 6
OBJ : 0 - 81 103
CON 9 0 - 6 0
BLOCK 37 0 91 profData=0,0,0,1,1,0,0,0,0.22,0.28
STAT : 0 91
CALL 35 0 - 14
OBJ 25 0 - 42 104
NIL 36 0 - 14
NOJUMP 37 0 91 profData=0,0,1,0,0,0,0,0,0,0
LABEL 9 0 91 1
EXIT 1:324 0 91 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:326 0 <94
3
13
1:327
:402
40
-
-
135:clk1 4 3 7 1 26:328 89:5,-,37,11,0,- - - 40 32 0 8
136:clk2 4 3 7 1 32 89 - - 40 32 0 8
137:clk3 4 3 7 1 38 89 - - 40 32 0 8
138:clk4 4 3 7 1 44 89 - - 40 32 0 8
139:elt 4 3 7 1 25:329 31 - - 34 32 0 3
140:ptr 4 3 7 1 :330 30 - - 34 32 0 3
141:.t1 4 3 7 1 42:359 10 - - - 32 0 8
142:.t2b 4 3 7 1 58 10 - - - 32 0 8
143:.t3c 4 3 7 1 50 10 - - - 32 0 8
144:.t4 4 3 7 1 44:383 10 - - - 32 0 8
145:.t5b 4 3 7 1 60 10 - - - 32 0 8
146:.t6c 4 3 7 1 52 10 - - - 32 0 8
147:.t7 4 3 7 1 44:396 10 - - - 32 0 8
148:.t8b 4 3 7 1 60 10 - - - 32 0 8
149:.t9c 4 3 7 1 52 10 - - - 32 0 8
150:.c10 4 3 7 1 6:326 83 - - - 32 0 264
151:.c11 4 3 7 1 : 83 - - - 32 0 264
152:.c12 4 3 7 1 : 83 - - - 32 0 264
153:.c13 4 3 7 1 : 83 - - - 32 0 264> 82 <95
2
0
1:327
:402
-
-
-> 94 <96
3
0
:327
:402
41
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :327 0 94 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 29:330 0 94 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 94
ST : 1 - 14
OBJ 25 0 - 30 140
OBJ 32 0 - 31 139
STAT 30:335 0 94
ST 14 0 - 14
OBJ 9 0 - 89 135
CALL 28 0 - 11
OBJ 16 0 - 60 100
NIL 29 0 - 14
STAT 30:339 0 94
ST 14 0 - 14
OBJ 9 0 - 89 136
CALL 28 0 - 11
OBJ 16 0 - 60 100
NIL 29 0 - 14
STAT 52:348 0 94
ST 27 0 - 14
OBJ : 0 - 83 150
OBJ : 0 - 10 95
STAT 52 0 94
ST : 0 - 14
LD 27 0 - 10
OBJ : 0 - 83 150
CON 54 0 - 11 0
STAT 55 0 94
ST 9 0 - 14
OBJ : 0 - 83 151
OBJ : 0 - 10 94
STAT 55 0 94
ST 25 0 - 14
LD 9 0 - 10
OBJ : 0 - 83 151
CON 27 0 - 11 0
STAT :349 0 94
ST 24 0 - 14
CONV 12 0 - 10
ADD : 0 - 8
CONV : 0 - 8
OBJ 9 0 - 31 139
CON 12 0 - 6 1c
CON 26 0 - 11 0
STAT 31:350 0 94
ST 28 0 - 14
CONV 12 0 - 15
ADD : 0 - 8
CONV : 0 - 8
OBJ 9 0 - 31 139
CON 12 0 - 6 c
CON 30 0 - 16 0
STAT 22:351 0 94
ST 19 0 - 14
CONV 12 0 - 23
ADD : 0 - 8
CONV : 0 - 8
OBJ 9 0 - 31 139
CON 12 0 - 6 10
CON 21 0 - 24 0
STAT 30:352 0 94
ST 14 0 - 14
OBJ 9 0 - 89 137
CALL 28 0 - 11
OBJ 16 0 - 60 100
NIL 29 0 - 14
STAT 60:355 0 94
CALL 35 0 - 14
OBJ 17 0 - 40 53
ARG 53 0 - 14
CONV 36 32 - 12
OBJ 50 0 - 30 140
ARG 59 0 - 14
CON 55 0 - 16 0
NIL 59 0 - 14
STAT 52:356 0 94
CALL 33 0 - 14
OBJ 17 0 - 18 56
ARG 51 0 - 14
CONV 34 32 - 12
OBJ 48 0 - 30 140
NIL 51 0 - 14
STAT 30:358 0 94
ST 14 0 - 14
OBJ 9 0 - 89 138
CALL 28 0 - 11
OBJ 16 0 - 60 100
NIL 29 0 - 14
STAT 42:359 0 94
ST : 0 - 14
OBJ : 0 - 10 141
LD 37 0 - 11
OBJ : 0 - 89 138
STAT 58 0 94
ST : 0 - 14
OBJ : 0 - 10 142
LD 53 0 - 11
OBJ : 0 - 89 136
STAT 50 0 94
ST : 0 - 14
OBJ : 0 - 10 143
SUB 58 0 - 11
LD : 0 - 11
OBJ : 0 - 10 142
LD 60 0 - 11
OBJ : 0 - 89 135
STAT 85 0 94
ST 34 0 - 14
LD 9 0 - 10
OBJ : 0 - 83 150
SUB 66 0 - 11
SUB 50 0 - 11
SUB 42 0 - 11
LD : 0 - 11
OBJ : 0 - 10 141
LD 44 0 - 11
OBJ : 0 - 89 137
LD 50 0 - 11
OBJ : 0 - 10 143
LD 69 0 - 11
LD : 0 - 10
OBJ : 0 - 83 151
STAT 51:363 0 94
ST 9 0 - 14
OBJ : 0 - 83 152
OBJ : 0 - 10 97
STAT 51 0 94
ST 35 0 - 14
LD 9 0 - 10
OBJ : 0 - 83 152
LD 40 0 - 11
CONV : 0 - 10
ADD : 0 - 8
CONV : 0 - 8
OBJ 37 0 - 31 139
CON 40 0 - 6 1c
STAT 54:372 0 94
ST 27 0 - 14
OBJ : 0 - 83 153
OBJ : 0 - 10 96
STAT 54 0 94
ST : 0 - 14
LD 27 0 - 10
OBJ : 0 - 83 153
CON 56 0 - 11 0
STAT 57 0 94
ST 25 0 - 14
LD 9 0 - 10
OBJ : 0 - 83 151
CON 27 0 - 11 0
STAT :373 0 94
ST 24 0 - 14
CONV 12 0 - 10
ADD : 0 - 8
CONV : 0 - 8
OBJ 9 0 - 31 139
CON 12 0 - 6 1c
CON 26 0 - 11 0
STAT 31:374 0 94
ST 28 0 - 14
CONV 12 0 - 15
ADD : 0 - 8
CONV : 0 - 8
OBJ 9 0 - 31 139
CON 12 0 - 6 c
CON 30 0 - 16 0
STAT 22:375 0 94
ST 19 0 - 14
CONV 12 0 - 23
ADD : 0 - 8
CONV : 0 - 8
OBJ 9 0 - 31 139
CON 12 0 - 6 10
CON 21 0 - 24 1
STAT 30:376 0 94
ST 14 0 - 14
OBJ 9 0 - 89 137
CALL 28 0 - 11
OBJ 16 0 - 60 100
NIL 29 0 - 14
STAT 60:379 0 94
CALL 35 0 - 14
OBJ 17 0 - 40 53
ARG 53 0 - 14
CONV 36 32 - 12
OBJ 50 0 - 30 140
ARG 59 0 - 14
CON 55 0 - 16 0
NIL 59 0 - 14
STAT 52:380 0 94
CALL 33 0 - 14
OBJ 17 0 - 18 56
ARG 51 0 - 14
CONV 34 32 - 12
OBJ 48 0 - 30 140
NIL 51 0 - 14
STAT 30:382 0 94
ST 14 0 - 14
OBJ 9 0 - 89 138
CALL 28 0 - 11
OBJ 16 0 - 60 100
NIL 29 0 - 14
STAT 44:383 0 94
ST : 0 - 14
OBJ : 0 - 10 144
LD 39 0 - 11
OBJ : 0 - 89 138
STAT 60 0 94
ST : 0 - 14
OBJ : 0 - 10 145
LD 55 0 - 11
OBJ : 0 - 89 136
STAT 52 0 94
ST : 0 - 14
OBJ : 0 - 10 146
SUB 60 0 - 11
LD : 0 - 11
OBJ : 0 - 10 145
LD 62 0 - 11
OBJ : 0 - 89 135
STAT 87 0 94
ST 36 0 - 14
LD 9 0 - 10
OBJ : 0 - 83 153
SUB 68 0 - 11
SUB 52 0 - 11
SUB 44 0 - 11
LD : 0 - 11
OBJ : 0 - 10 144
LD 46 0 - 11
OBJ : 0 - 89 137
LD 52 0 - 11
OBJ : 0 - 10 146
LD 71 0 - 11
LD : 0 - 10
OBJ : 0 - 83 151
STAT 30:390 0 94
ST 14 0 - 14
OBJ 9 0 - 89 137
CALL 28 0 - 11
OBJ 16 0 - 60 100
NIL 29 0 - 14
STAT :393 0 94
CALL 27 8 - 14
OBJ 17 0 - 42 104
NIL 28 0 - 14
STAT 30:395 0 94
ST 14 0 - 14
OBJ 9 0 - 89 138
CALL 28 0 - 11
OBJ 16 0 - 60 100
NIL 29 0 - 14
STAT 44:396 0 94
ST : 0 - 14
OBJ : 0 - 10 147
LD 39 0 - 11
OBJ : 0 - 89 138
STAT 60 0 94
ST : 0 - 14
OBJ : 0 - 10 148
LD 55 0 - 11
OBJ : 0 - 89 136
STAT 52 0 94
ST : 0 - 14
OBJ : 0 - 10 149
SUB 60 0 - 11
LD : 0 - 11
OBJ : 0 - 10 148
LD 62 0 - 11
OBJ : 0 - 89 135
STAT 67 0 94
ST 35 0 - 14
LD 9 0 - 10
OBJ : 0 - 83 152
SUB 35 0 - 11
LD 9 0 - 11
LD : 0 - 10
OBJ : 0 - 83 152
SUB 52 0 - 11
SUB 44 0 - 11
LD : 0 - 11
OBJ : 0 - 10 147
LD 46 0 - 11
OBJ : 0 - 89 137
LD 52 0 - 11
OBJ : 0 - 10 149
STAT 28:400 0 94
ST 25 0 - 14
LD 9 0 - 10
OBJ : 0 - 83 151
CON 27 0 - 11 0
STAT 31:401 0 94
CONV 15 0 - 14
CALL : 0 - 6
OBJ 9 0 - 55 73
ARG 30 0 - 14
OBJ 16 0 - 42 58
NIL 30 0 - 14
NOJUMP 31 0 94 profData=0,0,1,0,0,0,0,0,0,0
EXIT 1:402 0 94 profData=0,0,0,1,0,0,0,0,1,0
DATA 39:115 0 1 91
PAD 53 0 1
CON : 0 - 6 10
DATA 47:116 0 1 92
PAD : 0 1
CON : 0 - 6 8
DATA 42:117 0 1 93
PAD : 0 1
CON : 0 - 6 8
DATA 43:118 0 1 94
PAD : 0 1
CON : 0 - 6 8
DATA 53:119 0 1 95
PAD : 0 1
CON : 0 - 6 8
DATA 54:120 0 1 96
PAD : 0 1
CON : 0 - 6 8
DATA 53:121 0 1 97
PAD : 0 1
CON : 0 - 6 8
DATA 39:138 0 1 99
INIT : 0 1
CON : 0 - 90:1,char,4 45
INIT : 0 1
CON : 0 - 90 52
INIT : 0 1
CON : 0 - 90 52
INIT : 0 1
CON : 0 - 90 4f
INIT : 0 1
CON : 0 - 90 52
INIT : 0 1
CON : 0 - 90 3a
INIT : 0 1
CON : 0 - 90 20
INIT : 0 1
CON : 0 - 90 72
INIT : 0 1
CON : 0 - 90 75
INIT : 0 1
CON : 0 - 90 6e
INIT : 0 1
CON : 0 - 90 74
INIT : 0 1
CON : 0 - 90 69
INIT : 0 1
CON : 0 - 90 6d
INIT : 0 1
CON : 0 - 90 65
INIT : 0 1
CON : 0 - 90 20
INIT : 0 1
CON : 0 - 90 70
INIT : 0 1
CON : 0 - 90 72
INIT : 0 1
CON : 0 - 90 6f
INIT : 0 1
CON : 0 - 90 66
INIT : 0 1
CON : 0 - 90 69
INIT : 0 1
CON : 0 - 90 6c
INIT : 0 1
CON : 0 - 90 69
INIT : 0 1
CON : 0 - 90 6e
INIT : 0 1
CON : 0 - 90 67
INIT : 0 1
CON : 0 - 90 20
INIT : 0 1
CON : 0 - 90 66
INIT : 0 1
CON : 0 - 90 61
INIT : 0 1
CON : 0 - 90 69
INIT : 0 1
CON : 0 - 90 6c
INIT : 0 1
CON : 0 - 90 65
INIT : 0 1
CON : 0 - 90 64
INIT : 0 1
CON : 0 - 90 20
INIT : 0 1
CON : 0 - 90 74
INIT : 0 1
CON : 0 - 90 6f
INIT : 0 1
CON : 0 - 90 20
INIT : 0 1
CON : 0 - 90 61
INIT : 0 1
CON : 0 - 90 6c
INIT : 0 1
CON : 0 - 90 6c
INIT : 0 1
CON : 0 - 90 6f
INIT : 0 1
CON : 0 - 90 63
INIT : 0 1
CON : 0 - 90 61
INIT : 0 1
CON : 0 - 90 74
INIT : 0 1
CON : 0 - 90 65
INIT : 0 1
CON : 0 - 90 20
INIT : 0 1
CON : 0 - 90 6d
INIT : 0 1
CON : 0 - 90 65
INIT : 0 1
CON : 0 - 90 6d
INIT : 0 1
CON : 0 - 90 6f
INIT : 0 1
CON : 0 - 90 72
INIT : 0 1
CON : 0 - 90 79
INIT : 0 1
CON : 0 - 90 a
PAD : 0 1
CON : 0 - 6 1
DATA 27:260 0 1 101
INIT : 0 1
CON : 0 - 90 47
INIT : 0 1
CON : 0 - 90 20
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 20
INIT : 0 1
CON : 0 - 90 3a
INIT : 0 1
CON : 0 - 90 20
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 20
INIT : 0 1
CON : 0 - 90 3a
INIT : 0 1
CON : 0 - 90 20
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 a
PAD : 0 1
CON : 0 - 6 1
DATA :265 0 1 102
INIT : 0 1
CON : 0 - 90 54
INIT : 0 1
CON : 0 - 90 20
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 20
INIT : 0 1
CON : 0 - 90 3a
INIT : 0 1
CON : 0 - 90 20
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 30
INIT : 0 1
CON : 0 - 90 a
PAD : 0 1
CON : 0 - 6 1
DATA 34:320 0 1 103
PAD : 0 1
CON : 0 - 6 4
END 1:403 0 1
TAIL -:- 0 -
.
+               41144           1397159280 cstart.mil
#!<mil>
# TASKING VX-toolset for TriCore: C compiler v99.9r9 Build 759
# options: --mil --core=tc1.6 -Rlibpct --section-name-with-symbol -N0 -O3 -g1 --global-type-checking --user-mode=kernel -D__NO_CSTART_REGISTER_CONFIG -pf --core=tc1.6 -D__CPU__=userdef16
# files: ..\..\..\cstart.c
#!E__prof_block_entry
#!E__prof_func_entry
#!E__prof_func_entry2
#!E__prof_func_exit
#!E__prof_cleanup
#!E__prof_int_entry
#!E__prof_int_exit
#!E__mtcr
#!E__mfcr
#!E__isync
#!E__dsync
#!E__get_return_address
#!eexit
#!E_Exit
#!E_lc_ue_ustack
#!E_lc_ue_istack
#!E_lc_u_int_tab
#!E_lc_u_trap_tab
#!E_SMALL_DATA_
#!E_LITERAL_DATA_
#!E_A8_DATA_
#!E_A9_DATA_
#!E_c_init
#!Emain
#!G_endinit_clear
#!G_endinit_set
#!E__prof_init
#!G_START
#!G_EBU_BOOTCFG
#!E_lc_ub_csa_01
#!E_lc_ue_csa_01
#!E_trapmmu
#!E_trapprotection
#!E_trapinstruction
#!E_trapcontext
#!E_trapbus
#!E_trapassertion
#!E_trapsystem
#!E_trapnmi
#!E__libc_references
MIL - 0 - version=3:2:b646:a4b1:loopinfo,profData
HEAD - 0 -
MODULE <1:1:..\..\..\cstart.c:<1
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=f
RUNTIME=B,C,M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=t
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=f
PACK=0
PREDEF=t
PROFENABLE=t
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=f
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=f
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=kernel
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=t
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=f
UM_USER1=f>> 0 <1
1
0
:
<:1253:..\..\..\cstart.c:<2
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=f
RUNTIME=M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=t
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=f
PACK=0
PREDEF=f
PROFENABLE=f
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=t
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=t
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=kernel
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=t
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=f
UM_USER1=f>>
-
-
-
<1:__wchar_t 4 3 1 6 :1:..\..\..\cstart.c:1 <1:5,-,-,<2:1,int,<1:signed,-,<2:short,-,->>>,0,-> - - - 0 0 0>
<2:__size_t 4 3 1 6 : <3:5,-,-,<4:1,int,<3:unsigned,-,->>,0,-> - - - 0 0 0>
<3:__ssize_t 4 3 1 6 : <5:5,-,-,<6:1,int,<4:signed,-,->>,0,-> - - - 0 0 0>
4:__ptrdiff_t 4 3 1 6 : 5 - - - 0 0 0
5:__bounds_off_t 4 3 1 6 : 5 - - - 0 0 0
<6:__bounds_t 4 3 1 6 : <7:5,-,-,<8:5,-,-,<9:1,char,<5:.signed,-,->>,0,->,0,-> - - - 0 0 0>
7:__bounds_mem_t 4 3 1 6 : 7 - - - 0 0 0
<8:__ull 4 3 1 6 : <10:5,-,-,<11:1,int,<6:unsigned,-,<7:long,-,<8:long,-,->>>>,0,-> - - - 0 0 0>
<9:__prof_adm 4 3 1 6 : <12:5,-,-,<13:5,-,-,<14:1,void,->,0,->,0,-> - - - 0 0 0>
<10:__codeptr 4 3 1 6 : <15:5,-,-,<16:5,-,-,<17:7,-,-,14,0,->,0,->,0,-> - - - 0 0 0>
<11:__prof_block_entry 4 1 2 2 - <18:5,-,-,<19:7,-,<9:-,<20:5,-,-,12,0,->,->,14,2,->,0,-> - <2
4
0
-
-
1
-
-
12:admin 4 3 7 1 - 20 - - 9 32 0 0> <3
4
0
-
-
<4
1
27
:
:1253:..\..\..\cstart.c:2
-
-
-
<13:.1.tag 2 3 8 3 <9:36:..\..\..\..\ctc\bin\..\include\stdlib.h:<3
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=f
RUNTIME=B,C,M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=t
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=f
PACK=0
PREDEF=f
PROFENABLE=t
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=f
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=f
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=kernel
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=t
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=f
UM_USER1=f>> 21:2,-,-,-,0,13 - <5
5
0
17
:39
1
-
-
14:quot 3 3 8 5 29:37 5 - 0 - - 16 0 0
15:rem 3 3 8 5 :38 5 - 20 - - 16 0 0> 40 - - 32 0 0>
<16:.2.tag 2 3 8 3 9:41 22:2,-,-,-,0,16 - <6
5
0
17
:44
1
-
-
<17:quot 3 3 8 5 30:42 <23:5,-,-,<24:1,int,<10:signed,-,8>>,0,-> - 0 - - 16 0 0>
18:rem 3 3 8 5 :43 23 - 20 - - 16 0 0> 40 - - 32 0 0>
<19:.3.tag 2 3 8 3 9:47 25:2,-,-,-,0,19 - <7
5
0
17
:50
1
-
-
<20:quot 3 3 8 5 35:48 <26:5,-,-,<27:1,int,<11:signed,-,7>>,0,-> - 0 - - 32 0 0>
21:rem 3 3 8 5 :49 26 - 40 - - 32 0 0> 80 - - 32 0 0>
<22:.4.tag 2 3 8 3 18:35:..\..\..\..\ctc\bin\..\include\sfr\reguserdef16.sfr 28:3,-,-,-,0,22 - <8
5
0
1:36
:49
1
-
-
<23:B 3 3 8 5 4:45 <29:5,-,-,<30:2,-,-,-,0,<24:.5.tag 2 3 8 3 2:37 30 - <9
5
0
:38
:45
8
-
-
<25:ENDINIT 3 3 8 5 16:39 <31:5,-,-,<32:8,-,-,4,1,->,0,-> - 0 - - 1 0 0>
26:LCK 3 3 8 5 :40 31 - 1 - - 1 0 0
<27:HPW0 3 3 8 5 :41 <33:5,-,-,<34:8,-,-,4,2,->,0,-> - 2 - - 1 0 0>
<28:HPW1 3 3 8 5 :42 <35:5,-,-,<36:8,-,-,4,4,->,0,-> - 4 - - 1 0 0>
<29:PW 3 3 8 5 :43 <37:5,-,-,<38:8,-,-,4,8,->,0,-> - 8 - - 1 0 0>
<30:WDTREL 3 3 8 5 :44 <39:5,-,-,<40:8,-,-,4,10,->,0,-> - 10 - - 1 0 0>> 20 - - 16 0 0>>,0,-> - 0 - - 16 0 0>
31:I 3 3 8 5 6:46 5 - 0 - - 16 0 0
32:U 3 3 8 5 15:47 3 - 0 - - 16 0 0> 20 - - 16 0 0>
24
<33:.6.tag 2 3 8 3 18:52 41:3,-,-,-,0,33 - <10
5
0
1:53
:65
1
-
-
<34:B 3 3 8 5 4:61 <42:5,-,-,<43:2,-,-,-,0,<35:.7.tag 2 3 8 3 2:54 43 - <11
5
2
:55
:61
10
-
-
36:CLRIRF 3 3 8 5 16:56 31 - 0 - - 1 0 0
37:.1.nn 3 3 8 5 31:57 31 - 1 - - 1 0 0
38:IR 3 3 8 5 16:58 31 - 2 - - 1 0 0
39:DR 3 3 8 5 :59 31 - 3 - - 1 0 0
<40:.2.nn 3 3 8 5 31:60 <44:5,-,-,<45:8,-,-,4,1c,->,0,-> - 4 - - 1 0 0>> 20 - - 16 0 0>>,0,-> - 0 - - 16 0 0>
41:I 3 3 8 5 6:62 5 - 0 - - 16 0 0
42:U 3 3 8 5 15:63 3 - 0 - - 16 0 0> 20 - - 16 0 0>
35
<43:.8.tag 2 3 8 3 18:68 46:3,-,-,-,0,43 - <12
5
0
1:69
:84
1
-
-
<44:B 3 3 8 5 4:80 <47:5,-,-,<48:2,-,-,-,0,<45:.9.tag 2 3 8 3 2:70 48 - <13
5
1
:71
:80
12
-
-
46:AE 3 3 8 5 28:72 31 - 0 - - 1 0 0
47:OE 3 3 8 5 :73 31 - 1 - - 1 0 0
48:IS 3 3 8 5 :74 31 - 2 - - 1 0 0
49:DS 3 3 8 5 :75 31 - 3 - - 1 0 0
50:TO 3 3 8 5 :76 31 - 4 - - 1 0 0
51:PR 3 3 8 5 :77 31 - 5 - - 1 0 0
<52:.1.nn 3 3 8 5 43:78 <49:5,-,-,<50:8,-,-,4,a,->,0,-> - 6 - - 1 0 0>
53:TIM 3 3 8 5 28:79 39 - 10 - - 1 0 0> 20 - - 16 0 0>>,0,-> - 0 - - 16 0 0>
54:I 3 3 8 5 6:81 5 - 0 - - 16 0 0
55:U 3 3 8 5 15:82 3 - 0 - - 16 0 0> 20 - - 16 0 0>
45
<56:.10.tag 2 3 8 3 18:89 51:3,-,-,-,0,56 - <14
5
0
1:90
:98
1
-
-
<57:B 3 3 8 5 4:94 <52:5,-,-,<53:2,-,-,-,0,<58:.11.tag 2 3 8 3 2:91 53 - <15
5
0
:92
:94
14
-
-
<59:STM_31_0_ 3 3 8 5 28:93 <54:5,-,-,<55:8,-,-,4,20,->,0,-> - 0 - - 1 0 0>> 20 - - 16 0 0>>,0,-> - 0 - - 16 0 0>
60:I 3 3 8 5 6:95 5 - 0 - - 16 0 0
61:U 3 3 8 5 15:96 3 - 0 - - 16 0 0> 20 - - 16 0 0>
58
<62:.12.tag 2 3 8 3 18:101 56:3,-,-,-,0,62 - <16
5
0
1:102
:111
1
-
-
<63:B 3 3 8 5 4:107 <57:5,-,-,<58:2,-,-,-,0,<64:.13.tag 2 3 8 3 2:103 58 - <17
5
1
:104
:107
16
-
-
<65:STM_55_32_ 3 3 8 5 28:105 <59:5,-,-,<60:8,-,-,4,18,->,0,-> - 0 - - 1 0 0>
66:.1.nn 3 3 8 5 43:106 37 - 18 - - 1 0 0> 20 - - 16 0 0>>,0,-> - 0 - - 16 0 0>
67:I 3 3 8 5 6:108 5 - 0 - - 16 0 0
68:U 3 3 8 5 15:109 3 - 0 - - 16 0 0> 20 - - 16 0 0>
64
<69:.14.tag 2 3 8 3 18:118 61:3,-,-,-,0,69 - <18
5
0
1:119
:133
1
-
-
<70:B 3 3 8 5 4:129 <62:5,-,-,<63:2,-,-,-,0,<71:.15.tag 2 3 8 3 2:120 63 - <19
5
1
:121
:129
18
-
-
<72:PORTW 3 3 8 5 23:122 <64:5,-,-,<65:8,-,-,<66:1,int,<12:unsigned,-,<13:__sfrbit32,-,->>>,2,->,0,-> - 0 - - 1 0 0>
<73:WAITRDC 3 3 8 5 :123 <67:5,-,-,<68:8,-,-,66,5,->,0,-> - 2 - - 1 0 0>
<74:ADDRC 3 3 8 5 :124 <69:5,-,-,<70:8,-,-,66,4,->,0,-> - 7 - - 1 0 0>
<75:WAITINV 3 3 8 5 :125 <71:5,-,-,<72:8,-,-,66,1,->,0,-> - b - - 1 0 0>
76:WAIT 3 3 8 5 :126 64 - c - - 1 0 0
77:BCGEN 3 3 8 5 :127 64 - e - - 1 0 0
<78:.1.nn 3 3 8 5 38:128 <73:5,-,-,<74:8,-,-,66,10,->,0,-> - 10 - - 1 0 0>> 20 - - 32 0 0>>,0,-> - 0 - - 32 0 0>
79:I 3 3 8 5 6:130 5 - 0 - - 16 0 0
80:U 3 3 8 5 15:131 3 - 0 - - 16 0 0> 20 - - 32 0 0>
71
<81:.16.tag 2 3 8 3 18:139 75:3,-,-,-,0,81 - <20
5
0
1:140
:152
1
-
-
<82:B 3 3 8 5 4:148 <76:5,-,-,<77:2,-,-,-,0,<83:.17.tag 2 3 8 3 2:141 77 - <21
5
1
:142
:148
20
-
-
<84:CNT1 3 3 8 5 23:143 <78:5,-,-,<79:8,-,-,66,c,->,0,-> - 0 - - 1 0 0>
85:.1.nn 3 3 8 5 38:144 64 - c - - 1 0 0
86:TOS 3 3 8 5 23:145 64 - e - - 1 0 0
<87:SRPN 3 3 8 5 :146 <80:5,-,-,<81:8,-,-,66,8,->,0,-> - 10 - - 1 0 0>
88:CPPN 3 3 8 5 :147 80 - 18 - - 1 0 0> 20 - - 32 0 0>>,0,-> - 0 - - 32 0 0>
89:I 3 3 8 5 6:149 5 - 0 - - 16 0 0
90:U 3 3 8 5 15:150 3 - 0 - - 16 0 0> 20 - - 32 0 0>
83
<91:.18.tag 2 3 8 3 18:154 82:3,-,-,-,0,91 - <22
5
0
1:155
:172
1
-
-
<92:B 3 3 8 5 4:168 <83:5,-,-,<84:2,-,-,-,0,<93:.19.tag 2 3 8 3 2:156 84 - <23
5
2
:157
:168
22
-
-
94:Z 3 3 8 5 23:158 71 - 0 - - 1 0 0
95:N 3 3 8 5 :159 71 - 1 - - 1 0 0
96:C 3 3 8 5 :160 71 - 2 - - 1 0 0
97:V 3 3 8 5 :161 71 - 3 - - 1 0 0
98:CNZ 3 3 8 5 :162 71 - 4 - - 1 0 0
99:IEN 3 3 8 5 :163 71 - 5 - - 1 0 0
100:CEN 3 3 8 5 :164 71 - 6 - - 1 0 0
101:.1.nn 3 3 8 5 38:165 71 - 7 - - 1 0 0
102:DPTR 3 3 8 5 23:166 80 - 8 - - 1 0 0
103:.2.nn 3 3 8 5 38:167 73 - 10 - - 1 0 0> 20 - - 32 0 0>>,0,-> - 0 - - 32 0 0>
104:I 3 3 8 5 6:169 5 - 0 - - 16 0 0
105:U 3 3 8 5 15:170 3 - 0 - - 16 0 0> 20 - - 32 0 0>
93
<106:.20.tag 2 3 8 3 18:174 85:2,-,-,-,0,106 - <24
5
0
1:175
:185
1
-
-
<107:R7 3 3 8 5 16:176 <86:5,-,<14:volatile,-,->,82,0,-> - 0 - <108:PCP_GPR7_type 4 3 1 6 3:172 86 - - - 0 0 0> 32 0 0>
<109:R6 3 3 8 5 16:177 87:5,-,14,75,0,- - 20 - <110:PCP_GPR6_type 4 3 1 6 3:152 87 - - - 0 0 0> 32 0 0>
111:R5 3 3 8 5 16:178 3 - 40 - - 16 0 0
112:R4 3 3 8 5 :179 3 - 60 - - 16 0 0
113:R3 3 3 8 5 :180 3 - 80 - - 16 0 0
114:R2 3 3 8 5 :181 3 - a0 - - 16 0 0
115:R1 3 3 8 5 :182 3 - c0 - - 16 0 0
116:R0 3 3 8 5 :183 3 - e0 - - 16 0 0> 100 - - 32 0 0>
<117:.21.tag 2 3 8 3 18:189 88:3,-,-,-,0,117 - <25
5
0
1:190
:209
1
-
-
<118:B 3 3 8 5 4:205 <89:5,-,-,<90:2,-,-,-,0,<119:.22.tag 2 3 8 3 2:191 90 - <26
5
2
:192
:205
25
-
-
120:EN 3 3 8 5 23:193 71 - 0 - - 1 0 0
121:.1.nn 3 3 8 5 38:194 71 - 1 - - 1 0 0
122:RS 3 3 8 5 35:195 71 - 2 - - 1 0 0
123:.2.nn 3 3 8 5 38:196 71 - 3 - - 1 0 0
124:RCB 3 3 8 5 23:197 71 - 4 - - 1 0 0
125:EIE 3 3 8 5 :198 71 - 5 - - 1 0 0
126:CS 3 3 8 5 :199 64 - 6 - - 1 0 0
127:PPE 3 3 8 5 :200 71 - 8 - - 1 0 0
<128:PPS 3 3 8 5 :201 <91:5,-,-,<92:8,-,-,66,7,->,0,-> - 9 - - 1 0 0>
129:CWE 3 3 8 5 :202 71 - 10 - - 1 0 0
130:CWT 3 3 8 5 :203 91 - 11 - - 1 0 0
131:ESR 3 3 8 5 :204 80 - 18 - - 1 0 0> 20 - - 32 0 0>>,0,-> - 0 - - 32 0 0>
132:I 3 3 8 5 6:206 5 - 0 - - 16 0 0
133:U 3 3 8 5 15:207 3 - 0 - - 16 0 0> 20 - - 32 0 0>
119
<134:.23.tag 2 3 8 3 18:212 93:3,-,-,-,0,134 - <27
5
0
1:213
:230
1
-
-
<135:B 3 3 8 5 4:226 <94:5,-,-,<95:2,-,-,-,0,<136:.24.tag 2 3 8 3 2:214 95 - <28
5
0
:215
:226
27
-
-
137:BER 3 3 8 5 35:216 71 - 0 - - 1 0 0
138:IOP 3 3 8 5 :217 71 - 1 - - 1 0 0
139:DCR 3 3 8 5 :218 71 - 2 - - 1 0 0
140:IAE 3 3 8 5 :219 71 - 3 - - 1 0 0
141:DBE 3 3 8 5 :220 71 - 4 - - 1 0 0
142:ME 3 3 8 5 :221 71 - 5 - - 1 0 0
143:CWD 3 3 8 5 :222 71 - 6 - - 1 0 0
144:PPC 3 3 8 5 :223 71 - 7 - - 1 0 0
145:EPN 3 3 8 5 :224 80 - 8 - - 1 0 0
146:EPC 3 3 8 5 :225 73 - 10 - - 1 0 0> 20 - - 32 0 0>>,0,-> - 0 - - 32 0 0>
147:I 3 3 8 5 6:227 5 - 0 - - 16 0 0
148:U 3 3 8 5 15:228 3 - 0 - - 16 0 0> 20 - - 32 0 0>
136
<149:.25.tag 2 3 8 3 18:235 96:3,-,-,-,0,149 - <29
5
0
1:236
:252
1
-
-
<150:B 3 3 8 5 4:248 <97:5,-,-,<98:2,-,-,-,0,<151:.26.tag 2 3 8 3 2:237 98 - <30
5
3
:238
:248
29
-
-
152:SRPN 3 3 8 5 16:239 37 - 0 - - 1 0 0
153:.1.nn 3 3 8 5 31:240 33 - 8 - - 1 0 0
154:TOS 3 3 8 5 16:241 31 - a - - 1 0 0
155:.2.nn 3 3 8 5 31:242 31 - b - - 1 0 0
156:SRE 3 3 8 5 16:243 31 - c - - 1 0 0
157:SRR 3 3 8 5 28:244 31 - d - - 1 0 0
158:CLRR 3 3 8 5 16:245 31 - e - - 1 0 0
159:SETR 3 3 8 5 :246 31 - f - - 1 0 0
160:.3.nn 3 3 8 5 31:247 39 - 10 - - 1 0 0> 20 - - 16 0 0>>,0,-> - 0 - - 16 0 0>
161:I 3 3 8 5 6:249 5 - 0 - - 16 0 0
162:U 3 3 8 5 15:250 3 - 0 - - 16 0 0> 20 - - 16 0 0>
151
<163:.27.tag 2 3 8 3 9:66:..\..\..\cstart.c:2 <99:4,-,<15:.unsigned,-,<16:.char,-,->>,-,0,163> - <31
5
0
1:67
:70
1
-
-
164:_ENDINIT_DISABLE 4 3 8 4 9:68 6 - 0 - - 0 0 0
165:_ENDINIT_ENABLE 4 3 8 4 :69 6 - 1 - - 0 0 0> 20 - - 16 0 0>>
-
-> - - 8 0 32>
<166:__prof_func_entry 4 1 2 2 -:1 18 - <32
4
0
-
-
1
-
-
167:admin 4 3 7 1 - 20 - - 9 32 0 0> <33
4
0
-
-
4
-
-> - - 8 0 32>
<168:__prof_func_entry2 4 1 2 2 - <100:5,-,-,<101:7,-,<17:-,20,<18:-,15,->>,14,2,->,0,-> - <34
4
0
-
-
1
-
-
169:admin 4 3 7 1 - 20 - - 9 32 0 0
170:returnAddress 4 3 7 1 - 15 - - 10 32 0 0> <35
4
0
-
-
4
-
-> - - 8 0 32>
<171:__prof_func_exit 4 1 2 2 - 18 - <36
4
0
-
-
1
-
-
172:admin 4 3 7 1 - 20 - - 9 32 0 0> <37
4
0
-
-
4
-
-> - - 8 0 32>
<173:__prof_cleanup 4 1 2 2 - <102:5,-,-,<103:7,-,-,14,2,->,0,-> - <38
4
0
-
-
1
-
-> <39
4
0
-
-
4
-
-> - - 8 0 32>
<174:__prof_int_entry 4 1 2 2 - 102 - <40
4
0
-
-
1
-
-> <41
4
0
-
-
4
-
-> - - 8 0 32>
<175:__prof_int_exit 4 1 2 2 - 102 - <42
4
0
-
-
1
-
-> <43
4
0
-
-
4
-
-> - - 8 0 32>
<176:__mtcr 4 1 2 2 <-:<4
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=f
RUNTIME=B,C,M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=t
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=t
PACK=0
PREDEF=t
PROFENABLE=t
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=f
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=f
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=kernel
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=t
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=f
UM_USER1=f>> <104:5,-,14,<105:7,-,<19:-,5,<20:-,5,->>,14,2,->,0,-> <21:__leaf__,-,<22:__builtin,-,->> <44
4
2
-
-
1
-
-
177:.1.nn 4 3 7 1 - 5 - - - 16 0 0
178:.2.nn 4 3 7 1 - 5 - - - 16 0 0> <45
4
0
-
-
4
-
-> - - 8 0 0>
<179:__mfcr 4 1 2 2 - <106:5,-,14,<107:7,-,20,6,2,->,0,-> 21 <46
4
1
-
-
1
-
-
180:.1.nn 4 3 7 1 - 5 - - - 16 0 0> <47
4
0
-
-
4
-
-> - - 8 0 0>
<181:__isync 4 1 2 2 - 108:5,-,14,103,0,- 21 <48
4
0
-
-
1
-
-> <49
4
0
-
-
4
-
-> - - 8 0 0>
<182:__dsync 4 1 2 2 - 108 21 <50
4
0
-
-
1
-
-> <51
4
0
-
-
4
-
-> - - 8 0 0>
<183:__get_return_address 4 1 2 2 - <109:5,-,-,<110:7,-,-,16,2,->,0,-> 23:__const__,-,21 <52
4
0
-
-
1
-
-> <53
4
0
-
-
4
-
-> - 10 8 0 32>
184:size_t 4 3 1 6 25:21:..\..\..\..\ctc\bin\..\include\stdlib.h:3 3 - - - 0 0 0
185:div_t 4 3 1 6 19:39 111:5,-,-,21,0,- - - - 0 0 0
186:ldiv_t 4 3 1 6 :44 112:5,-,-,22,0,- - - - 0 0 0
187:lldiv_t 4 3 1 6 :50 113:5,-,-,25,0,- - - - 0 0 0
<188:exit 4 1 2 2 33:90 <114:5,-,-,<115:7,-,20,14,2,->,0,-> 24:__noreturn__,-,- <54
4
1
42
48
1
-
-
189:.1.nn 4 3 7 1 44 5 - - - 16 0 0> <55
4
0
42
48
4
-
-> - - 8 0 64>
<190:_Exit 4 1 2 2 33:93 114 24 <56
4
1
42
48
1
-
-
191:.1.nn 4 3 7 1 44 5 - - - 16 0 0> <57
4
0
42
48
4
-
-> - - 8 0 1056>
<192:wchar_t 4 3 1 6 26:104 <116:5,-,-,<117:1,int,<25:short,-,4>>,0,-> - - - 0 0 0>
193:WDT_CON0_type 4 3 1 6 3:49:..\..\..\..\ctc\bin\..\include\sfr\reguserdef16.sfr 118:5,-,14,28,0,- - - - 0 0 0
194:WDT_CON1_type 4 3 1 6 :65 119:5,-,14,41,0,- - - - 0 0 0
195:WDT_SR_type 4 3 1 6 :84 120:5,-,14,46,0,- - - - 0 0 0
196:STM_TIM0_type 4 3 1 6 :98 121:5,-,14,51,0,- - - - 0 0 0
197:STM_CAP_type 4 3 1 6 :111 122:5,-,14,56,0,- - - - 0 0 0
198:EBU_BOOTCFG_type 4 3 1 6 :133 123:5,-,14,61,0,- - - - 0 0 0
110
108
199:PCP_CONTEXT_type 4 3 1 6 :185 124:5,-,14,85,0,- - - - 0 0 0
200:PCP_CS_type 4 3 1 6 :209 125:5,-,14,88,0,- - - - 0 0 0
201:PCP_ES_type 4 3 1 6 :230 126:5,-,14,93,0,- - - - 0 0 0
202:CPU_SRC0_type 4 3 1 6 :252 127:5,-,14,96,0,- - - - 0 0 0
<203:_lc_ue_ustack 4 1 2 1 19:37:..\..\..\cstart.c:2 <128:5,-,-,<129:6,-,-,14,-1,->,0,-> 26:__far,-,- - - 8 0 3>
204:_lc_ue_istack 4 1 2 1 :38 128 26 - - 8 0 3
205:_lc_u_int_tab 4 1 2 1 :39 128 26 - - 8 0 3
206:_lc_u_trap_tab 4 1 2 1 :40 128 26 - - 8 0 3
207:_SMALL_DATA_ 4 1 2 1 :41 128 26 - - 8 0 3
208:_LITERAL_DATA_ 4 1 2 1 :42 128 26 - - 8 0 3
209:_A8_DATA_ 4 1 2 1 :43 128 26 - - 8 0 3
210:_A9_DATA_ 4 1 2 1 :44 128 26 - - 8 0 3
<211:_c_init 4 1 2 2 13:48 102 - <58
4
0
20
25
1
-
-> <59
4
0
20
25
4
-
-> - - 8 0 0>
<212:__init_sp 4 2 4 2 48:139 102 <27:__jump__,-,<28:__noreturn__,-,<29:__noinline__,-,->>> <60
4
0
57
64
1
-
-> <61
4
0
57
64
4
-
-> - - 8 0 8>
<213:_start 4 2 4 2 48:182 102 27 <62
4
0
54
61
1
-
-> <63
4
0
54
61
4
-
-> - - 8 0 8>
<214:main 4 1 2 2 12:63 <130:5,-,-,<131:7,-,<30:-,5,<31:-,<132:5,-,-,7,0,->,->>,6,2,->,0,-> - <64
4
0
16
41
1
-
-
215:argc 4 3 7 1 22 5 - - - 16 0 0
216:argv 4 3 7 1 34 132 - - - 32 0 4096> <65
4
0
16
41
4
-
-> - - 8 0 1056>
217:_ENDINIT_DISABLE 4 3 8 4 9:68 6 - 0 - - 0 0 0
218:_ENDINIT_ENABLE 4 3 8 4 :69 6 - 1 - - 0 0 0
219:_endinit_t 4 3 1 6 :70 133:5,-,-,99,0,- - - - 0 0 0
<220:endinit_set 4 2 4 2 20:1046 <134:5,-,-,<135:7,-,<32:-,133,->,14,2,->,0,-> 33:inline,-,- <66
4
0
31
58
1
-
-
221:endinit_value 4 3 7 1 44 133 - - 219 8 0 8> <67
4
0
31
58
4
-
-> - - 8 0 136>
<222:_endinit_clear 4 1 3 2 13:74 102 - <68
4
0
27
32
1
-
-> <69
4
0
27
32
4
-
-> - - 8 0 0>
<223:_endinit_set 4 1 3 2 13:75 102 - <70
4
0
27
32
1
-
-> <71
4
0
27
32
4
-
-> - - 8 0 0>
<224:__prof_init 4 1 2 2 13:78 102 - <72
4
0
24
31
1
-
-> <73
4
0
24
31
4
-
-> - - 8 0 0>
<225:_START 4 1 3 2 <6:117:..\..\..\cstart.c:<5
DNSIZE=0
OPTIM=g
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=f
RUNTIME=M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=t
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=f
PACK=0
PREDEF=f
PROFENABLE=f
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
CODE_SECTION=libc.reset
MAXMATCH=200
IMMEDIATE_IN_CODE=t
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=t
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=kernel
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=t
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=f
UM_USER1=f>> 102 - <74
4
0
12
19
1
-
-> <75
4
0
12
19
4
-
-> - - 8 0 0>
<226:_EBU_BOOTCFG 4 1 3 1 <17:130:..\..\..\cstart.c:<6
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=f
RUNTIME=M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=t
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=f
PACK=0
PREDEF=f
PROFENABLE=f
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
FAR_ROM_SECTION=libc.ebu_bootcfg
IMMEDIATE_IN_CODE=t
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=t
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=kernel
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=t
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=f
UM_USER1=f>> <136:5,-,<34:const,-,->,6,0,-> 35:__protect__,-,26 - - 16 0 0>
<227:_lc_ub_csa_01 4 1 2 1 12:882:..\..\..\cstart.c:2 <137:5,-,-,<138:6,-,-,<139:6,-,-,6,10,->,-1,->,0,-> - - - 16 0 3>
228:_lc_ue_csa_01 4 1 2 1 :883 137 - - - 16 0 3
229:_trapmmu 4 1 2 2 1:1009 16 - - - - - 8 0 1056
230:_trapprotection 4 1 2 2 :1012 16 - - - - - 8 0 1056
231:_trapinstruction 4 1 2 2 :1015 16 - - - - - 8 0 1056
232:_trapcontext 4 1 2 2 :1018 16 - - - - - 8 0 1056
233:_trapbus 4 1 2 2 :1021 16 - - - - - 8 0 1056
234:_trapassertion 4 1 2 2 :1024 16 - - - - - 8 0 1056
235:_trapsystem 4 1 2 2 :1027 16 - - - - - 8 0 1056
236:_trapnmi 4 1 2 2 :1030 16 - - - - - 8 0 1056
237:__libc_references 4 1 2 2 :1:..\..\..\cstart.c:1 16 22 - - - - 8 0 1056> 1 4
BEGIN : 0 1
FUNC 13:74:..\..\..\cstart.c:2 0 <76
3
1
34
67
68
<77
3
0
1:1047
:1081
76
<78
3
0
31:1046
58
76
-
->
<79
3
0
1:1047
:1081
66
-
->
238:wdt_con0 4 3 7 1 22:1048 3 - - - 16 0 8
239:wdt_con1 4 3 7 1 :1051 3 - - - 16 0 8>
-
<240:.c1 4 3 7 1 13:74 <140:5,-,-,<141:5,-,14,4,0,->,0,-> - - - 32 0 264>> 222 <80
2
0
34
67
-
-
-> 76 <81
3
0
34
67
69
<82
3
0
1:1047
:1081
81
<83
3
0
31:1046
58
81
-
->
<84
3
0
1:1047
:1081
67
-
->>
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY 34:74 0 76 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 30:1056 0 77 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 77
ST 28 0 - 14
OBJ : 0 - 140 240
CON : 0 - 141 f00005f0
STAT 30 0 77
ST 18 0 - 14
OBJ 9 0 - 3 238
LD 28 0 - 4
LD : 0 - 141
OBJ : 0 - 140 240
STAT 30:1058 0 77
ST 18 0 - 14
OBJ 9 0 - 3 239
LD 28 0 - 4
CON : 0 - 141 f00005f4
STAT 25:1062 0 77
ST 18 0 - 14
OBJ 9 0 - 3 238
OR 18 0 - 4
AND :1061 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 238
CON 21 0 - 4 ffffff01
CON :1062 0 - 4 f0
STAT 25:1067 0 77
ST 18 0 - 14
OBJ 9 0 - 3 239
AND 18 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 239
CON 21 0 - 4 c
STAT 29:1068 0 77
ST 18 0 - 14
OBJ 9 0 - 3 238
OR 18 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 238
LD 21 0 - 4
OBJ : 0 - 3 239
STAT 30:1070 0 77
ST 20 0 - 14
LD 17 0 - 141
OBJ : 0 - 140 240
LD 22 0 - 4
OBJ : 0 - 3 238
STAT 41:1077 0 77
ST 18 0 - 14
OBJ 9 0 - 3 238
OR 18 0 - 4
AND :1076 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 238
CON 21 0 - 4 fffffff0
CON 26:1077 0 - 4 2
STAT 18:1078 0 77
ICALL 16 8 - 14 <>
OBJ 9 0 - 108 181
NIL 17 0 - 14
STAT 30:1079 0 77
ST 20 0 - 14
LD 17 0 - 141
OBJ : 0 - 140 240
LD 22 0 - 4
OBJ : 0 - 3 238
STAT 19:1080 0 77
CONV 17 0 - 14
LD : 0 - 4
LD : 0 - 141
OBJ : 0 - 140 240
NOJUMP 19 0 77 profData=0,0,1,0,0,0,0,0,0,0
EXIT 67:74 0 76 profData=0,0,0,1,0,0,0,0,1,0
FUNC 13:75 0 <85
3
1
34
66
70
<86
3
0
1:1047
:1081
85
<87
3
0
31:1046
58
85
-
->
79
241:wdt_con0 4 3 7 1 22:1048 3 - - - 16 0 8
242:wdt_con1 4 3 7 1 :1051 3 - - - 16 0 8>
-
243:.c1 4 3 7 1 13:75 140 - - - 32 0 264> 223 <88
2
0
34
66
-
-
-> 85 <89
3
0
34
66
71
<90
3
0
1:1047
:1081
89
<91
3
0
31:1046
58
89
-
->
84>
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY 34:75 0 85 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 30:1056 0 86 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 86
ST 28 0 - 14
OBJ : 0 - 140 243
CON : 0 - 141 f00005f0
STAT 30 0 86
ST 18 0 - 14
OBJ 9 0 - 3 241
LD 28 0 - 4
LD : 0 - 141
OBJ : 0 - 140 243
STAT 30:1058 0 86
ST 18 0 - 14
OBJ 9 0 - 3 242
LD 28 0 - 4
CON : 0 - 141 f00005f4
STAT 25:1062 0 86
ST 18 0 - 14
OBJ 9 0 - 3 241
OR 18 0 - 4
AND :1061 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 241
CON 21 0 - 4 ffffff01
CON :1062 0 - 4 f0
STAT 25:1067 0 86
ST 18 0 - 14
OBJ 9 0 - 3 242
AND 18 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 242
CON 21 0 - 4 c
STAT 29:1068 0 86
ST 18 0 - 14
OBJ 9 0 - 3 241
OR 18 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 241
LD 21 0 - 4
OBJ : 0 - 3 242
STAT 30:1070 0 86
ST 20 0 - 14
LD 17 0 - 141
OBJ : 0 - 140 243
LD 22 0 - 4
OBJ : 0 - 3 241
STAT 41:1077 0 86
ST 18 0 - 14
OBJ 9 0 - 3 241
OR 18 0 - 4
AND :1076 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 241
CON 21 0 - 4 fffffff0
CON 26:1077 0 - 4 3
STAT 18:1078 0 86
ICALL 16 8 - 14 <>
OBJ 9 0 - 108 181
NIL 17 0 - 14
STAT 30:1079 0 86
ST 20 0 - 14
LD 17 0 - 141
OBJ : 0 - 140 243
LD 22 0 - 4
OBJ : 0 - 3 241
STAT 19:1080 0 86
CONV 17 0 - 14
LD : 0 - 4
LD : 0 - 141
OBJ : 0 - 140 243
NOJUMP 19 0 86 profData=0,0,1,0,0,0,0,0,0,0
EXIT 66:75 0 85 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:117:..\..\..\cstart.c:5 0 <92
3
0
1:118
:120
74
-
-> 225 <93
2
0
:118
:120
-
-
-> 92 <94
3
0
:118
:120
75
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :118 0 92 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 20:119 0 92 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 92
CALL 18 0 - 14
OBJ 9 0 - 102 212
NIL 19 0 - 14
NOJUMP 20 2 92 profData=0,0,1,0,0,0,0,0,0,0
EXIT 1:120 0 92 profData=0,0,0,1,0,0,0,0,1,0
FUNC 48:139:..\..\..\cstart.c:2 0 <95
3
0
1:140
:176
60
-
-
244:__asm.0 4 3 4 2 9:173 16 - - - - - 8 0 8> 212 <96
2
0
1:140
:176
-
-
-> 95 <97
3
0
:140
:176
61
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :140 0 95 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 25:172 0 95 profData=0,0,0,1,1,0,0,0,1,1
STAT 9:173 0 95
ICALL 39 8 - 14 0"mov.a	sp,%0"::"d":
OBJ 9 0 - 16 244
ARG 38 0 - 14
AND 57:172 0 - 4
CONV 27 32 - 4
CONV 42 0 - 13
OBJ : 0 - 128 203
CON 59 0 - 4 fffffff8
NIL 38:173 0 - 14
STAT 17:175 0 95
CALL 15 0 - 14
OBJ 9 0 - 102 213
NIL 16 0 - 14
NOJUMP 17 2 95 profData=0,0,1,0,0,0,0,0,0,0
EXIT 1:176 0 95 profData=0,0,0,1,0,0,0,0,1,0
FUNC 48:182 0 <98
3
5
1:183
:1034
62
<99
3
0
9:239
1:1034
98
<100
3
0
9:334
1:1034
99
<101
3
0
9:856
1:1034
100
<102
3
0
9:859
1:1034
101
<103
3
0
9:870
1:1034
102
<104
3
0
9:873
1:1034
103
<105
3
0
:882
:1034
104
<106
3
0
:1047
:1081
99
<107
3
0
31:1046
58
98
<108
3
0
1:1047
:1081
99
<109
3
0
31:1046
58
98
<110
3
0
1:1047
:1081
99
<111
3
0
31:1046
58
98
<112
3
0
1:1047
:1081
100
<113
3
0
31:1046
58
98
-
->
79
245:wdt_con0 4 3 7 1 22:1048 3 - - - 16 0 8
246:wdt_con1 4 3 7 1 :1051 3 - - - 16 0 8>
->
79
247:wdt_con0 4 3 7 1 :1048 3 - - - 16 0 8
248:wdt_con1 4 3 7 1 :1051 3 - - - 16 0 8>
->
79
249:wdt_con0 4 3 7 1 :1048 3 - - - 16 0 8
250:wdt_con1 4 3 7 1 :1051 3 - - - 16 0 8>
->
79
251:wdt_con0 4 3 7 1 :1048 3 - - - 16 0 8
252:wdt_con1 4 3 7 1 :1051 3 - - - 16 0 8>
-
253:k 4 3 7 1 17:898 5 - - - 16 0 8
254:no_of_csas 4 3 7 1 14:899 5 - - - 16 0 8
255:csa 4 3 7 1 15:900 142:5,-,-,5,0,- - - - 32 0 8
256:seg_nr 4 3 7 1 23:901 3 - - - 16 0 8
257:seg_idx 4 3 7 1 31 3 - - - 16 0 8
258:pcxi_val 4 3 7 1 40 3 - - - 16 0 8
<259:first 4 3 7 1 15:902 <143:5,-,-,<144:1,_Bool,->,0,-> - - - 8 0 8>>
-
260:__asm.4 4 3 4 2 9:874 16 - - - - - 8 0 8>
-
261:__asm.3 4 3 4 2 :871 16 - - - - - 8 0 8>
-
262:__asm.2 4 3 4 2 :860 16 - - - - - 8 0 8>
-
263:__asm.1 4 3 4 2 :857 16 - - - - - 8 0 8>
->
-
264:pcxi 4 3 7 1 22:239 3 - - - 16 0 8>
-
265:.t1 4 3 7 1 19:1001 5 - - - 16 0 8
<266:.s2 4 3 7 1 48:182 <145:5,-,-,<146:5,-,-,139,0,->,0,-> - - - 32 0 2056>
267:.c3 4 3 7 1 : 140 - - - 32 0 264
268:.c4 4 3 7 1 : 140 - - - 32 0 264
269:.c5 4 3 7 1 : 147:5,-,-,137,0,- - - - 32 0 264> 213 <114
2
0
1:183
:1034
-
-
-> 98 <115
3
0
:183
:1034
63
<116
3
0
9:239
1:1034
115
<117
3
0
9:334
1:1034
116
<118
3
0
9:856
1:1034
117
<119
3
0
9:859
1:1034
118
<120
3
0
9:870
1:1034
119
<121
3
0
9:873
1:1034
120
<122
3
0
:882
:1034
121
<123
3
0
:1047
:1081
115
<124
3
0
31:1046
58
115
<125
3
0
1:1047
:1081
115
<126
3
0
31:1046
58
115
<127
3
0
1:1047
:1081
115
<128
3
0
31:1046
58
115
<129
3
0
1:1047
:1081
115
<130
3
0
31:1046
58
115
-
->
84>
->
84>
->
84>
->
84>
->
->
->
->
->
->
->
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY 1:183 0 98 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 18:229 0 105 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 98
ICALL 16 8 - 14 <>
OBJ 9 0 - 108 182
NIL 17 0 - 14
STAT 32:233 0 98
ICALL 15 8 - 14 <>
OBJ 9 0 - 104 176
ARG 19 0 - 14
CON 16 0 - 6 fe04
ARG 31 0 - 14
CON 21 0 - 6 980
NIL 31 0 - 14
STAT 27:240 0 99
ST 14 0 - 14
OBJ 9 0 - 3 264
AND 14 0 - 4
CONV 35:239 0 - 4
ICALL : 8 - 6 <>
OBJ 29 0 - 106 179
ARG 40 0 - 14
CON 36 0 - 6 fe00
NIL 40 0 - 14
CON 17:240 0 - 4 fff00000
STAT 27:241 0 99
ICALL 15 8 - 14 <>
OBJ 9 0 - 104 176
ARG 20 0 - 14
CON 16 0 - 6 fe00
ARG 26 0 - 14
CONV 22 0 - 6
LD : 0 - 4
OBJ : 0 - 3 264
NIL 26 0 - 14
STAT 30:1056 0 106
ST 28 0 - 14
OBJ : 0 - 140 267
CON : 0 - 141 f00005f0
STAT 30 0 106
ST 18 0 - 14
OBJ 9 0 - 3 251
LD 28 0 - 4
LD : 0 - 141
OBJ : 0 - 140 267
STAT 30:1058 0 106
ST 28 0 - 14
OBJ : 0 - 140 268
CON : 0 - 141 f00005f4
STAT 30 0 106
ST 18 0 - 14
OBJ 9 0 - 3 252
LD 28 0 - 4
LD : 0 - 141
OBJ : 0 - 140 268
STAT 25:1062 0 106
ST 18 0 - 14
OBJ 9 0 - 3 251
OR 18 0 - 4
AND :1061 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 251
CON 21 0 - 4 ffffff01
CON :1062 0 - 4 f0
STAT 25:1067 0 106
ST 18 0 - 14
OBJ 9 0 - 3 252
AND 18 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 252
CON 21 0 - 4 c
STAT 29:1068 0 106
ST 18 0 - 14
OBJ 9 0 - 3 251
OR 18 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 251
LD 21 0 - 4
OBJ : 0 - 3 252
STAT 30:1070 0 106
ST 20 0 - 14
LD 17 0 - 141
OBJ : 0 - 140 267
LD 22 0 - 4
OBJ : 0 - 3 251
STAT 41:1077 0 106
ST 18 0 - 14
OBJ 9 0 - 3 251
OR 18 0 - 4
AND :1076 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 251
CON 21 0 - 4 fffffff0
CON 26:1077 0 - 4 2
STAT 18:1078 0 106
ICALL 16 8 - 14 <>
OBJ 9 0 - 108 181
NIL 17 0 - 14
STAT 30:1079 0 106
ST 20 0 - 14
LD 17 0 - 141
OBJ : 0 - 140 267
LD 22 0 - 4
OBJ : 0 - 3 251
STAT 19:1080 0 106
CONV 17 0 - 14
LD : 0 - 4
LD : 0 - 141
OBJ : 0 - 140 267
STAT 26:276 0 99
ST 20 0 - 14
LD 17 0 - 141
OBJ : 0 - 140 268
OR 20 0 - 4
LD 17 0 - 4
LD : 0 - 141
OBJ : 0 - 140 268
CON 23 0 - 4 8
STAT 30:1056 0 108
ST 18 0 - 14
OBJ 9 0 - 3 249
LD 28 0 - 4
LD : 0 - 141
OBJ : 0 - 140 267
STAT 30:1058 0 108
ST 18 0 - 14
OBJ 9 0 - 3 250
LD 28 0 - 4
LD : 0 - 141
OBJ : 0 - 140 268
STAT 25:1062 0 108
ST 18 0 - 14
OBJ 9 0 - 3 249
OR 18 0 - 4
AND :1061 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 249
CON 21 0 - 4 ffffff01
CON :1062 0 - 4 f0
STAT 25:1067 0 108
ST 18 0 - 14
OBJ 9 0 - 3 250
AND 18 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 250
CON 21 0 - 4 c
STAT 29:1068 0 108
ST 18 0 - 14
OBJ 9 0 - 3 249
OR 18 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 249
LD 21 0 - 4
OBJ : 0 - 3 250
STAT 30:1070 0 108
ST 20 0 - 14
LD 17 0 - 141
OBJ : 0 - 140 267
LD 22 0 - 4
OBJ : 0 - 3 249
STAT 41:1077 0 108
ST 18 0 - 14
OBJ 9 0 - 3 249
OR 18 0 - 4
AND :1076 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 249
CON 21 0 - 4 fffffff0
CON 26:1077 0 - 4 3
STAT 18:1078 0 108
ICALL 16 8 - 14 <>
OBJ 9 0 - 108 181
NIL 17 0 - 14
STAT 30:1079 0 108
ST 20 0 - 14
LD 17 0 - 141
OBJ : 0 - 140 267
LD 22 0 - 4
OBJ : 0 - 3 249
STAT 19:1080 0 108
CONV 17 0 - 14
LD : 0 - 4
LD : 0 - 141
OBJ : 0 - 140 267
STAT 30:1056 0 110
ST 18 0 - 14
OBJ 9 0 - 3 247
LD 28 0 - 4
LD : 0 - 141
OBJ : 0 - 140 267
STAT 30:1058 0 110
ST 18 0 - 14
OBJ 9 0 - 3 248
LD 28 0 - 4
LD : 0 - 141
OBJ : 0 - 140 268
STAT 25:1062 0 110
ST 18 0 - 14
OBJ 9 0 - 3 247
OR 18 0 - 4
AND :1061 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 247
CON 21 0 - 4 ffffff01
CON :1062 0 - 4 f0
STAT 25:1067 0 110
ST 18 0 - 14
OBJ 9 0 - 3 248
AND 18 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 248
CON 21 0 - 4 c
STAT 29:1068 0 110
ST 18 0 - 14
OBJ 9 0 - 3 247
OR 18 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 247
LD 21 0 - 4
OBJ : 0 - 3 248
STAT 30:1070 0 110
ST 20 0 - 14
LD 17 0 - 141
OBJ : 0 - 140 267
LD 22 0 - 4
OBJ : 0 - 3 247
STAT 41:1077 0 110
ST 18 0 - 14
OBJ 9 0 - 3 247
OR 18 0 - 4
AND :1076 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 247
CON 21 0 - 4 fffffff0
CON 26:1077 0 - 4 2
STAT 18:1078 0 110
ICALL 16 8 - 14 <>
OBJ 9 0 - 108 181
NIL 17 0 - 14
STAT 30:1079 0 110
ST 20 0 - 14
LD 17 0 - 141
OBJ : 0 - 140 267
LD 22 0 - 4
OBJ : 0 - 3 247
STAT 19:1080 0 110
CONV 17 0 - 14
LD : 0 - 4
LD : 0 - 141
OBJ : 0 - 140 267
STAT 51:298 0 99
ICALL 15 8 - 14 <>
OBJ 9 0 - 104 176
ARG 19 0 - 14
CON 16 0 - 6 fe24
ARG 50 0 - 14
CONV 22 0 - 6
CONV : 32 - 4
CONV 36 0 - 13
OBJ : 0 - 128 206
NIL 50 0 - 14
STAT 51:323 0 99
ICALL 15 8 - 14 <>
OBJ 9 0 - 104 176
ARG 19 0 - 14
CON 16 0 - 6 fe20
ARG 50 0 - 14
CONV 21 0 - 6
CONV : 32 - 4
CONV 36 0 - 13
OBJ : 0 - 128 205
NIL 50 0 - 14
STAT 25:335 0 100
ICALL 15 8 - 14 <>
OBJ 9 0 - 104 176
ARG 19 0 - 14
CON 16 0 - 6 fe28
ARG 24 0 - 14
CONV 21 0 - 6
AND 58:334 0 - 4
CONV 28 32 - 4
CONV 43 0 - 13
OBJ : 0 - 128 204
CON 60 0 - 4 fffffff8
NIL 24:335 0 - 14
STAT 30:1056 0 112
ST 18 0 - 14
OBJ 9 0 - 3 245
LD 28 0 - 4
LD : 0 - 141
OBJ : 0 - 140 267
STAT 30:1058 0 112
ST 18 0 - 14
OBJ 9 0 - 3 246
LD 28 0 - 4
LD : 0 - 141
OBJ : 0 - 140 268
STAT 25:1062 0 112
ST 18 0 - 14
OBJ 9 0 - 3 245
OR 18 0 - 4
AND :1061 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 245
CON 21 0 - 4 ffffff01
CON :1062 0 - 4 f0
STAT 25:1067 0 112
ST 18 0 - 14
OBJ 9 0 - 3 246
AND 18 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 246
CON 21 0 - 4 c
STAT 29:1068 0 112
ST 18 0 - 14
OBJ 9 0 - 3 245
OR 18 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 245
LD 21 0 - 4
OBJ : 0 - 3 246
STAT 30:1070 0 112
ST 20 0 - 14
LD 17 0 - 141
OBJ : 0 - 140 267
LD 22 0 - 4
OBJ : 0 - 3 245
STAT 41:1077 0 112
ST 18 0 - 14
OBJ 9 0 - 3 245
OR 18 0 - 4
AND :1076 0 - 4
LD 9 0 - 4
OBJ : 0 - 3 245
CON 21 0 - 4 fffffff0
CON 26:1077 0 - 4 3
STAT 18:1078 0 112
ICALL 16 8 - 14 <>
OBJ 9 0 - 108 181
NIL 17 0 - 14
STAT 30:1079 0 112
ST 20 0 - 14
LD 17 0 - 141
OBJ : 0 - 140 267
LD 22 0 - 4
OBJ : 0 - 3 245
STAT 19:1080 0 112
CONV 17 0 - 14
LD : 0 - 4
LD : 0 - 141
OBJ : 0 - 140 267
STAT 9:857 0 101
ICALL 42 8 - 14 0"mov.aa	a0,%0"::"a":
OBJ 9 0 - 16 263
ARG 41 0 - 14
CONV 21:856 0 - 13
OBJ : 0 - 128 207
NIL 41:857 0 - 14
STAT 9:860 0 102
ICALL 42 8 - 14 0"mov.aa	a1,%0"::"a":
OBJ 9 0 - 16 262
ARG 41 0 - 14
CONV 21:859 0 - 13
OBJ : 0 - 128 208
NIL 41:860 0 - 14
STAT 9:871 0 103
ICALL 42 8 - 14 0"mov.aa	a8,%0"::"a":
OBJ 9 0 - 16 261
ARG 41 0 - 14
CONV 21:870 0 - 13
OBJ : 0 - 128 209
NIL 41:871 0 - 14
STAT 9:874 0 104
ICALL 42 8 - 14 0"mov.aa	a9,%0"::"a":
OBJ 9 0 - 16 260
ARG 41 0 - 14
CONV 21:873 0 - 13
OBJ : 0 - 128 210
NIL 41:874 0 - 14
STAT 48:901 0 105
ST : 1 - 14
OBJ 40 0 - 3 258
CON 49 0 - 4 0
STAT 20:902 0 105
ST : 1 - 14
OBJ 15 0 - 143 259
CON 21 0 - 144 1
STAT 65:907 0 105
ST 53:884 0 - 14
OBJ : 0 - 147 269
OBJ : 0 - 137 227
STAT 65:907 0 105
ST 28 0 - 14
OBJ 17 0 - 5 254
SHR 46 0 - 6
SUB : 0 - 6
CONV 53:885 0 - 146
OBJ : 0 - 137 228
CONV :884 0 - 146
LD : 0 - 137
OBJ : 0 - 147 269
CON 46:907 0 - 6 6
STAT 25:909 0 105
ST 23 0 - 14
OBJ 22 0 - 5 253
CON 24 0 - 6 0
STAT 46 0 105
ST : 0 - 14
OBJ : 0 - 145 266
CONV 53:884 0 - 146
LD : 0 - 137
OBJ : 0 - 147 269
JUMP 41:909 0 105 3 profData=0,1,1,0,0,0,29,50,0,0
LABEL 46 0 105 -1 loopinfo=2,0,0,-1,0,253,-3,-3,0,0,-1,0,0,0,2,0,0,1
BLOCK 51:911 0 105 profData=0,0,0,1,1,0,0,0,14,14
STAT : 0 105
ST 29 0 - 14
OBJ 25 0 - 142 255
CONV 48 0 - 5
LD : 0 - 146
OBJ : 0 - 145 266
STAT 44:909 0 105
ST : 0 - 14
OBJ : 0 - 145 266
ADD : 0 - 146
LD : 0 - 146
OBJ : 0 - 145 266
CON 49:911 0 - 6 40
STAT 40:913 0 105
ST 30 0 - 14
LD 26 0 - 5
OBJ : 0 - 142 255
CONV 32 0 - 6
LD : 0 - 4
OBJ : 0 - 3 258
STAT 74:915 0 105
ST 33 0 - 14
OBJ 25 0 - 3 256
SHL 69 0 - 4
SHR 55 0 - 4
CONV 37 32 - 4
LD 51 0 - 5
OBJ : 0 - 142 255
CON 58 0 - 6 1c
CON 72 0 - 6 10
STAT 70:916 0 105
ST 33 0 - 14
OBJ 25 0 - 3 257
AND 61 0 - 4
SHR 55 0 - 4
CONV 37 32 - 4
LD 51 0 - 5
OBJ : 0 - 142 255
CON 58 0 - 6 6
CON 63 0 - 4 ffff
STAT 52:917 0 105
ST 34 0 - 14
OBJ 25 0 - 3 258
OR 43 0 - 4
LD 36 0 - 4
OBJ : 0 - 3 256
LD 45 0 - 4
OBJ : 0 - 3 257
JUMPF 25:918 0 105 2 profData=0,1,1,0,0,0,81,50,0,0
LD 29 0 - 144 profData=0,0,0,0,0,0,0,0,0,0
OBJ : 0 - 143 259
BLOCK 46:920 0 105 profData=0,0,0,1,1,0,0,0,2.7,2.7
STAT : 0 105
ST 39 0 - 14
OBJ 33 0 - 143 259
CON 41 0 - 144 0
STAT 54:921 0 105
ICALL 39 8 - 14 <>
OBJ 33 0 - 104 176
ARG 43 0 - 14
CON 40 0 - 6 fe3c
ARG 53 0 - 14
CONV 45 0 - 6
LD : 0 - 4
OBJ : 0 - 3 258
NIL 53 0 - 14
NOJUMP 54 0 105 profData=0,0,1,0,0,0,0,0,0,0
LABEL 25:918 0 105 2
BLOCK 46:909 0 105 profData=0,0,0,1,1,0,0,0,14,14
STAT : 0 105
ST 44 0 - 14
OBJ 43 0 - 5 253
ADD 44 0 - 6
LD 43 0 - 6
OBJ : 0 - 5 253
CON 44 0 - 6 1
NOJUMP 41 0 105 profData=0,0,0,0,0,0,0,0,0,0
LABEL : 0 105 3
BLOCK : 0 105 profData=0,0,0,0,0,0,0,0,0,0
JUMPT : 0 105 -1 profData=0,1,1,0,0,0,95,50,0,0
LT 29 0 - 144 profData=0,1,1,0,0,0,-1,50,0,0
LD 27 0 - 6
OBJ : 0 - 5 253
LD 31 0 - 6
OBJ : 0 - 5 254
BLOCK 38:924 0 105 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 105
ICALL 23 8 - 14 <>
OBJ 17 0 - 104 176
ARG 27 0 - 14
CON 24 0 - 6 fe38
ARG 37 0 - 14
CONV 29 0 - 6
LD : 0 - 4
OBJ : 0 - 3 258
NIL 37 0 - 14
STAT 18:940 0 105
CALL 16 0 - 14
OBJ 9 0 - 102 211
NIL 17 0 - 14
STAT 22:954 0 105
CALL 20 0 - 14
OBJ 9 0 - 102 224
NIL 21 0 - 14
STAT 19:1001 0 105
ST : 0 - 14
OBJ : 0 - 5 265
CALL : 0 - 6
OBJ 15 0 - 130 214
ARG 22 0 - 14
CON 21 0 - 6 0
ARG 29 0 - 14
CON 24 0 - 7 0
NIL 29 0 - 14
STAT 32 0 105
CALL 13 0 - 14
OBJ 9 0 - 114 188
ARG 31 0 - 14
LD 19 0 - 6
OBJ : 0 - 5 265
NIL 31 0 - 14
NOJUMP 32 2 105 profData=0,0,1,0,0,0,0,0,0,0
EXIT 1:1034 0 105 profData=0,0,0,1,0,0,0,0,1,0
FUNC 20:1046 4 79 220 <131
2
0
1:1047
:1081
-
-
-> 79 84 profData=0,0,0,0,1,0,0,0,0,1
ENTRY :1047 0 79 profData=0,0,0,1,0,0,0,0,1,0
EXIT :1081 0 79 profData=0,0,0,1,0,0,0,0,1,0
DATA 45:130:..\..\..\cstart.c:6 0 1 226
INIT : 0 1
CON : 0 - 6 800c
END 1:1253:..\..\..\cstart.c:2 0 1
TAIL -:- 0 -
.
+               37763           1397159280 cinit.mil
#!<mil>
# TASKING VX-toolset for TriCore: C compiler v99.9r9 Build 759
# options: --mil --core=tc1.6 -Rlibpct --section-name-with-symbol -N0 -O3 -g1 --global-type-checking --user-mode=user-0
# files: ..\..\..\cinit.c
#!E__prof_block_entry
#!E__prof_func_entry
#!E__prof_func_entry2
#!E__prof_func_exit
#!E__prof_cleanup
#!E__prof_int_entry
#!E__prof_int_exit
#!E__rol
#!E__get_return_address
#!G_c_init_entry
#!E_lc_ub_table
#!G_c_init
#!E__libc_references
MIL - 0 - version=3:2:b646:a4b1:loopinfo,profData
HEAD - 0 -
MODULE <1:1:..\..\..\cinit.c:<1
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=B,C,E,F,G,I,S,T
RUNTIME=B,C,M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=f
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=f
PACK=0
PREDEF=t
PROFENABLE=t
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=f
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=f
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=user-0
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=f
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=t
UM_USER1=f>> 0 <1
1
0
:
<:249:..\..\..\cinit.c:<2
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=B,C,E,F,G,I,S,T
RUNTIME=B,C,M
SOURCE=f
TRADEOFF=0
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=f
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=f
PACK=0
PREDEF=f
PROFENABLE=t
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=f
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=f
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=user-0
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=f
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=t
UM_USER1=f>>
-
-
-
<1:__wchar_t 4 3 1 6 :1:..\..\..\cinit.c:1 <1:5,-,-,<2:1,int,<1:signed,-,<2:short,-,->>>,0,-> - - - 0 0 0>
<2:__size_t 4 3 1 6 : <3:5,-,-,<4:1,int,<3:unsigned,-,->>,0,-> - - - 0 0 0>
<3:__ssize_t 4 3 1 6 : <5:5,-,-,<6:1,int,<4:signed,-,->>,0,-> - - - 0 0 0>
4:__ptrdiff_t 4 3 1 6 : 5 - - - 0 0 0
5:__bounds_off_t 4 3 1 6 : 5 - - - 0 0 0
<6:__bounds_t 4 3 1 6 : <7:5,-,-,<8:5,-,-,<9:1,char,<5:.signed,-,->>,0,->,0,-> - - - 0 0 0>
7:__bounds_mem_t 4 3 1 6 : 7 - - - 0 0 0
<8:__ull 4 3 1 6 : <10:5,-,-,<11:1,int,<6:unsigned,-,<7:long,-,<8:long,-,->>>>,0,-> - - - 0 0 0>
<9:__prof_adm 4 3 1 6 : <12:5,-,-,<13:5,-,-,<14:1,void,->,0,->,0,-> - - - 0 0 0>
<10:__codeptr 4 3 1 6 : <15:5,-,-,<16:5,-,-,<17:7,-,-,14,0,->,0,->,0,-> - - - 0 0 0>
<11:__prof_block_entry 4 1 2 2 - <18:5,-,-,<19:7,-,<9:-,<20:5,-,-,12,0,->,->,14,2,->,0,-> - <2
4
0
-
-
1
-
-
12:admin 4 3 7 1 - 20 - - 9 32 0 0> <3
4
0
-
-
<4
1
1
:
:249:..\..\..\cinit.c:2
-
-
-
<13:.1.tag 2 3 8 3 9:23:..\..\..\..\ctc\bin\..\include\cinit.h 21:2,-,-,-,0,13 - <5
5
0
1:24
:29
1
-
-
14:action_mwu 3 3 8 5 22:25 3 - 0 - - 16 0 0
15:dst 3 3 8 5 15:26 12 - 20 - - 32 0 0
16:src 3 3 8 5 :27 12 - 40 - - 32 0 0
17:size 3 3 8 5 22:28 3 - 60 - - 16 0 0> 80 - - 32 0 0>>
-
-> - - 8 0 32>
<18:__prof_func_entry 4 1 2 2 -:1 18 - <6
4
0
-
-
1
-
-
19:admin 4 3 7 1 - 20 - - 9 32 0 0> <7
4
0
-
-
4
-
-> - - 8 0 32>
<20:__prof_func_entry2 4 1 2 2 - <22:5,-,-,<23:7,-,<10:-,20,<11:-,15,->>,14,2,->,0,-> - <8
4
0
-
-
1
-
-
21:admin 4 3 7 1 - 20 - - 9 32 0 0
22:returnAddress 4 3 7 1 - 15 - - 10 32 0 0> <9
4
0
-
-
4
-
-> - - 8 0 32>
<23:__prof_func_exit 4 1 2 2 - 18 - <10
4
0
-
-
1
-
-
24:admin 4 3 7 1 - 20 - - 9 32 0 0> <11
4
0
-
-
4
-
-> - - 8 0 32>
<25:__prof_cleanup 4 1 2 2 - <24:5,-,-,<25:7,-,-,14,2,->,0,-> - <12
4
0
-
-
1
-
-> <13
4
0
-
-
4
-
-> - - 8 0 32>
<26:__prof_int_entry 4 1 2 2 - 24 - <14
4
0
-
-
1
-
-> <15
4
0
-
-
4
-
-> - - 8 0 32>
<27:__prof_int_exit 4 1 2 2 - 24 - <16
4
0
-
-
1
-
-> <17
4
0
-
-
4
-
-> - - 8 0 32>
<28:__rol 4 1 2 2 <-:<3
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=B,C,E,F,G,I,S,T
RUNTIME=B,C,M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=f
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=t
PACK=0
PREDEF=t
PROFENABLE=t
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=f
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=f
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=user-0
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=f
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=t
UM_USER1=f>> <26:5,-,-,<27:7,-,<12:-,3,<13:-,3,->>,4,2,->,0,-> <14:__const__,-,<15:__leaf__,-,<16:__builtin,-,->>> <18
4
0
-
-
1
-
-
29:value 4 3 7 1 - 3 - - - 16 0 0
30:count 4 3 7 1 - 3 - - - 16 0 0> <19
4
0
-
-
4
-
-> - - 8 0 0>
<31:__get_return_address 4 1 2 2 - <28:5,-,-,<29:7,-,-,16,2,->,0,-> 14 <20
4
0
-
-
1
-
-> <21
4
0
-
-
4
-
-> - 10 8 0 32>
32:copytable_entry_t 4 3 1 6 3:29:..\..\..\..\ctc\bin\..\include\cinit.h:2 30:5,-,-,21,0,- - - - 0 0 0
<33:_c_init_entry 4 1 3 2 6:96:..\..\..\cinit.c <31:5,-,-,<32:7,-,<17:-,<33:5,-,-,30,0,->,->,14,2,->,0,-> - <22
4
0
19
46
1
-
-
34:entry 4 3 7 1 40 33 - - 32 32 0 8> <23
4
0
19
46
4
-
-> - - 8 0 0>
<35:_lc_ub_table 4 1 2 1 26:24 <34:5,-,-,<35:6,-,-,21,-1,->,0,-> - - 32 32 0 3>
<36:_copy_byte 4 2 4 2 6:27 <36:5,-,-,<37:7,-,<18:-,3,<19:-,7,<20:-,7,->>>,14,2,->,0,-> 21:inline,-,- <24
4
0
16
60
1
-
-
37:size 4 3 7 1 31 3 - - - 16 0 8
38:dst 4 3 7 1 44 7 - - - 32 0 8
39:src 4 3 7 1 56 7 - - - 32 0 8> <25
4
0
16
60
4
-
-> - - 8 0 136>
<40:_copy_word 4 2 4 2 7:36 <38:5,-,-,<39:7,-,<22:-,3,<23:-,<40:5,-,-,5,0,->,<24:-,40,->>>,5,2,->,0,-> 21 <26
4
0
17
59
1
-
-
41:size 4 3 7 1 32 3 - - - 16 0 8
42:dst 4 3 7 1 44 40 - - - 32 0 8
43:src 4 3 7 1 55 40 - - - 32 0 8> <27
4
0
17
59
4
-
-> - - 8 0 136>
<44:_clear_byte 4 2 4 2 7:47 <41:5,-,-,<42:7,-,<25:-,3,20>,14,2,->,0,-> 21 <28
4
0
18
50
1
-
-
45:size 4 3 7 1 33 3 - - - 16 0 8
46:dst 4 3 7 1 46 7 - - - 32 0 8> <29
4
0
18
50
4
-
-> - - 8 0 136>
<47:_clear_word 4 2 4 2 7:56 <43:5,-,-,<44:7,-,<26:-,3,24>,5,2,->,0,-> 21 <30
4
0
18
49
1
-
-
48:size 4 3 7 1 33 3 - - - 16 0 8
49:dst 4 3 7 1 45 40 - - - 32 0 8> <31
4
0
18
49
4
-
-> - - 8 0 136>
<50:_ldmst_clear_byte 4 2 4 2 6:67 41 - <32
4
0
23
55
1
-
-
51:size 4 3 7 1 38 3 - - - 16 0 8
52:dst 4 3 7 1 51 7 - - - 32 0 8> <33
4
0
23
55
4
-
-> - - 8 0 136>
<53:_ldmst_copy_byte 4 2 4 2 6:80 36 - <34
4
0
22
66
1
-
-
54:size 4 3 7 1 37 3 - - - 16 0 8
55:dst 4 3 7 1 50 7 - - - 32 0 8
56:src 4 3 7 1 62 7 - - - 32 0 8> <35
4
0
22
66
4
-
-> - - 8 0 136>
<57:_c_init 4 1 3 2 6:243 24 - <36
4
0
13
18
1
-
-> <37
4
0
13
18
4
-
-> - - 8 0 0>
58:__libc_references 4 1 2 2 1:1:..\..\..\cinit.c:1 16 16 - - - - 8 0 1056> 1 4
BEGIN : 0 1
FUNC 6:27:..\..\..\cinit.c:2 4 <38
3
0
1:28
:33
24
-
-> 36 <39
2
0
:28
:33
-
-
-> 38 <40
3
0
:28
:33
25
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :28 0 38 profData=0,0,0,1,0,0,0,0,1,0
EXIT :33 0 38 profData=0,0,0,1,0,0,0,0,1,0
FUNC 7:36 4 <41
3
0
1:37
:44
26
-
-> 40 <42
2
0
:37
:44
-
-
-> 41 <43
3
0
:37
:44
27
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :37 0 41 profData=0,0,0,1,0,0,0,0,1,0
EXIT :44 0 41 profData=0,0,0,1,0,0,0,0,1,0
FUNC 7:47 4 <44
3
0
1:48
:53
28
-
-> 44 <45
2
0
:48
:53
-
-
-> 44 <46
3
0
:48
:53
29
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :48 0 44 profData=0,0,0,1,0,0,0,0,1,0
EXIT :53 0 44 profData=0,0,0,1,0,0,0,0,1,0
FUNC 7:56 4 <47
3
0
1:57
:64
30
-
-> 47 <48
2
0
:57
:64
-
-
-> 47 <49
3
0
:57
:64
31
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :57 0 47 profData=0,0,0,1,0,0,0,0,1,0
EXIT :64 0 47 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:67 4 <50
3
0
1:68
:77
32
<51
3
0
9:72
:76
50
-
->
-> 50 <52
2
0
1:68
:77
-
-
-> 50 <53
3
0
:68
:77
33
<54
3
0
9:72
:76
53
-
->
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY 1:68 0 50 profData=0,0,0,1,0,0,0,0,1,0
EXIT :77 0 50 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:80 4 <55
3
0
1:81
:93
34
<56
3
0
9:86
:92
55
-
->
-> 53 <57
2
0
1:81
:93
-
-
-> 55 <58
3
0
:81
:93
35
<59
3
0
9:86
:92
58
-
->
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY 1:81 0 55 profData=0,0,0,1,0,0,0,0,1,0
EXIT :93 0 55 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:96 0 <60
3
4
1:97
:240
22
<61
3
0
33:120
:132
60
<62
3
0
25:147
:161
60
<63
3
0
41:177
:185
60
<64
3
0
:187
:199
60
<65
3
0
33:209
:216
60
<66
3
0
:218
:232
60
<67
3
0
1:48
:53
62
<68
3
0
18:47
50
60
<69
3
0
1:57
:64
62
<70
3
0
18:56
49
60
<71
3
0
1:57
:64
66
<72
3
0
18:56
49
60
<73
3
0
1:28
:33
60
<74
3
0
16:27
60
60
<75
3
0
1:37
:44
61
<76
3
0
17:36
59
60
<77
3
0
1:37
:44
64
<78
3
0
17:36
59
60
<79
3
0
1:68
:77
65
<80
3
0
9:72
:76
79
<81
3
0
23:67
55
60
<82
3
0
1:68
:77
66
<83
3
0
9:72
:76
82
<84
3
0
23:67
55
60
<85
3
0
1:81
:93
63
<86
3
0
9:86
:92
85
<87
3
0
22:80
66
60
<88
3
0
1:81
:93
60
<89
3
0
9:86
:92
88
<90
3
0
22:80
66
60
-
->
56
59:wdst 4 3 7 1 31:87 45:5,-,-,3,0,- - - - 32 0 8>
55
60:shl 4 3 7 1 22:82 3 - - - 16 0 8
61:mask 4 3 7 1 :83 3 - - - 16 0 8>
->
56
62:wdst 4 3 7 1 31:87 45 - - - 32 0 8>
55
63:shl 4 3 7 1 22:82 3 - - - 16 0 8
64:mask 4 3 7 1 :83 3 - - - 16 0 8>
->
51
65:wdst 4 3 7 1 31:73 45 - - - 32 0 8>
50
66:mask 4 3 7 1 22:69 3 - - - 16 0 8>
->
51
67:wdst 4 3 7 1 31:73 45 - - - 32 0 8>
50
68:mask 4 3 7 1 22:69 3 - - - 16 0 8>
->
41>
->
41>
->
38>
->
47>
->
47>
->
44>
-
69:bytes_left 4 3 7 1 54:219 3 - - - 16 0 8>
->
-
70:bytes_left 4 3 7 1 62:188 3 - - - 16 0 8>
->
-
71:bytes_left 4 3 7 1 46:148 3 - - - 16 0 8>
-
72:bytes_left 4 3 7 1 54:121 3 - - - 16 0 8>
-
73:action 4 3 7 1 22:98 3 - - - 16 0 8
74:dst 4 3 7 1 15:99 7 - - - 32 0 8
75:src 4 3 7 1 :100 7 - - - 32 0 8
76:size 4 3 7 1 22:101 3 - - - 16 0 8
77:._clear_byte.size 4 3 7 1 6:96 3 - - - 16 0 8
78:._clear_byte.dst 4 3 7 1 : 7 - - - 32 0 8
79:._clear_word.size 4 3 7 1 : 3 - - - 16 0 8
80:._clear_word.dst 4 3 7 1 : 40 - - - 32 0 8
81:._copy_byte.size 4 3 7 1 : 3 - - - 16 0 8
82:._copy_byte.dst 4 3 7 1 : 7 - - - 32 0 8
83:._copy_byte.src 4 3 7 1 : 7 - - - 32 0 8
84:._copy_word.size 4 3 7 1 : 3 - - - 16 0 8
85:._copy_word.dst 4 3 7 1 : 40 - - - 32 0 8
86:._copy_word.src 4 3 7 1 : 40 - - - 32 0 8
87:._ldmst_clear_byte.size 4 3 7 1 : 3 - - - 16 0 8
88:._ldmst_clear_byte.dst 4 3 7 1 : 7 - - - 32 0 8
89:._ldmst_copy_byte.size 4 3 7 1 : 3 - - - 16 0 8
90:._ldmst_copy_byte.dst 4 3 7 1 : 7 - - - 32 0 8
91:._ldmst_copy_byte.src 4 3 7 1 : 7 - - - 32 0 8
92:.c1 4 3 7 1 : 3 - - - 16 0 264
<93:.c2 4 3 7 1 : <46:5,-,-,<47:1,char,4>,0,-> - - - 8 0 264>
94:.c3 4 3 7 1 : 5 - - - 16 0 264
95:.c4 4 3 7 1 : 3 - - - 16 0 264> 33 <91
2
0
1:97
:240
-
-
-> 60 <92
3
0
:97
:240
23
<93
3
0
33:120
:132
92
<94
3
0
25:147
:161
92
<95
3
0
41:177
:185
92
<96
3
0
:187
:199
92
<97
3
0
33:209
:216
92
<98
3
0
:218
:232
92
<99
3
0
1:48
:53
92
<100
3
0
18:47
50
92
<101
3
0
1:57
:64
92
<102
3
0
18:56
49
92
<103
3
0
1:57
:64
92
<104
3
0
18:56
49
92
<105
3
0
1:28
:33
92
<106
3
0
16:27
60
92
<107
3
0
1:37
:44
92
<108
3
0
17:36
59
92
<109
3
0
1:37
:44
92
<110
3
0
17:36
59
92
<111
3
0
1:68
:77
92
<112
3
0
9:72
:76
111
<113
3
0
23:67
55
92
<114
3
0
1:68
:77
92
<115
3
0
9:72
:76
114
<116
3
0
23:67
55
92
<117
3
0
1:81
:93
92
<118
3
0
9:86
:92
117
<119
3
0
22:80
66
92
<120
3
0
1:81
:93
92
<121
3
0
9:86
:92
120
<122
3
0
22:80
66
92
-
->
59>
58>
->
59>
58>
->
54>
53>
->
54>
53>
->
43>
->
43>
->
40>
->
49>
->
49>
->
46>
->
->
->
->
->
->
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY 1:97 0 60 profData=0,0,0,1,0,0,0,0,1,0
LABEL 19:103 0 60 -1 loopinfo=1,0,11,0,1
LABEL 41:228 0 66 -2 loopinfo=1,1,10,0,1
LABEL 33:217 0 60 -3 loopinfo=1,2,9,0,1
LABEL 30:206 0 60 -4 loopinfo=1,3,8,0,1
LABEL 25 0 60 -5 loopinfo=1,4,7,0,2
LABEL 33:201 0 60 -6 loopinfo=1,5,6,0,2
LABEL 17:163 0 60 -7 loopinfo=1,6,5,0,1
LABEL 33:157 0 62 -8 loopinfo=1,7,4,0,1
LABEL 25:146 0 60 -9 loopinfo=1,8,3,0,1
LABEL 17:139 0 60 -10 loopinfo=1,9,2,0,1
LABEL 25:134 0 60 -11 loopinfo=1,10,1,0,1
BLOCK 43:105 0 60 profData=0,0,0,1,1,0,0,0,4.8e+003,4.8e+003
STAT : 0 60
ST 24 0 - 14
OBJ 17 0 - 3 73
LD 31 0 - 4
CONV : 0 - 3
LD 26 0 - 30
OBJ : 0 - 33 34
STAT 33:106 0 60
ST 21 0 - 14
OBJ 17 0 - 7 74
CONV 28 0 - 8
LD : 0 - 13
CONV : 0 - 12
ADD : 0 - 8
CONV : 0 - 8
LD 23 0 - 30
OBJ : 0 - 33 34
CON 28 0 - 6 4
STAT 33:107 0 60
ST 21 0 - 14
OBJ 17 0 - 7 75
CONV 28 0 - 8
LD : 0 - 13
CONV : 0 - 12
ADD : 0 - 8
CONV : 0 - 8
LD 23 0 - 30
OBJ : 0 - 33 34
CON 28 0 - 6 8
STAT 35:108 0 60
ST 22 0 - 14
OBJ 17 0 - 3 76
LD 29 0 - 4
CONV : 0 - 3
ADD : 0 - 8
CONV : 0 - 8
LD 24 0 - 30
OBJ : 0 - 33 34
CON 29 0 - 6 c
STAT 24:109 0 60
ST 22 0 - 14
OBJ 17 0 - 33 34
ADD 22 0 - 30
LD 17 0 - 30
OBJ : 0 - 33 34
CON 22 0 - 6 10
JUMPF 17:110 0 60 19 profData=0,1,1,0,0,0,4,50,0,0
EQ 29 0 - 48:1,_Bool,- profData=0,1,1,0,0,0,-1,50,0,0
LD 22 0 - 4
OBJ : 0 - 3 73
CON 32 0 - 4 1
BLOCK 25:112 0 60 profData=0,0,0,1,1,0,0,0,4.6e+003,4.6e+003
STAT : 0 60
ST 49 0 - 14
OBJ : 0 - 3 92
AND : 0 - 4
CONV 31 32 - 4
LD 45 0 - 8
OBJ : 0 - 7 74
CON 51 0 - 4 1
JUMPF 25 0 60 17 profData=0,1,1,0,0,0,38,50,0,0
EQ 56 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 49 0 - 4
OBJ : 0 - 3 92
AND 78 0 - 4
CONV 60 32 - 4
LD 74 0 - 8
OBJ : 0 - 7 75
CON 80 0 - 4 1
BLOCK 33:114 0 60 profData=0,0,0,1,1,0,0,0,2.9e+003,2.9e+003
JUMPF : 0 60 12 profData=0,1,1,0,0,0,55,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 56 0 - 4
OBJ : 0 - 3 92
CON 33 0 - 4 0
BLOCK 56:116 0 60 profData=0,0,0,1,1,0,0,0,1.3e+003,1.3e+003
STAT : 0 60
ST 48 0 - 14
LD 42 0 - 8
OBJ : 0 - 7 74
LD 50 0 - 9
LD 51 0 - 8
OBJ : 0 - 7 75
STAT 54 0 60
ST : 0 - 14
OBJ 51 0 - 7 75
ADD 54 0 - 8
LD 51 0 - 8
OBJ : 0 - 7 75
CON 54 0 - 6 1
STAT 45 0 60
ST : 0 - 14
OBJ 42 0 - 7 74
ADD 45 0 - 8
LD 42 0 - 8
OBJ : 0 - 7 74
CON 45 0 - 6 1
STAT 47:117 0 60
ST 45 0 - 14
OBJ 41 0 - 3 76
SUB 45 0 - 4
LD 41 0 - 4
OBJ : 0 - 3 76
CON 45 0 - 4 1
NOJUMP 47 0 60 profData=0,0,1,0,0,0,0,0,0,0
LABEL 33:114 0 60 12
BLOCK :119 0 60 profData=0,0,0,1,1,0,0,0,2.9e+003,2.9e+003
JUMPF : 0 60 16 profData=0,1,1,0,0,0,43,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 38 0 - 4
OBJ : 0 - 3 76
CON 33 0 - 4 0
BLOCK 65:121 0 61 profData=0,0,0,1,1,0,0,0,1.6e+003,1.6e+003
STAT : 0 61
ST : 1 - 14
OBJ 54 0 - 3 72
AND 72 0 - 4
LD 67 0 - 4
OBJ : 0 - 3 76
CON 74 0 - 4 3
STAT 50:123 0 61
ST 46 0 - 14
OBJ 41 0 - 3 76
SHR : 0 - 4
LD : 0 - 4
OBJ : 0 - 3 76
CON 49 0 - 6 2
JUMPF 41:125 0 61 15 profData=0,1,1,0,0,0,20,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 46 0 - 4
OBJ : 0 - 3 76
CON 41 0 - 4 0
BLOCK 106:127 0 61 profData=0,0,0,1,1,0,0,0,1.3e+003,1.3e+003
STAT : 0 61
ST 76 0 - 14
OBJ : 0 - 3 84
LD : 0 - 4
OBJ : 0 - 3 76
STAT 106 0 61
ST 82 0 - 14
OBJ : 0 - 40 85
CONV : 32 - 5
LD 89 0 - 8
OBJ : 0 - 7 74
STAT 106 0 61
ST 94 0 - 14
OBJ : 0 - 40 86
CONV : 32 - 5
LD 101 0 - 8
OBJ : 0 - 7 75
NOJUMP 106 0 61 profData=0,0,1,0,0,0,0,0,0,0
LABEL 27:41 0 75 -13 loopinfo=1,11,0,0,0,84,-4,-1,0,0,-1,0,0,0,1,0,0,1
BLOCK 32:40 0 75 profData=0,0,0,1,1,0,0,0,1.1e+004,1.1e+004
STAT : 0 75
ST 24 0 - 14
LD 18 0 - 5
OBJ 82:127 0 - 40 85
LD 26:40 0 - 6
LD 27 0 - 5
OBJ 94:127 0 - 40 86
STAT 30:40 0 75
ST : 0 - 14
OBJ 94:127 0 - 40 86
ADD 30:40 0 - 5
LD 27 0 - 5
OBJ 94:127 0 - 40 86
CON 30:40 0 - 6 4
STAT 21 0 75
ST : 0 - 14
OBJ 82:127 0 - 40 85
ADD 21:40 0 - 5
LD 18 0 - 5
OBJ 82:127 0 - 40 85
CON 21:40 0 - 6 4
STAT 19:41 0 75
ST : 0 - 14
OBJ 76:127 0 - 3 84
SUB 19:41 0 - 4
LD 21 0 - 4
OBJ 76:127 0 - 3 84
CON 19:41 0 - 4 1
JUMPT 27 0 75 -13 profData=0,1,1,0,0,0,88,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 21 0 - 4
OBJ 76:127 0 - 3 84
CON 27:41 0 - 4 0
BLOCK 106:127 0 61 profData=0,0,0,1,1,0,0,0,1.3e+003,1.3e+003
STAT : 0 61
ST 53 0 - 14
OBJ 49 0 - 7 74
CONV 55 32 - 8
LD 16:43 0 - 5
OBJ 82:127 0 - 40 85
STAT 62:128 0 61
ST 53 0 - 14
OBJ 49 0 - 7 75
ADD 53 0 - 8
LD 49 0 - 8
OBJ : 0 - 7 75
SHL 56 0 - 4
LD : 0 - 4
OBJ : 0 - 3 76
CON 61 0 - 6 2
NOJUMP 62 0 61 profData=0,0,1,0,0,0,0,0,0,0
LABEL 41:125 0 61 15
BLOCK 58:131 0 61 profData=0,0,0,1,1,0,0,0,1.6e+003,1.6e+003
STAT : 0 61
ST 46 0 - 14
OBJ 41 0 - 3 76
LD 48 0 - 4
OBJ : 0 - 3 72
NOJUMP 58 0 61 profData=0,0,1,0,0,0,0,0,0,0
LABEL 33:119 0 60 16
LABEL 25:112 0 60 17
BLOCK :134 0 60 profData=0,0,0,1,1,0,0,0,4.6e+003,4.6e+003
JUMPF : 0 60 -11 profData=0,1,1,0,0,0,65,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 30 0 - 4
OBJ : 0 - 3 76
CON 25 0 - 4 0
BLOCK 61:136 0 60 profData=0,0,0,1,1,0,0,0,1.6e+003,1.6e+003
STAT : 0 60
ST 45 0 - 14
OBJ : 0 - 3 81
LD : 0 - 4
OBJ : 0 - 3 76
STAT 61 0 60
ST 51 0 - 14
OBJ : 0 - 7 82
LD : 0 - 8
OBJ : 0 - 7 74
STAT 61 0 60
ST 56 0 - 14
OBJ : 0 - 7 83
LD : 0 - 8
OBJ : 0 - 7 75
NOJUMP 61 0 60 profData=0,0,1,0,0,0,0,0,0,0
LABEL 27:32 0 73 -18 loopinfo=1,10,0,0,0,81,-4,-1,0,0,-1,0,0,0,1,0,0,1
BLOCK 32:31 0 73 profData=0,0,0,1,1,0,0,0,1.3e+004,1.3e+004
STAT : 0 73
ST 24 0 - 14
LD 18 0 - 8
OBJ 51:136 0 - 7 82
LD 26:31 0 - 9
LD 27 0 - 8
OBJ 56:136 0 - 7 83
STAT 30:31 0 73
ST : 0 - 14
OBJ 56:136 0 - 7 83
ADD 30:31 0 - 8
LD 27 0 - 8
OBJ 56:136 0 - 7 83
CON 30:31 0 - 6 1
STAT 21 0 73
ST : 0 - 14
OBJ 51:136 0 - 7 82
ADD 21:31 0 - 8
LD 18 0 - 8
OBJ 51:136 0 - 7 82
CON 21:31 0 - 6 1
STAT 19:32 0 73
ST : 0 - 14
OBJ 45:136 0 - 3 81
SUB 19:32 0 - 4
LD 21 0 - 4
OBJ 45:136 0 - 3 81
CON 19:32 0 - 4 1
JUMPT 27 0 73 -18 profData=0,1,1,0,0,0,88,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 21 0 - 4
OBJ 45:136 0 - 3 81
CON 27:32 0 - 4 0
BLOCK 61:136 0 60 profData=0,0,0,1,1,0,0,0,1.6e+003,1.6e+003
JUMP 25:134 0 60 -10 profData=0,0,1,0,0,0,0,100,0,0
LABEL 17:110 0 60 19
BLOCK 22:139 0 60 profData=0,0,0,1,1,0,0,0,1.9e+002,1.9e+002
JUMPF : 0 60 25 profData=0,1,1,0,0,0,4,50,0,0
EQ 34 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 27 0 - 4
OBJ : 0 - 3 73
CON 37 0 - 4 2
BLOCK 25:141 0 60 profData=0,0,0,1,1,0,0,0,1.8e+002,1.8e+002
STAT : 0 60
ST 48 0 - 14
OBJ : 0 - 3 92
AND : 0 - 4
CONV 30 32 - 4
LD 44 0 - 8
OBJ : 0 - 7 74
CON 50 0 - 4 1
JUMPF 25 0 60 20 profData=0,1,1,0,0,0,55,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 48 0 - 4
OBJ : 0 - 3 92
CON 25 0 - 4 0
BLOCK 43:143 0 60 profData=0,0,0,1,1,0,0,0,83,83
STAT : 0 60
ST 42 0 - 14
OBJ : 0 - 46 93
CON : 0 - 47 0
STAT 43 0 60
ST 40 0 - 14
LD 34 0 - 8
OBJ : 0 - 7 74
LD 42 0 - 47
OBJ : 0 - 46 93
STAT 37 0 60
ST : 0 - 14
OBJ 34 0 - 7 74
ADD 37 0 - 8
LD 34 0 - 8
OBJ : 0 - 7 74
CON 37 0 - 6 1
STAT 39:144 0 60
ST 37 0 - 14
OBJ 33 0 - 3 76
SUB 37 0 - 4
LD 33 0 - 4
OBJ : 0 - 3 76
CON 37 0 - 4 1
NOJUMP 39 0 60 profData=0,0,1,0,0,0,0,0,0,0
LABEL 25:141 0 60 20
BLOCK :146 0 60 profData=0,0,0,1,1,0,0,0,1.8e+002,1.8e+002
JUMPF : 0 60 -9 profData=0,1,1,0,0,0,85,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 30 0 - 4
OBJ : 0 - 3 76
CON 25 0 - 4 0
BLOCK 57:148 0 62 profData=0,0,0,1,1,0,0,0,28,28
STAT : 0 62
ST : 1 - 14
OBJ 46 0 - 3 71
AND 64 0 - 4
LD 59 0 - 4
OBJ : 0 - 3 76
CON 66 0 - 4 3
STAT 42:150 0 62
ST 38 0 - 14
OBJ 33 0 - 3 76
SHR : 0 - 4
LD : 0 - 4
OBJ : 0 - 3 76
CON 41 0 - 6 2
JUMPF 33:152 0 62 23 profData=0,1,1,0,0,0,20,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 38 0 - 4
OBJ : 0 - 3 76
CON 33 0 - 4 0
BLOCK 87:154 0 62 profData=0,0,0,1,1,0,0,0,22,22
STAT : 0 62
ST 69 0 - 14
OBJ : 0 - 3 79
LD : 0 - 4
OBJ : 0 - 3 76
STAT 87 0 62
ST 75 0 - 14
OBJ : 0 - 40 80
CONV : 32 - 5
LD 82 0 - 8
OBJ : 0 - 7 74
STAT 87 0 69
ST : 0 - 14
OBJ : 0 - 5 94
CON 26:60 0 - 6 0
NOJUMP 87:154 0 62 profData=0,0,1,0,0,0,0,0,0,0
LABEL 27:61 0 69 -21 loopinfo=1,8,0,0,0,79,-4,-1,0,0,-1,0,0,0,1,0,0,1
BLOCK :60 0 69 profData=0,0,0,1,1,0,0,0,1.8e+002,1.8e+002
STAT : 0 69
ST 24 0 - 14
LD 18 0 - 5
OBJ 75:154 0 - 40 80
LD 26:60 0 - 6
OBJ : 0 - 5 94
STAT 21 0 69
ST : 0 - 14
OBJ 75:154 0 - 40 80
ADD 21:60 0 - 5
LD 18 0 - 5
OBJ 75:154 0 - 40 80
CON 21:60 0 - 6 4
STAT 19:61 0 69
ST : 0 - 14
OBJ 69:154 0 - 3 79
SUB 19:61 0 - 4
LD 21 0 - 4
OBJ 69:154 0 - 3 79
CON 19:61 0 - 4 1
JUMPT 27 0 69 -21 profData=0,1,1,0,0,0,88,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 21 0 - 4
OBJ 69:154 0 - 3 79
CON 27:61 0 - 4 0
BLOCK 87:154 0 62 profData=0,0,0,1,1,0,0,0,22,22
STAT : 0 62
ST 45 0 - 14
OBJ 41 0 - 7 74
CONV 47 32 - 8
LD 16:63 0 - 5
OBJ 75:154 0 - 40 80
NOJUMP 87 0 62 profData=0,0,1,0,0,0,0,0,0,0
LABEL 33:152 0 62 23
BLOCK :157 0 62 profData=0,0,0,1,1,0,0,0,28,28
JUMPF : 0 62 -8 profData=0,1,1,0,0,0,65,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 38 0 - 4
OBJ : 0 - 3 71
CON 33 0 - 4 0
BLOCK 71:159 0 60 profData=0,0,0,1,1,0,0,0,9.7,9.7
STAT : 0 62
ST 54 0 - 14
OBJ : 0 - 3 77
LD : 0 - 4
OBJ : 0 - 3 71
STAT 71 0 62
ST 66 0 - 14
OBJ : 0 - 7 78
LD : 0 - 8
OBJ : 0 - 7 74
STAT 71 0 60
ST : 0 - 14
OBJ : 0 - 46 93
CON 42:143 0 - 47 0
NOJUMP 71:159 0 62 profData=0,0,1,0,0,0,0,0,0,0
LABEL 27:52 0 67 -24 loopinfo=1,7,0,0,0,77,-4,-1,0,0,-1,0,0,0,1,0,0,1
BLOCK :51 0 67 profData=0,0,0,1,1,0,0,0,81,81
STAT : 0 67
ST 24 0 - 14
LD 18 0 - 8
OBJ 66:159 0 - 7 78
LD 26:51 0 - 47
OBJ : 0 - 46 93
STAT 21 0 67
ST : 0 - 14
OBJ 66:159 0 - 7 78
ADD 21:51 0 - 8
LD 18 0 - 8
OBJ 66:159 0 - 7 78
CON 21:51 0 - 6 1
STAT 19:52 0 67
ST : 0 - 14
OBJ 54:159 0 - 3 77
SUB 19:52 0 - 4
LD 21 0 - 4
OBJ 54:159 0 - 3 77
CON 19:52 0 - 4 1
JUMPT 27 0 67 -24 profData=0,1,1,0,0,0,88,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 21 0 - 4
OBJ 54:159 0 - 3 77
CON 27:52 0 - 4 0
BLOCK 71:159 0 60 profData=0,0,0,1,1,0,0,0,9.7,9.7
JUMP 25:146 0 60 -7 profData=0,0,1,0,0,0,0,100,0,0
LABEL 22:139 0 60 25
BLOCK :163 0 60 profData=0,0,0,1,1,0,0,0,7.7,7.7
JUMPF : 0 60 41 profData=0,1,1,0,0,0,13,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
SHR 34 0 - 4
LD 27 0 - 4
OBJ : 0 - 3 73
CON 37 0 - 6 10
CON 22 0 - 4 0
BLOCK 25:172 0 60 profData=0,0,0,1,1,0,0,0,6.7,6.7
JUMPF : 0 60 34 profData=0,1,1,0,0,0,6,50,0,0
EQ 45 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
AND 38 0 - 4
LD 31 0 - 4
OBJ : 0 - 3 73
CON 40 0 - 4 3
CON 48 0 - 4 1
BLOCK 33:174 0 60 profData=0,0,0,1,1,0,0,0,6.3,6.3
STAT : 0 60
ST 57 0 - 14
OBJ : 0 - 3 95
AND : 0 - 4
CONV 39 32 - 4
LD 53 0 - 8
OBJ : 0 - 7 74
CON 59 0 - 4 3
JUMPF 33 0 60 32 profData=0,1,1,0,0,0,38,50,0,0
EQ 64 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 57 0 - 4
OBJ : 0 - 3 95
AND 86 0 - 4
CONV 68 32 - 4
LD 82 0 - 8
OBJ : 0 - 7 75
CON 88 0 - 4 3
BLOCK 41:176 0 60 profData=0,0,0,1,1,0,0,0,3.9,3.9
JUMPF : 0 60 27 profData=0,1,1,0,0,0,20,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 64 0 - 4
OBJ : 0 - 3 95
CON 41 0 - 4 0
BLOCK 65:178 0 85 profData=0,0,0,1,1,0,0,0,3.1,3.1
STAT 81:180 0 63
ST 67 0 - 14
OBJ : 0 - 3 89
LD 85:178 0 - 4
OBJ : 0 - 3 95
STAT 81:180 0 63
ST 71 0 - 14
OBJ : 0 - 7 90
LD : 0 - 8
OBJ : 0 - 7 74
STAT 81 0 63
ST 76 0 - 14
OBJ : 0 - 7 91
LD : 0 - 8
OBJ : 0 - 7 75
STAT 27:82 0 85
ST : 1 - 14
OBJ 22 0 - 3 63
LD 47 0 - 4
OBJ : 0 - 3 95
STAT 27:83 0 85
ST : 1 - 14
OBJ 22 0 - 3 64
CONV 29 0 - 4
XOR : 0 - 6
SHL 36 0 - 6
CON 31 0 - 6 ff
SHL 39 0 - 4
LD 47:82 0 - 4
OBJ : 0 - 3 95
CON 43:83 0 - 6 3
CON 29 0 - 6 -1
NOJUMP 27 0 85 profData=0,0,1,0,0,0,0,0,0,0
LABEL :92 0 85 -26 loopinfo=1,6,0,0,0,89,-6,-1,0,0,-1,0,0,0,1,0,0,1
BLOCK 36:87 0 86 profData=0,0,0,1,1,0,0,0,26,26
STAT : 0 86
ST : 1 - 14
OBJ 31 0 - 45 62
CONV 38 32 - 3
AND 55 0 - 4
CONV : 32 - 4
LD 69 0 - 8
OBJ 71:180 0 - 7 90
CON 81:87 0 - 4 fffffffc
STAT 72 0 86
ST : 0 - 14
OBJ 71:180 0 - 7 90
ADD 72:87 0 - 8
LD 69 0 - 8
OBJ 71:180 0 - 7 90
CON 72:87 0 - 6 1
STAT 61:88 0 86
ST 23 0 - 14
LD 18 0 - 3
OBJ : 0 - 45 62
OR 40 0 - 4
AND 32 0 - 4
LD 26 0 - 4
LD 27 0 - 3
OBJ : 0 - 45 62
LD 34 0 - 4
OBJ : 0 - 3 64
CONV 50 0 - 4
SHL : 0 - 6
CONV 43 0 - 6
LD : 0 - 9
LD 44 0 - 8
OBJ 76:180 0 - 7 91
SHL 54:88 0 - 4
LD : 0 - 4
OBJ : 0 - 3 63
CON 58 0 - 6 3
STAT 47 0 86
ST : 0 - 14
OBJ 76:180 0 - 7 91
ADD 47:88 0 - 8
LD 44 0 - 8
OBJ 76:180 0 - 7 91
CON 47:88 0 - 6 1
STAT 40:89 0 86
ST 22 0 - 14
OBJ 17 0 - 3 64
ICALL 29 8 - 4 <>
OBJ 24 0 - 26 28
ARG 35 0 - 14
LD 31 0 - 4
OBJ : 0 - 3 64
ARG 39 0 - 14
CON 37 0 - 4 8
NIL 39 0 - 14
STAT 27:91 0 86
ST 21 0 - 14
OBJ 17 0 - 3 63
AND 21 0 - 4
ADD 20:90 0 - 4
LD 17 0 - 4
OBJ : 0 - 3 63
CON 20 0 - 4 1
CON 24:91 0 - 4 3
STAT 19:92 0 85
ST : 0 - 14
OBJ 67:180 0 - 3 89
SUB 19:92 0 - 4
LD 21 0 - 4
OBJ 67:180 0 - 3 89
CON 19:92 0 - 4 1
JUMPT 27 0 85 -26 profData=0,1,1,0,0,0,88,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 21 0 - 4
OBJ 67:180 0 - 3 89
CON 27:92 0 - 4 0
BLOCK 65:178 0 63 profData=0,0,0,1,1,0,0,0,3.1,3.1
STAT 58:182 0 63
ST 53 0 - 14
OBJ 49 0 - 7 74
ADD 53 0 - 8
LD 49 0 - 8
OBJ : 0 - 7 74
LD 85:178 0 - 4
OBJ : 0 - 3 95
STAT 58:183 0 63
ST 53 0 - 14
OBJ 49 0 - 7 75
ADD 53 0 - 8
LD 49 0 - 8
OBJ : 0 - 7 75
LD 85:178 0 - 4
OBJ : 0 - 3 95
STAT 59:184 0 63
ST 54 0 - 14
OBJ 49 0 - 3 76
SUB 54 0 - 4
LD 49 0 - 4
OBJ : 0 - 3 76
LD 85:178 0 - 4
OBJ : 0 - 3 95
NOJUMP 59:184 0 63 profData=0,0,1,0,0,0,0,0,0,0
LABEL 41:176 0 60 27
BLOCK :186 0 60 profData=0,0,0,1,1,0,0,0,3.9,3.9
JUMPF : 0 60 31 profData=0,1,1,0,0,0,43,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 46 0 - 4
OBJ : 0 - 3 76
CON 41 0 - 4 0
BLOCK 73:188 0 64 profData=0,0,0,1,1,0,0,0,2.2,2.2
STAT : 0 64
ST : 1 - 14
OBJ 62 0 - 3 70
AND 80 0 - 4
LD 75 0 - 4
OBJ : 0 - 3 76
CON 82 0 - 4 3
STAT 58:190 0 64
ST 54 0 - 14
OBJ 49 0 - 3 76
SHR : 0 - 4
LD : 0 - 4
OBJ : 0 - 3 76
CON 57 0 - 6 2
JUMPF 49:192 0 64 30 profData=0,1,1,0,0,0,20,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 54 0 - 4
OBJ : 0 - 3 76
CON 49 0 - 4 0
BLOCK 114:194 0 64 profData=0,0,0,1,1,0,0,0,1.8,1.8
STAT : 0 64
ST 84 0 - 14
OBJ : 0 - 3 84
LD : 0 - 4
OBJ : 0 - 3 76
STAT 114 0 64
ST 90 0 - 14
OBJ : 0 - 40 85
CONV : 32 - 5
LD 97 0 - 8
OBJ : 0 - 7 74
STAT 114 0 64
ST 102 0 - 14
OBJ : 0 - 40 86
CONV : 32 - 5
LD 109 0 - 8
OBJ : 0 - 7 75
NOJUMP 114 0 64 profData=0,0,1,0,0,0,0,0,0,0
LABEL 27:41 0 77 -28 loopinfo=1,6,0,0,0,84,-4,-1,0,0,-1,0,0,0,1,0,0,1
BLOCK 32:40 0 77 profData=0,0,0,1,1,0,0,0,15,15
STAT : 0 77
ST 24 0 - 14
LD 18 0 - 5
OBJ 90:194 0 - 40 85
LD 26:40 0 - 6
LD 27 0 - 5
OBJ 102:194 0 - 40 86
STAT 30:40 0 77
ST : 0 - 14
OBJ 102:194 0 - 40 86
ADD 30:40 0 - 5
LD 27 0 - 5
OBJ 102:194 0 - 40 86
CON 30:40 0 - 6 4
STAT 21 0 77
ST : 0 - 14
OBJ 90:194 0 - 40 85
ADD 21:40 0 - 5
LD 18 0 - 5
OBJ 90:194 0 - 40 85
CON 21:40 0 - 6 4
STAT 19:41 0 77
ST : 0 - 14
OBJ 84:194 0 - 3 84
SUB 19:41 0 - 4
LD 21 0 - 4
OBJ 84:194 0 - 3 84
CON 19:41 0 - 4 1
JUMPT 27 0 77 -28 profData=0,1,1,0,0,0,88,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 21 0 - 4
OBJ 84:194 0 - 3 84
CON 27:41 0 - 4 0
BLOCK 114:194 0 64 profData=0,0,0,1,1,0,0,0,1.8,1.8
STAT : 0 64
ST 61 0 - 14
OBJ 57 0 - 7 74
CONV 63 32 - 8
LD 16:43 0 - 5
OBJ 90:194 0 - 40 85
STAT 70:195 0 64
ST 61 0 - 14
OBJ 57 0 - 7 75
ADD 61 0 - 8
LD 57 0 - 8
OBJ : 0 - 7 75
SHL 64 0 - 4
LD : 0 - 4
OBJ : 0 - 3 76
CON 69 0 - 6 2
NOJUMP 70 0 64 profData=0,0,1,0,0,0,0,0,0,0
LABEL 49:192 0 64 30
BLOCK 66:198 0 64 profData=0,0,0,1,1,0,0,0,2.2,2.2
STAT : 0 64
ST 54 0 - 14
OBJ 49 0 - 3 76
LD 56 0 - 4
OBJ : 0 - 3 70
NOJUMP 66 0 64 profData=0,0,1,0,0,0,0,0,0,0
LABEL 41:186 0 60 31
LABEL 33:174 0 60 32
BLOCK :201 0 60 profData=0,0,0,1,1,0,0,0,6.3,6.3
JUMPF : 0 60 -6 profData=0,1,1,0,0,0,65,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 38 0 - 4
OBJ : 0 - 3 76
CON 33 0 - 4 0
BLOCK 75:203 0 88 profData=0,0,0,1,1,0,0,0,2.2,2.2
STAT : 0 60
ST 59 0 - 14
OBJ : 0 - 3 89
LD : 0 - 4
OBJ : 0 - 3 76
STAT 75 0 60
ST 65 0 - 14
OBJ : 0 - 7 90
LD : 0 - 8
OBJ : 0 - 7 74
STAT 75 0 60
ST 70 0 - 14
OBJ : 0 - 7 91
LD : 0 - 8
OBJ : 0 - 7 75
STAT 27:82 0 88
ST : 1 - 14
OBJ 22 0 - 3 60
AND 47 0 - 4
CONV 29 32 - 4
LD 65:203 0 - 8
OBJ : 0 - 7 74
CON 49:82 0 - 4 3
STAT 27:83 0 88
ST : 1 - 14
OBJ 22 0 - 3 61
CONV 29 0 - 4
XOR : 0 - 6
SHL 36 0 - 6
CON 31 0 - 6 ff
SHL 39 0 - 4
LD : 0 - 4
OBJ : 0 - 3 60
CON 43 0 - 6 3
CON 29 0 - 6 -1
NOJUMP 27 0 88 profData=0,0,1,0,0,0,0,0,0,0
LABEL :92 0 88 -33 loopinfo=1,5,0,0,0,89,-6,-1,0,0,-1,0,0,0,1,0,0,1
BLOCK 36:87 0 89 profData=0,0,0,1,1,0,0,0,18,18
STAT : 0 89
ST : 1 - 14
OBJ 31 0 - 45 59
CONV 38 32 - 3
AND 55 0 - 4
CONV : 32 - 4
LD 69 0 - 8
OBJ 65:203 0 - 7 90
CON 81:87 0 - 4 fffffffc
STAT 72 0 89
ST : 0 - 14
OBJ 65:203 0 - 7 90
ADD 72:87 0 - 8
LD 69 0 - 8
OBJ 65:203 0 - 7 90
CON 72:87 0 - 6 1
STAT 61:88 0 89
ST 23 0 - 14
LD 18 0 - 3
OBJ : 0 - 45 59
OR 40 0 - 4
AND 32 0 - 4
LD 26 0 - 4
LD 27 0 - 3
OBJ : 0 - 45 59
LD 34 0 - 4
OBJ : 0 - 3 61
CONV 50 0 - 4
SHL : 0 - 6
CONV 43 0 - 6
LD : 0 - 9
LD 44 0 - 8
OBJ 70:203 0 - 7 91
SHL 54:88 0 - 4
LD : 0 - 4
OBJ : 0 - 3 60
CON 58 0 - 6 3
STAT 47 0 89
ST : 0 - 14
OBJ 70:203 0 - 7 91
ADD 47:88 0 - 8
LD 44 0 - 8
OBJ 70:203 0 - 7 91
CON 47:88 0 - 6 1
STAT 40:89 0 89
ST 22 0 - 14
OBJ 17 0 - 3 61
ICALL 29 8 - 4 <>
OBJ 24 0 - 26 28
ARG 35 0 - 14
LD 31 0 - 4
OBJ : 0 - 3 61
ARG 39 0 - 14
CON 37 0 - 4 8
NIL 39 0 - 14
STAT 27:91 0 89
ST 21 0 - 14
OBJ 17 0 - 3 60
AND 21 0 - 4
ADD 20:90 0 - 4
LD 17 0 - 4
OBJ : 0 - 3 60
CON 20 0 - 4 1
CON 24:91 0 - 4 3
STAT 19:92 0 88
ST : 0 - 14
OBJ 59:203 0 - 3 89
SUB 19:92 0 - 4
LD 21 0 - 4
OBJ 59:203 0 - 3 89
CON 19:92 0 - 4 1
JUMPT 27 0 88 -33 profData=0,1,1,0,0,0,88,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 21 0 - 4
OBJ 59:203 0 - 3 89
CON 27:92 0 - 4 0
BLOCK 75:203 0 60 profData=0,0,0,1,1,0,0,0,2.2,2.2
JUMP 33:201 0 60 -5 profData=0,0,1,0,0,0,0,100,0,0
LABEL 25:172 0 60 34
BLOCK 30:206 0 60 profData=0,0,0,1,1,0,0,0,0.4,0.4
JUMPF : 0 60 -4 profData=0,1,1,0,0,0,90,50,0,0
EQ 50 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
AND 43 0 - 4
LD 36 0 - 4
OBJ : 0 - 3 73
CON 45 0 - 4 3
CON 53 0 - 4 2
BLOCK 33:208 0 60 profData=0,0,0,1,1,0,0,0,0.04,0.04
STAT : 0 60
ST 56 0 - 14
OBJ : 0 - 3 95
AND : 0 - 4
CONV 38 32 - 4
LD 52 0 - 8
OBJ : 0 - 7 74
CON 58 0 - 4 3
JUMPF 33 0 60 36 profData=0,1,1,0,0,0,20,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 56 0 - 4
OBJ : 0 - 3 95
CON 33 0 - 4 0
BLOCK 57:210 0 79 profData=0,0,0,1,1,0,0,0,0.032,0.032
STAT 69:212 0 65
ST 60 0 - 14
OBJ : 0 - 3 87
LD 77:210 0 - 4
OBJ : 0 - 3 95
STAT 69:212 0 65
ST 64 0 - 14
OBJ : 0 - 7 88
LD : 0 - 8
OBJ : 0 - 7 74
STAT 27:69 0 79
ST : 1 - 14
OBJ 22 0 - 3 68
CONV 29 0 - 4
XOR : 0 - 6
SHL 36 0 - 6
CON 31 0 - 6 ff
SHL 59 0 - 4
LD : 0 - 4
OBJ : 0 - 3 95
CON 66 0 - 6 3
CON 29 0 - 6 -1
NOJUMP 27 0 79 profData=0,0,1,0,0,0,0,0,0,0
LABEL :76 0 79 -35 loopinfo=1,3,0,0,0,87,-4,-1,0,0,-1,0,0,0,1,0,0,1
BLOCK 36:73 0 80 profData=0,0,0,1,1,0,0,0,0.27,0.27
STAT : 0 80
ST : 1 - 14
OBJ 31 0 - 45 67
CONV 38 32 - 3
AND 55 0 - 4
CONV : 32 - 4
LD 69 0 - 8
OBJ 64:212 0 - 7 88
CON 81:73 0 - 4 fffffffc
STAT 72 0 80
ST : 0 - 14
OBJ 64:212 0 - 7 88
ADD 72:73 0 - 8
LD 69 0 - 8
OBJ 64:212 0 - 7 88
CON 72:73 0 - 6 1
STAT 30:74 0 80
ST 23 0 - 14
LD 18 0 - 3
OBJ : 0 - 45 67
AND 23 0 - 4
LD 18 0 - 4
LD : 0 - 3
OBJ : 0 - 45 67
LD 26 0 - 4
OBJ : 0 - 3 68
STAT 40:75 0 80
ST 22 0 - 14
OBJ 17 0 - 3 68
ICALL 29 8 - 4 <>
OBJ 24 0 - 26 28
ARG 35 0 - 14
LD 31 0 - 4
OBJ : 0 - 3 68
ARG 39 0 - 14
CON 37 0 - 4 8
NIL 39 0 - 14
STAT 19:76 0 79
ST : 0 - 14
OBJ 60:212 0 - 3 87
SUB 19:76 0 - 4
LD 21 0 - 4
OBJ 60:212 0 - 3 87
CON 19:76 0 - 4 1
JUMPT 27 0 79 -35 profData=0,1,1,0,0,0,88,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 21 0 - 4
OBJ 60:212 0 - 3 87
CON 27:76 0 - 4 0
BLOCK 57:210 0 65 profData=0,0,0,1,1,0,0,0,0.032,0.032
STAT 50:214 0 65
ST 45 0 - 14
OBJ 41 0 - 7 74
ADD 45 0 - 8
LD 41 0 - 8
OBJ : 0 - 7 74
LD 77:210 0 - 4
OBJ : 0 - 3 95
STAT 51:215 0 65
ST 46 0 - 14
OBJ 41 0 - 3 76
SUB 46 0 - 4
LD 41 0 - 4
OBJ : 0 - 3 76
LD 77:210 0 - 4
OBJ : 0 - 3 95
NOJUMP 51:215 0 65 profData=0,0,1,0,0,0,0,0,0,0
LABEL 33:208 0 60 36
BLOCK :217 0 60 profData=0,0,0,1,1,0,0,0,0.04,0.04
JUMPF : 0 60 -3 profData=0,1,1,0,0,0,85,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 38 0 - 4
OBJ : 0 - 3 76
CON 33 0 - 4 0
BLOCK 65:219 0 66 profData=0,0,0,1,1,0,0,0,0.006,0.006
STAT : 0 66
ST : 1 - 14
OBJ 54 0 - 3 69
AND 72 0 - 4
LD 67 0 - 4
OBJ : 0 - 3 76
CON 74 0 - 4 3
STAT 50:221 0 66
ST 46 0 - 14
OBJ 41 0 - 3 76
SHR : 0 - 4
LD : 0 - 4
OBJ : 0 - 3 76
CON 49 0 - 6 2
JUMPF 41:223 0 66 39 profData=0,1,1,0,0,0,20,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 46 0 - 4
OBJ : 0 - 3 76
CON 41 0 - 4 0
BLOCK 95:225 0 66 profData=0,0,0,1,1,0,0,0,0.0048,0.0048
STAT : 0 66
ST 77 0 - 14
OBJ : 0 - 3 79
LD : 0 - 4
OBJ : 0 - 3 76
STAT 95 0 66
ST 83 0 - 14
OBJ : 0 - 40 80
CONV : 32 - 5
LD 90 0 - 8
OBJ : 0 - 7 74
STAT 95 0 69
ST : 0 - 14
OBJ : 0 - 5 94
CON 26:60 0 - 6 0
NOJUMP 95:225 0 66 profData=0,0,1,0,0,0,0,0,0,0
LABEL 27:61 0 71 -37 loopinfo=1,2,0,0,0,79,-4,-1,0,0,-1,0,0,0,1,0,0,1
BLOCK :60 0 71 profData=0,0,0,1,1,0,0,0,0.04,0.04
STAT : 0 71
ST 24 0 - 14
LD 18 0 - 5
OBJ 83:225 0 - 40 80
LD 26:60 0 - 6
OBJ : 0 - 5 94
STAT 21 0 71
ST : 0 - 14
OBJ 83:225 0 - 40 80
ADD 21:60 0 - 5
LD 18 0 - 5
OBJ 83:225 0 - 40 80
CON 21:60 0 - 6 4
STAT 19:61 0 71
ST : 0 - 14
OBJ 77:225 0 - 3 79
SUB 19:61 0 - 4
LD 21 0 - 4
OBJ 77:225 0 - 3 79
CON 19:61 0 - 4 1
JUMPT 27 0 71 -37 profData=0,1,1,0,0,0,88,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 21 0 - 4
OBJ 77:225 0 - 3 79
CON 27:61 0 - 4 0
BLOCK 95:225 0 66 profData=0,0,0,1,1,0,0,0,0.0048,0.0048
STAT : 0 66
ST 53 0 - 14
OBJ 49 0 - 7 74
CONV 55 32 - 8
LD 16:63 0 - 5
OBJ 83:225 0 - 40 80
NOJUMP 95 0 66 profData=0,0,1,0,0,0,0,0,0,0
LABEL 41:223 0 66 39
BLOCK :228 0 66 profData=0,0,0,1,1,0,0,0,0.006,0.006
JUMPF : 0 66 -2 profData=0,1,1,0,0,0,65,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 46 0 - 4
OBJ : 0 - 3 69
CON 41 0 - 4 0
BLOCK 85:230 0 82 profData=0,0,0,1,1,0,0,0,0.0021,0.0021
STAT : 0 66
ST 68 0 - 14
OBJ : 0 - 3 87
LD : 0 - 4
OBJ : 0 - 3 69
STAT 85 0 66
ST 80 0 - 14
OBJ : 0 - 7 88
LD : 0 - 8
OBJ : 0 - 7 74
STAT 27:69 0 82
ST : 1 - 14
OBJ 22 0 - 3 66
CONV 29 0 - 4
XOR : 0 - 6
SHL 36 0 - 6
CON 31 0 - 6 ff
SHL 59 0 - 4
AND : 0 - 4
CONV 41 32 - 4
LD 80:230 0 - 8
OBJ : 0 - 7 74
CON 61:69 0 - 4 3
CON 66 0 - 6 3
CON 29 0 - 6 -1
NOJUMP 27 0 82 profData=0,0,1,0,0,0,0,0,0,0
LABEL :76 0 82 -40 loopinfo=1,1,0,0,0,87,-4,-1,0,0,-1,0,0,0,1,0,0,1
BLOCK 36:73 0 83 profData=0,0,0,1,1,0,0,0,0.018,0.018
STAT : 0 83
ST : 1 - 14
OBJ 31 0 - 45 65
CONV 38 32 - 3
AND 55 0 - 4
CONV : 32 - 4
LD 69 0 - 8
OBJ 80:230 0 - 7 88
CON 81:73 0 - 4 fffffffc
STAT 72 0 83
ST : 0 - 14
OBJ 80:230 0 - 7 88
ADD 72:73 0 - 8
LD 69 0 - 8
OBJ 80:230 0 - 7 88
CON 72:73 0 - 6 1
STAT 30:74 0 83
ST 23 0 - 14
LD 18 0 - 3
OBJ : 0 - 45 65
AND 23 0 - 4
LD 18 0 - 4
LD : 0 - 3
OBJ : 0 - 45 65
LD 26 0 - 4
OBJ : 0 - 3 66
STAT 40:75 0 83
ST 22 0 - 14
OBJ 17 0 - 3 66
ICALL 29 8 - 4 <>
OBJ 24 0 - 26 28
ARG 35 0 - 14
LD 31 0 - 4
OBJ : 0 - 3 66
ARG 39 0 - 14
CON 37 0 - 4 8
NIL 39 0 - 14
STAT 19:76 0 82
ST : 0 - 14
OBJ 68:230 0 - 3 87
SUB 19:76 0 - 4
LD 21 0 - 4
OBJ 68:230 0 - 3 87
CON 19:76 0 - 4 1
JUMPT 27 0 82 -40 profData=0,1,1,0,0,0,88,50,0,0
NE : 0 - 48 profData=0,1,1,0,0,0,-1,50,0,0
LD 21 0 - 4
OBJ 68:230 0 - 3 87
CON 27:76 0 - 4 0
BLOCK 85:230 0 60 profData=0,0,0,1,1,0,0,0,0.0021,0.0021
JUMP 19:103 0 60 -1 profData=0,0,1,0,0,0,0,100,0,0
LABEL 22:163 0 60 41
EXIT 1:240 0 60 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:243 0 <123
3
0
1:244
:248
36
-
-> 57 <124
2
0
:244
:248
-
-
-> 123 <125
3
0
:244
:248
37
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :244 0 123 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 34:245 0 123 profData=0,0,0,1,1,0,0,0,1,1
STAT 31:247 0 123
CALL 22 8 - 14
OBJ 9 0 - 31 33
ARG 30 0 - 14
CONV 36:245 0 - 30
OBJ : 0 - 34 35
NIL 30:247 0 - 14
NOJUMP 31 0 123 profData=0,0,1,0,0,0,0,0,0,0
EXIT 1:248 0 123 profData=0,0,0,1,0,0,0,0,1,0
END :249 0 1
TAIL -:- 0 -
.
+               32545           1397159281 prof_io_use_dbg.mil
#!<mil>
# TASKING VX-toolset for TriCore: C compiler v99.9r9 Build 759
# options: --mil --core=tc1.6 -Rlibpct --section-name-with-symbol -N0 -O3 -g1 --global-type-checking --user-mode=user-0
# files: ..\..\..\prof_io_use_dbg.c
#!E__prof_block_entry
#!E__prof_func_entry
#!E__prof_func_entry2
#!E__prof_func_exit
#!E__prof_cleanup
#!E__prof_int_entry
#!E__prof_int_exit
#!E__get_return_address
#!G__prof_open
#!G__prof_write
#!G__prof_close
#!E__prof_init_real
#!G__prof_int2hex
#!G__prof_error
#!E_host_open
#!E_host_write
#!E_host_close
#!Emalloc
#!Efree
#!Estrlen
#!G__prof_init
#!E__libc_references
MIL - 0 - version=3:2:b646:a4b1:loopinfo,profData
HEAD - 0 -
MODULE <1:1:..\..\..\prof_io_use_dbg.c:<1
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=B,C,E,F,G,I,S,T
RUNTIME=B,C,M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=f
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=f
PACK=0
PREDEF=t
PROFENABLE=t
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=f
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=f
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=user-0
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=f
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=t
UM_USER1=f>> 0 <1
1
1
:
<:109:..\..\..\prof_io_use_dbg.c:<2
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=B,C,E,F,G,I,S,T
RUNTIME=B,C,M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=f
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=f
PACK=0
PREDEF=f
PROFENABLE=f
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=f
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=f
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=user-0
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=f
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=t
UM_USER1=f>>
-
-
-
<1:__wchar_t 4 3 1 6 :1:..\..\..\prof_io_use_dbg.c:1 <1:5,-,-,<2:1,int,<1:signed,-,<2:short,-,->>>,0,-> - - - 0 0 0>
<2:__size_t 4 3 1 6 : <3:5,-,-,<4:1,int,<3:unsigned,-,->>,0,-> - - - 0 0 0>
<3:__ssize_t 4 3 1 6 : <5:5,-,-,<6:1,int,<4:signed,-,->>,0,-> - - - 0 0 0>
4:__ptrdiff_t 4 3 1 6 : 5 - - - 0 0 0
5:__bounds_off_t 4 3 1 6 : 5 - - - 0 0 0
<6:__bounds_t 4 3 1 6 : <7:5,-,-,<8:5,-,-,<9:1,char,<5:.signed,-,->>,0,->,0,-> - - - 0 0 0>
7:__bounds_mem_t 4 3 1 6 : 7 - - - 0 0 0
<8:__ull 4 3 1 6 : <10:5,-,-,<11:1,int,<6:unsigned,-,<7:long,-,<8:long,-,->>>>,0,-> - - - 0 0 0>
<9:__prof_adm 4 3 1 6 : <12:5,-,-,<13:5,-,-,<14:1,void,->,0,->,0,-> - - - 0 0 0>
<10:__codeptr 4 3 1 6 : <15:5,-,-,<16:5,-,-,<17:7,-,-,14,0,->,0,->,0,-> - - - 0 0 0>
<11:__prof_block_entry 4 1 2 2 - <18:5,-,-,<19:7,-,<9:-,<20:5,-,-,12,0,->,->,14,2,->,0,-> - <2
4
0
-
-
1
-
-
12:admin 4 3 7 1 - 20 - - 9 32 0 0> <3
4
0
-
-
<4
1
19
:
:109:..\..\..\prof_io_use_dbg.c:2
-
-
-
<13:tm 2 3 8 3 8:62:..\..\..\..\ctc\bin\..\include\time.h 21:2,tm,-,-,0,13 - <5
5
0
1:63
:73
1
-
-
14:tm_sec 3 3 8 5 17:64 5 - 0 - - 16 0 0
15:tm_min 3 3 8 5 :65 5 - 20 - - 16 0 0
16:tm_hour 3 3 8 5 :66 5 - 40 - - 16 0 0
17:tm_mday 3 3 8 5 :67 5 - 60 - - 16 0 0
18:tm_mon 3 3 8 5 :68 5 - 80 - - 16 0 0
19:tm_year 3 3 8 5 :69 5 - a0 - - 16 0 0
20:tm_wday 3 3 8 5 :70 5 - c0 - - 16 0 0
21:tm_yday 3 3 8 5 :71 5 - e0 - - 16 0 0
22:tm_isdst 3 3 8 5 :72 5 - 100 - - 16 0 0> 120 - - 32 0 0>
<23:_iobuf 2 3 8 3 8:78:..\..\..\..\ctc\bin\..\include\stdio.h 22:2,_iobuf,-,-,0,23 - <6
5
0
1:79
:86
1
-
-
24:_ptr 3 3 8 5 25:80 7 - 0 - - 32 0 0
25:_base 3 3 8 5 :81 7 - 20 - - 32 0 0
26:_cnt 3 3 8 5 :82 5 - 40 - - 16 0 0
27:_bufsiz 3 3 8 5 :83 5 - 60 - - 16 0 0
<28:_flag 3 3 8 5 :84 <23:5,-,-,<24:1,int,<10:unsigned,-,2>>,0,-> - 80 - <29:_iob_flag_t 4 3 1 6 :75 <25:5,-,-,<26:1,-,<11:short,-,3>>,0,-> - - - 0 0 0> 16 0 0>
<30:_file 3 3 8 5 :85 <27:5,-,-,<28:1,char,3>,0,-> - 90 - - 8 0 0>> a0 - - 32 0 0>
<31:_io 2 3 8 3 8:28:..\..\..\..\ctc\bin\..\include\io.h 29:2,_io,-,-,0,31 - <7
5
0
1:29
:33
1
-
-
<32:fp 3 3 8 5 17:30 <30:5,-,-,<31:5,-,-,22,0,->,0,-> - 0 - <33:FILE 4 3 1 6 25:89:..\..\..\..\ctc\bin\..\include\stdio.h 31 - - - 0 0 0> 32 0 0>
34:ptr 3 3 8 5 17:31:..\..\..\..\ctc\bin\..\include\io.h 7 - 20 - - 32 0 0
35:end 3 3 8 5 :32 7 - 40 - - 32 0 0> 60 - - 32 0 0>
<36:.1.tag 2 3 8 3 9:23:..\..\..\..\ctc\bin\..\include\dbg.h <32:4,-,<12:.unsigned,-,<13:.char,-,->>,-,0,36> - <8
5
0
1:24
:39
1
-
-
37:_DBG_EXIT 4 3 8 4 9:25 6 - 1 - - 0 0 0
38:_DBG_CLOCK 4 3 8 4 :26 6 - 2 - - 0 0 0
39:_DBG_OPEN 4 3 8 4 :27 6 - 3 - - 0 0 0
40:_DBG_READ 4 3 8 4 :28 6 - 4 - - 0 0 0
41:_DBG_WRITE 4 3 8 4 :29 6 - 5 - - 0 0 0
42:_DBG_LSEEK 4 3 8 4 :30 6 - 6 - - 0 0 0
43:_DBG_CLOSE 4 3 8 4 :31 6 - 7 - - 0 0 0
44:_DBG_RENAME 4 3 8 4 :32 6 - 8 - - 0 0 0
45:_DBG_UNLINK 4 3 8 4 :33 6 - 9 - - 0 0 0
46:_DBG_ACCESS 4 3 8 4 :34 6 - a - - 0 0 0
47:_DBG_GETCWD 4 3 8 4 :35 6 - b - - 0 0 0
48:_DBG_CHDIR 4 3 8 4 :36 6 - c - - 0 0 0
49:_DBG_STAT 4 3 8 4 :37 6 - d - - 0 0 0
50:_DBG_ARGCV 4 3 8 4 :38 6 - e - - 0 0 0> 20 - - 16 0 0>
<51:.2.tag 2 3 8 3 :42 33:2,-,-,-,0,51 - <9
5
0
1:43
:127
1
-
-
52:_errno 3 3 8 5 41:44 5 - 0 - - 16 0 0
<53:nr 3 3 8 5 :45 34:5,-,-,32,0,- - 20 - <54:_dbg_nr_t 4 3 1 6 3:39 34 - - - 0 0 0> 8 0 0>
<55:u 3 3 8 5 11:126 <35:5,-,-,<36:3,-,-,-,0,<56:.3.tag 2 3 8 3 9:46 36 - <10
5
0
:47
:126
9
-
-
<57:exit 3 3 8 5 19:51 <37:5,-,-,<38:2,-,-,-,0,<58:.4.tag 2 3 8 3 17:48 38 - <11
5
0
:49
:51
10
-
-
59:status 3 3 8 5 41:50 5 - 0 - - 16 0 0> 20 - - 16 0 0>>,0,-> - 0 - - 16 0 0>
<60:open 3 3 8 5 19:57 <39:5,-,-,<40:2,-,-,-,0,<61:.5.tag 2 3 8 3 17:52 40 - <12
5
0
:53
:57
10
-
-
<62:pathname 3 3 8 5 41:54 <41:5,-,-,<42:5,-,<14:const,-,->,9,0,->,0,-> - 0 - - 32 0 0>
<63:flags 3 3 8 5 :55 23 - 20 - <64:uint_least16_t 4 3 1 6 33:36:..\..\..\..\ctc\bin\..\include\stdint.h 25 - - - 0 0 0> 16 0 0>> 40 - - 32 0 0>>,0,-> - 0 - - 32 0 0>
<65:read 3 3 8 5 19:63:..\..\..\..\ctc\bin\..\include\dbg.h <43:5,-,-,<44:2,-,-,-,0,<66:.6.tag 2 3 8 3 17:58 44 - <13
5
0
:59
:63
10
-
-
<67:fd 3 3 8 5 41:60 27 - 0 - <68:uint_least8_t 4 3 1 6 33:34:..\..\..\..\ctc\bin\..\include\stdint.h 27 - - - 0 0 0> 8 0 0>
69:buffer 3 3 8 5 41:61:..\..\..\..\ctc\bin\..\include\dbg.h 12 - 20 - - 32 0 0
<70:nbytes 3 3 8 5 :62 3 - 40 - <71:size_t 4 3 1 6 25:26:..\..\..\..\ctc\bin\..\include\time.h 3 - - - 0 0 0> 16 0 0>> 60 - - 32 0 0>>,0,-> - 0 - - 32 0 0>
<72:write 3 3 8 5 19:69:..\..\..\..\ctc\bin\..\include\dbg.h <45:5,-,-,<46:2,-,-,-,0,<73:.7.tag 2 3 8 3 17:64 46 - <14
5
0
:65
:69
10
-
-
74:fd 3 3 8 5 41:66 27 - 0 - 68 8 0 0
<75:buffer 3 3 8 5 :67 <47:5,-,-,<48:5,-,14,14,0,->,0,-> - 20 - - 32 0 0>
76:nbytes 3 3 8 5 :68 3 - 40 - 71 16 0 0> 60 - - 32 0 0>>,0,-> - 0 - - 32 0 0>
<77:lseek 3 3 8 5 19:75 <49:5,-,-,<50:2,-,-,-,0,<78:.8.tag 2 3 8 3 17:70 50 - <15
5
0
:71
:75
10
-
-
79:fd 3 3 8 5 41:72 27 - 0 - 68 8 0 0
80:whence 3 3 8 5 :73 27 - 8 - 68 8 0 0
<81:offset 3 3 8 5 :74 <51:5,-,-,<52:1,int,<15:signed,-,8>>,0,-> - 10 - - 16 0 0>> 30 - - 16 0 0>>,0,-> - 0 - - 16 0 0>
<82:close 3 3 8 5 19:79 <53:5,-,-,<54:2,-,-,-,0,<83:.9.tag 2 3 8 3 17:76 54 - <16
5
0
:77
:79
10
-
-
84:fd 3 3 8 5 41:78 27 - 0 - 68 8 0 0> 8 - - 8 0 0>>,0,-> - 0 - - 8 0 0>
<85:rename 3 3 8 5 19:84 <55:5,-,-,<56:2,-,-,-,0,<86:.10.tag 2 3 8 3 17:80 56 - <17
5
0
:81
:84
10
-
-
87:oldpath 3 3 8 5 41:82 41 - 0 - - 32 0 0
88:newpath 3 3 8 5 :83 41 - 20 - - 32 0 0> 40 - - 32 0 0>>,0,-> - 0 - - 32 0 0>
<89:unlink 3 3 8 5 19:88 <57:5,-,-,<58:2,-,-,-,0,<90:.11.tag 2 3 8 3 17:85 58 - <18
5
0
:86
:88
10
-
-
91:pathname 3 3 8 5 41:87 41 - 0 - - 32 0 0> 20 - - 32 0 0>>,0,-> - 0 - - 32 0 0>
<92:access 3 3 8 5 19:93 <59:5,-,-,<60:2,-,-,-,0,<93:.12.tag 2 3 8 3 17:89 60 - <19
5
0
:90
:93
10
-
-
94:pathname 3 3 8 5 41:91 41 - 0 - - 32 0 0
95:mode 3 3 8 5 :92 5 - 20 - - 16 0 0> 40 - - 32 0 0>>,0,-> - 0 - - 32 0 0>
<96:getcwd 3 3 8 5 19:98 <61:5,-,-,<62:2,-,-,-,0,<97:.13.tag 2 3 8 3 17:94 62 - <20
5
0
:95
:98
10
-
-
98:buf 3 3 8 5 41:96 7 - 0 - - 32 0 0
99:size 3 3 8 5 :97 3 - 20 - 71 16 0 0> 40 - - 32 0 0>>,0,-> - 0 - - 32 0 0>
<100:chdir 3 3 8 5 19:102 <63:5,-,-,<64:2,-,-,-,0,<101:.14.tag 2 3 8 3 17:99 64 - <21
5
0
:100
:102
10
-
-
102:pathname 3 3 8 5 41:101 41 - 0 - - 32 0 0> 20 - - 32 0 0>>,0,-> - 0 - - 32 0 0>
<103:stat 3 3 8 5 19:107 <65:5,-,-,<66:2,-,-,-,0,<104:.15.tag 2 3 8 3 17:103 66 - <22
5
0
:104
:107
10
-
-
105:pathname 3 3 8 5 41:105 41 - 0 - - 32 0 0
<106:buf 3 3 8 5 :106 <67:5,-,-,<68:5,-,-,<69:2,stat,-,-,0,107:stat 2 3 8 3 32 69 - - 0 - - 0 0 0>,0,->,0,-> - 20 - - 32 0 0>> 40 - - 32 0 0>>,0,-> - 0 - - 32 0 0>
<108:argcv 3 3 8 5 19:112 <70:5,-,-,<71:2,-,-,-,0,<109:.16.tag 2 3 8 3 17:108 71 - <23
5
0
:109
:112
10
-
-
110:buf 3 3 8 5 41:110 41 - 0 - - 32 0 0
111:size 3 3 8 5 :111 3 - 20 - 71 16 0 0> 40 - - 32 0 0>>,0,-> - 0 - - 32 0 0>
<112:clock_result 3 3 8 5 :113 10 - 0 - <113:clock_t 4 3 1 6 33:32:..\..\..\..\ctc\bin\..\include\time.h <72:5,-,-,<73:1,-,<16:long,-,<17:long,-,3>>>,0,-> - - - 0 0 0> 32 0 0>
<114:open_result 3 3 8 5 41:114:..\..\..\..\ctc\bin\..\include\dbg.h <74:5,-,-,<75:1,char,4>,0,-> - 0 - <115:int_least8_t 4 3 1 6 33:33:..\..\..\..\ctc\bin\..\include\stdint.h 74 - - - 0 0 0> 8 0 0>
116:read_result 3 3 8 5 41:115:..\..\..\..\ctc\bin\..\include\dbg.h 5 - 0 - - 16 0 0
117:write_result 3 3 8 5 :116 5 - 0 - - 16 0 0
118:lseek_result 3 3 8 5 :117 51 - 0 - - 16 0 0
119:close_result 3 3 8 5 :118 74 - 0 - 115 8 0 0
120:rename_result 3 3 8 5 :119 5 - 0 - - 16 0 0
121:unlink_result 3 3 8 5 :120 5 - 0 - - 16 0 0
122:access_result 3 3 8 5 :121 5 - 0 - - 16 0 0
123:getcwd_result 3 3 8 5 :122 7 - 0 - - 32 0 0
124:chdir_result 3 3 8 5 :123 5 - 0 - - 16 0 0
125:stat_result 3 3 8 5 :124 5 - 0 - - 16 0 0
126:argcv_result 3 3 8 5 :125 5 - 0 - - 16 0 0> 60 - - 32 0 0>>,0,-> - 40 - - 32 0 0>> a0 - - 32 0 0>
56
58
61
66
73
78
83
86
90
93
97
101
104
107
109
<127:.17.tag 2 3 8 3 9:36:..\..\..\..\ctc\bin\..\include\stdlib.h 76:2,-,-,-,0,127 - <24
5
0
17
:39
1
-
-
128:quot 3 3 8 5 29:37 5 - 0 - - 16 0 0
129:rem 3 3 8 5 :38 5 - 20 - - 16 0 0> 40 - - 32 0 0>
<130:.18.tag 2 3 8 3 9:41 77:2,-,-,-,0,130 - <25
5
0
17
:44
1
-
-
131:quot 3 3 8 5 30:42 51 - 0 - - 16 0 0
132:rem 3 3 8 5 :43 51 - 20 - - 16 0 0> 40 - - 32 0 0>
<133:.19.tag 2 3 8 3 9:47 78:2,-,-,-,0,133 - <26
5
0
17
:50
1
-
-
<134:quot 3 3 8 5 35:48 <79:5,-,-,<80:1,int,<18:signed,-,7>>,0,-> - 0 - - 32 0 0>
135:rem 3 3 8 5 :49 79 - 40 - - 32 0 0> 80 - - 32 0 0>>
-
-> - - 8 0 32>
<136:__prof_func_entry 4 1 2 2 -:1 18 - <27
4
0
-
-
1
-
-
137:admin 4 3 7 1 - 20 - - 9 32 0 0> <28
4
0
-
-
4
-
-> - - 8 0 32>
<138:__prof_func_entry2 4 1 2 2 - <81:5,-,-,<82:7,-,<19:-,20,<20:-,15,->>,14,2,->,0,-> - <29
4
0
-
-
1
-
-
139:admin 4 3 7 1 - 20 - - 9 32 0 0
140:returnAddress 4 3 7 1 - 15 - - 10 32 0 0> <30
4
0
-
-
4
-
-> - - 8 0 32>
<141:__prof_func_exit 4 1 2 2 - 18 - <31
4
0
-
-
1
-
-
142:admin 4 3 7 1 - 20 - - 9 32 0 0> <32
4
0
-
-
4
-
-> - - 8 0 32>
<143:__prof_cleanup 4 1 2 2 - <83:5,-,-,<84:7,-,-,14,2,->,0,-> - <33
4
0
-
-
1
-
-> <34
4
0
-
-
4
-
-> - - 8 0 32>
<144:__prof_int_entry 4 1 2 2 - 83 - <35
4
0
-
-
1
-
-> <36
4
0
-
-
4
-
-> - - 8 0 32>
<145:__prof_int_exit 4 1 2 2 - 83 - <37
4
0
-
-
1
-
-> <38
4
0
-
-
4
-
-> - - 8 0 32>
<146:__get_return_address 4 1 2 2 <-:<3
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=B,C,E,F,G,I,S,T
RUNTIME=B,C,M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=f
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=t
PACK=0
PREDEF=t
PROFENABLE=t
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=f
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=f
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=user-0
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=f
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=t
UM_USER1=f>> <85:5,-,-,<86:7,-,-,16,2,->,0,-> <21:__const__,-,<22:__leaf__,-,<23:__builtin,-,->>> <39
4
0
-
-
1
-
-> <40
4
0
-
-
4
-
-> - 10 8 0 32>
<147:__prof_open 4 1 3 2 5:27:..\..\..\prof_io_use_dbg.c:2 <87:5,-,-,<88:7,-,-,6,2,->,0,-> - <41
4
0
17
22
1
-
-> <42
4
0
17
22
4
-
-> - - 8 0 0>
<148:__prof_write 4 1 3 2 6:39 <89:5,-,-,<90:7,-,<24:-,41,<25:-,5,->>,14,2,->,0,-> - <43
4
0
19
43
1
-
-
149:s 4 3 7 1 33 41 - - - 32 0 8
150:len 4 3 7 1 40 5 - - - 16 0 8> <44
4
0
19
43
4
-
-> - - 8 0 0>
<151:__prof_close 4 1 3 2 6:58 83 - <45
4
0
19
24
1
-
-> <46
4
0
19
24
4
-
-> - - 8 0 0>
<152:__prof_init_real 4 1 2 2 6:16:..\..\..\profile.h 83 - <47
4
0
23
28
1
-
-> <48
4
0
23
28
4
-
-> - - 8 0 0>
<153:__prof_int2hex 4 1 3 2 6:85:..\..\..\prof_io_use_dbg.c <91:5,-,-,<92:7,-,<26:-,7,<27:-,5,<28:-,<93:5,-,-,<94:1,int,<29:unsigned,-,8>>,0,->,25>>>,14,2,->,0,-> - <49
4
0
21
72
1
-
-
154:s 4 3 7 1 28 7 - - - 32 0 8
155:len 4 3 7 1 35 5 - - - 16 0 8
156:val 4 3 7 1 54 93 - - - 16 0 8
157:zero_fill 4 3 7 1 63 5 - - - 16 0 8> <50
4
0
21
72
4
-
-> - - 8 0 0>
<158:__prof_error 4 1 3 2 6:105 <95:5,-,-,<96:7,-,<30:-,7,->,14,2,->,0,-> - <51
4
0
19
27
1
-
-
159:s 4 3 7 1 26 7 - - - 32 0 8> <52
4
0
19
27
4
-
-> - - 8 0 0>
160:int8_t 4 3 1 6 33:21:..\..\..\..\ctc\bin\..\include\stdint.h 74 - - - 0 0 0
161:uint8_t 4 3 1 6 :22 27 - - - 0 0 0
<162:int16_t 4 3 1 6 :23 <97:5,-,-,<98:1,-,<31:short,-,4>>,0,-> - - - 0 0 0>
163:uint16_t 4 3 1 6 :24 25 - - - 0 0 0
164:int32_t 4 3 1 6 :25 5 - - - 0 0 0
165:uint32_t 4 3 1 6 :26 3 - - - 0 0 0
<166:int64_t 4 3 1 6 :27 <99:5,-,-,<100:1,-,<32:long,-,<33:long,-,4>>>,0,-> - - - 0 0 0>
167:uint64_t 4 3 1 6 :28 72 - - - 0 0 0
115
68
168:int_least16_t 4 3 1 6 :35 97 - - - 0 0 0
64
169:int_least32_t 4 3 1 6 :37 5 - - - 0 0 0
170:uint_least32_t 4 3 1 6 :38 3 - - - 0 0 0
171:int_least64_t 4 3 1 6 :39 99 - - - 0 0 0
172:uint_least64_t 4 3 1 6 :40 72 - - - 0 0 0
173:int_fast8_t 4 3 1 6 :45 74 - - - 0 0 0
174:uint_fast8_t 4 3 1 6 :46 27 - - - 0 0 0
175:int_fast16_t 4 3 1 6 :47 97 - - - 0 0 0
176:uint_fast16_t 4 3 1 6 :48 25 - - - 0 0 0
177:int_fast32_t 4 3 1 6 :49 5 - - - 0 0 0
178:uint_fast32_t 4 3 1 6 :50 3 - - - 0 0 0
179:int_fast64_t 4 3 1 6 :51 99 - - - 0 0 0
180:uint_fast64_t 4 3 1 6 :52 72 - - - 0 0 0
<181:intptr_t 4 3 1 6 :57 <101:5,-,-,<102:1,-,33>,0,-> - - - 0 0 0>
<182:uintptr_t 4 3 1 6 :58 <103:5,-,-,<104:1,-,17>,0,-> - - - 0 0 0>
183:intmax_t 4 3 1 6 :63 99 - - - 0 0 0
184:uintmax_t 4 3 1 6 :64 72 - - - 0 0 0
71
113
185:time_t 4 3 1 6 25:36:..\..\..\..\ctc\bin\..\include\time.h 103 - - - 0 0 0
186:va_list 4 3 1 6 16:15:..\..\..\..\ctc\bin\..\include\stdarg.h 7 - - - 0 0 0
187:fpos_t 4 3 1 6 25:64:..\..\..\..\ctc\bin\..\include\stdio.h 103 - - - 0 0 0
29
33
188:_fd_t 4 3 1 6 :47:..\..\..\..\ctc\bin\..\include\io.h 27 - - 68 0 0 0
189:_err_t 4 3 1 6 :48 74 - - 115 0 0 0
190:_open_flags_t 4 3 1 6 :49 25 - - 64 0 0 0
191:_whence_t 4 3 1 6 :50 27 - - 68 0 0 0
<192:_host_open 4 1 2 2 :96 <105:5,-,-,<106:7,-,<34:-,41,<35:-,23,->>,75,2,->,0,-> - <53
4
0
35
77
1
-
-
193:pathname 4 3 7 1 48 41 - - - 32 0 0
194:flags 4 3 7 1 72 23 - - 190 16 0 0> <54
4
0
35
77
4
-
-> - 189 8 0 0>
<195:_host_write 4 1 2 2 25:98 <107:5,-,-,<108:7,-,<36:-,27,<37:-,47,<38:-,3,->>>,6,2,->,0,-> - <55
4
0
36
80
1
-
-
196:fd 4 3 7 1 43 27 - - 188 8 0 0
197:buffer 4 3 7 1 59 47 - - - 32 0 0
198:nbytes 4 3 7 1 74 3 - - 71 16 0 0> <56
4
0
36
80
4
-
-> - - 8 0 0>
<199:_host_close 4 1 2 2 25:100 <109:5,-,-,<110:7,-,<39:-,27,->,75,2,->,0,-> - <57
4
0
36
45
1
-
-
200:fd 4 3 7 1 43 27 - - 188 8 0 0> <58
4
0
36
45
4
-
-> - 189 8 0 0>
201:_DBG_EXIT 4 3 8 4 9:25:..\..\..\..\ctc\bin\..\include\dbg.h 6 - 1 - - 0 0 0
202:_DBG_CLOCK 4 3 8 4 :26 6 - 2 - - 0 0 0
203:_DBG_OPEN 4 3 8 4 :27 6 - 3 - - 0 0 0
204:_DBG_READ 4 3 8 4 :28 6 - 4 - - 0 0 0
205:_DBG_WRITE 4 3 8 4 :29 6 - 5 - - 0 0 0
206:_DBG_LSEEK 4 3 8 4 :30 6 - 6 - - 0 0 0
207:_DBG_CLOSE 4 3 8 4 :31 6 - 7 - - 0 0 0
208:_DBG_RENAME 4 3 8 4 :32 6 - 8 - - 0 0 0
209:_DBG_UNLINK 4 3 8 4 :33 6 - 9 - - 0 0 0
210:_DBG_ACCESS 4 3 8 4 :34 6 - a - - 0 0 0
211:_DBG_GETCWD 4 3 8 4 :35 6 - b - - 0 0 0
212:_DBG_CHDIR 4 3 8 4 :36 6 - c - - 0 0 0
213:_DBG_STAT 4 3 8 4 :37 6 - d - - 0 0 0
214:_DBG_ARGCV 4 3 8 4 :38 6 - e - - 0 0 0
54
215:_dbg_request_t 4 3 1 6 3:127 111:5,-,-,33,0,- - - - 0 0 0
216:div_t 4 3 1 6 19:39:..\..\..\..\ctc\bin\..\include\stdlib.h 112:5,-,-,76,0,- - - - 0 0 0
217:ldiv_t 4 3 1 6 :44 113:5,-,-,77,0,- - - - 0 0 0
218:lldiv_t 4 3 1 6 :50 114:5,-,-,78,0,- - - - 0 0 0
<219:malloc 4 1 2 2 33:71 <115:5,-,-,<116:7,-,38,13,2,->,0,-> 40:__malloc__,-,- <59
4
1
42
51
1
-
-
220:.1.nn 4 3 7 1 44 3 - - 71 16 0 0> <60
4
0
42
51
4
-
-> - - 8 0 0>
<221:free 4 1 2 2 33:73 <117:5,-,-,<118:7,-,<41:-,12,->,14,2,->,0,-> 40 <61
4
1
42
51
1
-
-
222:.1.nn 4 3 7 1 49 12 - - - 32 0 0> <62
4
0
42
51
4
-
-> - - 8 0 0>
<223:wchar_t 4 3 1 6 26:104 <119:5,-,-,<120:1,int,31>,0,-> - - - 0 0 0>
<224:strlen 4 1 2 2 17:44:..\..\..\..\ctc\bin\..\include\string.h <121:5,-,-,<122:7,-,<42:-,41,->,4,2,->,0,-> - <63
4
1
26
41
1
-
-
225:.1.nn 4 3 7 1 39 41 - - - 32 0 0> <64
4
0
26
41
4
-
-> - 71 8 0 0>
226:fd 4 2 4 1 15:23:..\..\..\prof_io_use_dbg.c 74 - - 189 8 0 3
227:base 4 2 4 1 :24 7 - - - 32 0 3
228:cnt 4 2 4 1 12:25 5 - - - 16 0 3
<229:.1.str 4 2 6 1 30:29 <123:5,-,14,<124:6,-,-,9,9,->,0,-> - - - 8 0 3>
<230:__prof_init 4 1 3 2 6:80 83 - <65
4
0
17
22
1
-
-> <66
4
0
17
22
4
-
-> - - 8 0 0>
231:__libc_references 4 1 2 2 1:1:..\..\..\prof_io_use_dbg.c:1 16 23 - - - - 8 0 1056> 1 4
BEGIN : 0 1
FUNC 5:27:..\..\..\prof_io_use_dbg.c:2 0 <67
3
1
1:28
:37
41
-
-
232:.c1 4 3 7 1 5:27 125:5,-,-,74,0,- - - - 32 0 264> 147 <68
2
0
1:28
:37
-
-
-> 67 <69
3
0
:28
:37
42
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :28 0 67 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 17:29 0 67 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 67
ST 14 0 - 14
OBJ : 0 - 125 232
OBJ : 0 - 74 226
STAT 17 0 67
ST : 0 - 14
LD 14 0 - 74
OBJ : 0 - 125 232
CALL 29 0 - 75
OBJ 19 0 - 105 192
ARG 40 0 - 14
CONV 30 0 - 42
OBJ : 0 - 126:5,-,-,124,0,- 229
ARG 70 0 - 14
CON 60 0 - 24 301
NIL 70 0 - 14
JUMPF 9 0 67 1 profData=0,1,1,0,0,0,75,50,0,0
LT 73 0 - 127:1,_Bool,- profData=0,1,1,0,0,0,16,50,0,0
LD 14 0 - 75
LD : 0 - 74
OBJ : 0 - 125 232
CON 75 0 - 75 0
BLOCK 13:31 0 67 profData=0,0,0,1,1,0,0,0,0.25,0.25
RETURN : 0 67 3 profData=0,0,1,0,0,0,0,100,0,0
CON 20 0 - 6 0
LABEL 9:29 0 67 1
BLOCK 30:33 0 67 profData=0,0,0,1,1,0,0,0,0.75,0.75
STAT : 0 67
ST 14 0 - 14
OBJ 9 0 - 7 227
CONV 22 0 - 8
CALL : 0 - 13
OBJ 16 0 - 115 219
ARG 29 0 - 14
CON 23 0 - 4 200
NIL 29 0 - 14
STAT 16:34 0 67
ST 13 0 - 14
OBJ 9 0 - 5 228
CON 15 0 - 6 0
RETURN 9:36 0 67 2 profData=0,0,1,0,0,0,0,100,0,0
CON 16 0 - 6 1
LABEL 1:37 0 67 2
LABEL : 0 67 3
EXIT : 0 67 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:39 0 <70
3
9
1:40
:56
43
-
-
233:.t1 4 3 7 1 19:52 5 - - - 16 0 8
234:.f2 4 3 7 1 6:39 5 - - - 16 0 8
235:.s3 4 3 7 1 : 7 - - - 32 0 8
236:.c4 4 3 7 1 : 74 - - - 8 0 264
237:.c5 4 3 7 1 : 7 - - - 32 0 264
238:.c6 4 3 7 1 : 5 - - - 16 0 264
239:.c7 4 3 7 1 : 5 - - - 16 0 264
240:.c8 4 3 7 1 : 128:5,-,-,7,0,- - - - 32 0 264
241:.c9 4 3 7 1 : 129:5,-,-,5,0,- - - - 32 0 264> 148 <71
2
0
1:40
:56
-
-
-> 70 <72
3
0
:40
:56
44
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :40 0 70 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 13:41 0 70 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 70
ST 14 0 - 14
OBJ : 0 - 74 236
LD : 0 - 75
OBJ : 0 - 74 226
JUMPT 13 0 70 6 profData=0,1,1,0,0,0,19,50,0,0
LT 17 0 - 127 profData=0,1,1,0,0,0,16,50,0,0
LD 14 0 - 75
OBJ : 0 - 74 236
CON 19 0 - 75 0
BLOCK 27 0 70 profData=0,0,0,1,1,0,0,0,0.81,0.81
STAT : 0 70
ST : 0 - 14
OBJ : 0 - 128 240
OBJ : 0 - 7 227
STAT : 0 70
ST : 0 - 14
OBJ : 0 - 7 237
LD : 0 - 8
LD : 0 - 7
OBJ : 0 - 128 240
JUMPF : 0 70 5 profData=0,1,1,0,0,0,45,50,0,0
NE : 0 - 127 profData=0,1,1,0,0,0,60,50,0,0
LD : 0 - 8
OBJ : 0 - 7 237
CON : 0 - 8 0
BLOCK 9:46 0 70 profData=0,0,0,1,1,0,0,0,0.45,0.45
STAT : 0 70
ST 20 0 - 14
OBJ : 0 - 5 238
CON : 0 - 6 200
STAT 9 0 70
ST 13 0 - 14
OBJ : 0 - 129 241
OBJ : 0 - 5 228
STAT 9 0 70
ST 13 0 - 14
OBJ : 0 - 5 239
LD : 0 - 6
LD : 0 - 5
OBJ : 0 - 129 241
JUMPF 9 0 70 1 profData=0,1,1,0,0,0,72,50,0,0
GT 17 0 - 127 profData=0,1,1,0,0,0,-1,50,0,0
LD 13 0 - 6
OBJ : 0 - 5 239
SUB 27 0 - 6
LD 20 0 - 6
OBJ : 0 - 5 238
LD 29 0 - 6
OBJ : 0 - 5 150
BLOCK 39:48 0 70 profData=0,0,0,1,1,0,0,0,0.12,0.12
STAT : 0 70
CONV 24 0 - 14
CALL : 0 - 6
OBJ 13 0 - 107 195
ARG 27 0 - 14
CONV 25 0 - 28
LD : 0 - 75
OBJ : 0 - 74 236
ARG 33 0 - 14
CONV 29 0 - 48
LD : 0 - 8
OBJ : 0 - 7 237
ARG 38 0 - 14
CONV 35 0 - 4
LD : 0 - 6
OBJ : 0 - 5 239
NIL 38 0 - 14
STAT 20:49 0 70
ST 17 0 - 14
LD 13 0 - 5
OBJ : 0 - 129 241
CON 19 0 - 6 0
NOJUMP 20 0 70 profData=0,0,1,0,0,0,0,0,0,0
LABEL 9:46 0 70 1
BLOCK 39:52 0 70 profData=0,0,0,1,1,0,0,0,0.45,0.45
STAT : 0 70
ST : 0 - 14
OBJ : 0 - 5 234
LD 13:46 0 - 6
LD : 0 - 5
OBJ : 0 - 129 241
STAT 39:52 0 70
ST : 0 - 14
OBJ : 0 - 7 235
ADD 21:54 0 - 8
LD 17 0 - 8
LD : 0 - 7
OBJ : 0 - 128 240
LD 22 0 - 6
OBJ : 0 - 5 234
JUMP 39:52 0 70 3 profData=0,0,1,0,0,0,0,100,0,0
LABEL : 0 70 -2 loopinfo=2,0,0,-2,1
BLOCK 35:54 0 70 profData=0,0,0,1,1,0,0,0,1.2,1.2
STAT : 0 70
ST 29 0 - 14
LD 21 0 - 8
OBJ : 0 - 7 235
LD 31 0 - 9
LD 32 0 - 42
OBJ : 0 - 41 149
STAT 25 0 70
ST : 0 - 14
OBJ : 0 - 7 235
ADD : 0 - 8
LD : 0 - 8
OBJ : 0 - 7 235
CON : 0 - 6 1
STAT 33 0 70
ST : 0 - 14
OBJ 32 0 - 41 149
ADD 33 0 - 42
LD 32 0 - 42
OBJ : 0 - 41 149
CON 33 0 - 6 1
STAT 25 0 70
ST : 0 - 14
OBJ 22 0 - 5 234
ADD 25 0 - 6
LD 22 0 - 6
OBJ : 0 - 5 234
CON 25 0 - 6 1
NOJUMP : 0 70 profData=0,0,1,0,0,0,0,0,0,0
LABEL 39:52 0 70 3
BLOCK 19 0 70 profData=0,0,0,1,1,0,0,0,1.3,1.3
STAT : 0 70
ST : 0 - 14
OBJ : 0 - 5 233
LD 16 0 - 6
OBJ : 0 - 5 150
STAT 19 0 70
ST : 0 - 14
OBJ 16 0 - 5 150
SUB 19 0 - 6
LD 16 0 - 6
OBJ : 0 - 5 150
CON 19 0 - 6 1
JUMPF 16 0 70 4 profData=0,1,1,0,0,0,3,50,0,0
NE : 0 - 127 profData=0,1,1,0,0,0,-1,50,0,0
LD 19 0 - 6
OBJ : 0 - 5 233
CON 16 0 - 6 0
BLOCK 30 0 70 profData=0,0,0,1,1,0,0,0,1.3,1.3
JUMPT : 0 70 -2 profData=0,1,1,0,0,0,91,50,0,0
LT : 0 - 127 profData=0,1,1,0,0,0,-1,50,0,0
LD 26 0 - 6
OBJ : 0 - 5 234
LD 32 0 - 6
OBJ : 0 - 5 238
LABEL 22 0 70 4
BLOCK 1:56 0 70 profData=0,0,0,1,1,0,0,0,0.16,0.16
STAT : 0 70
ST : 0 - 14
LD 13:46 0 - 5
OBJ : 0 - 129 241
LD 1:56 0 - 6
OBJ : 0 - 5 234
NOJUMP : 0 70 profData=0,0,1,0,0,0,0,0,0,0
LABEL : 0 70 5
LABEL 22:41 0 70 6
EXIT 1:56 0 70 profData=0,0,0,1,0,0,0,0,0.71,0
FUNC 6:58 0 <73
3
6
1:59
:78
45
-
-
242:.c1 4 3 7 1 6:58 5 - - - 16 0 264
243:.c2 4 3 7 1 : 7 - - - 32 0 264
244:.c3 4 3 7 1 : 74 - - - 8 0 264
245:.c4 4 3 7 1 : 129 - - - 32 0 264
246:.c5 4 3 7 1 : 128 - - - 32 0 264
247:.c6 4 3 7 1 : 125 - - - 32 0 264> 151 <74
2
0
1:59
:78
-
-
-> 73 <75
3
0
:59
:78
46
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :59 0 73 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 9:60 0 73 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 73
ST 13 0 - 14
OBJ : 0 - 129 245
OBJ : 0 - 5 228
STAT 9 0 73
ST 13 0 - 14
OBJ : 0 - 5 242
LD : 0 - 6
LD : 0 - 5
OBJ : 0 - 129 245
JUMPF 9 0 73 1 profData=0,1,1,0,0,0,72,50,0,0
NE : 0 - 127 profData=0,1,1,0,0,0,-1,50,0,0
LD 13 0 - 6
OBJ : 0 - 5 242
CON 9 0 - 6 0
BLOCK 39:62 0 73 profData=0,0,0,1,1,0,0,0,0.28,0.28
STAT : 0 73
ST 29 0 - 14
OBJ : 0 - 128 246
OBJ : 0 - 7 227
STAT 39 0 73
ST 25 0 - 14
OBJ : 0 - 125 247
OBJ : 0 - 74 226
STAT 39 0 73
CONV 24 0 - 14
CALL : 0 - 6
OBJ 13 0 - 107 195
ARG 27 0 - 14
CONV 25 0 - 28
LD : 0 - 75
LD : 0 - 74
OBJ : 0 - 125 247
ARG 33 0 - 14
CONV 29 0 - 48
LD : 0 - 8
LD : 0 - 7
OBJ : 0 - 128 246
ARG 38 0 - 14
CONV 35 0 - 4
LD : 0 - 6
OBJ : 0 - 5 242
NIL 38 0 - 14
NOJUMP 39 0 73 profData=0,0,1,0,0,0,0,0,0,0
LABEL 9:60 0 73 1
BLOCK :65 0 73 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 73
ST :60 0 - 14
OBJ : 0 - 128 246
OBJ 29:62 0 - 7 227
STAT 9:65 0 73
ST :60 0 - 14
OBJ : 0 - 125 247
OBJ 25:62 0 - 74 226
STAT 9:65 0 73
ST 13 0 - 14
OBJ : 0 - 7 243
LD : 0 - 8
LD : 0 - 7
OBJ : 0 - 128 246
JUMPF 9 0 73 2 profData=0,1,1,0,0,0,59,50,0,0
NE : 0 - 127 profData=0,1,1,0,0,0,60,50,0,0
LD 13 0 - 8
OBJ : 0 - 7 243
CON 9 0 - 8 0
BLOCK 23:67 0 73 profData=0,0,0,1,1,0,0,0,0.41,0.41
STAT : 0 73
CALL 17 0 - 14
OBJ 13 0 - 117 221
ARG 22 0 - 14
CONV 18 0 - 13
LD : 0 - 8
OBJ : 0 - 7 243
NIL 22 0 - 14
NOJUMP 23 0 73 profData=0,0,1,0,0,0,0,0,0,0
LABEL 9:65 0 73 2
BLOCK :70 0 73 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 73
ST 13 0 - 14
OBJ : 0 - 74 244
LD : 0 - 75
LD : 0 - 74
OBJ : 0 - 125 247
JUMPF 9 0 73 3 profData=0,1,1,0,0,0,29,50,0,0
GE 16 0 - 127 profData=0,1,1,0,0,0,84,50,0,0
LD 13 0 - 75
OBJ : 0 - 74 244
CON 19 0 - 75 0
BLOCK 28:72 0 73 profData=0,0,0,1,1,0,0,0,0.71,0.71
STAT : 0 73
CONV 24 0 - 14
CALL : 0 - 75
OBJ 13 0 - 109 199
ARG 27 0 - 14
CONV 25 0 - 28
LD : 0 - 75
OBJ : 0 - 74 244
NIL 27 0 - 14
NOJUMP 28 0 73 profData=0,0,1,0,0,0,0,0,0,0
LABEL 9:70 0 73 3
BLOCK 15:75 0 73 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 73
ST 12 0 - 14
LD 9 0 - 74
OBJ : 0 - 125 247
CON 14 0 - 75 0
STAT 17:76 0 73
ST 14 0 - 14
LD 9 0 - 7
OBJ : 0 - 128 246
CON 16 0 - 8 0
STAT :77 0 73
ST 13 0 - 14
LD 9 0 - 5
OBJ : 0 - 129 245
CON 15 0 - 6 0
NOJUMP 16 0 73 profData=0,0,1,0,0,0,0,0,0,0
EXIT 1:78 0 73 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:80 0 <76
3
0
1:81
:83
65
-
-> 230 <77
2
0
:81
:83
-
-
-> 76 <78
3
0
:81
:83
66
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :81 0 76 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 27:82 0 76 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 76
CALL 25 0 - 14
OBJ 9 0 - 83 152
NIL 26 0 - 14
NOJUMP 27 0 76 profData=0,0,1,0,0,0,0,0,0,0
EXIT 1:83 0 76 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:85 0 <79
3
2
1:86
:101
49
-
-
248:ix 4 3 7 1 13:87 5 - - - 16 0 8
249:dig 4 3 7 1 14:88 8 - - - 8 0 8
250:.s1 4 3 7 1 6:85 7 - - - 32 0 8
251:.c2 4 3 7 1 : 5 - - - 16 0 264> 153 <80
2
0
1:86
:101
-
-
-> 79 <81
3
0
:86
:101
50
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :86 0 79 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 20:90 0 79 profData=0,0,0,1,1,0,0,0,1,1
STAT 22 0 79
ST : 0 - 14
OBJ : 0 - 5 251
SUB : 0 - 6
LD 17 0 - 6
OBJ : 0 - 5 155
CON 22 0 - 6 1
STAT : 0 79
ST : 0 - 14
OBJ 24 0 - 5 248
LD 22 0 - 6
OBJ : 0 - 5 251
STAT 42 0 79
ST : 0 - 14
OBJ : 0 - 7 250
ADD 26:95 0 - 8
LD 25 0 - 8
OBJ : 0 - 7 154
LD 22:90 0 - 6
OBJ : 0 - 5 251
JUMP 31 0 79 9 profData=0,1,1,0,0,0,7,50,0,0
LABEL 42 0 79 -1 loopinfo=2,0,0,-1,0,248,-3,-3,1,0,-1,0,0,0,1,0,1,1
BLOCK 34:92 0 79 profData=0,0,0,1,1,0,0,0,93,93
STAT : 0 79
ST 21 0 - 14
OBJ 17 0 - 8 249
AND 28 0 - 75
CONV 24 0 - 75
LD : 0 - 94
OBJ : 0 - 93 156
CON 30 0 - 75 f
JUMPT 22:94 0 79 5 profData=0,1,1,0,0,0,62,50,0,0
NE : 0 - 127 profData=0,1,1,0,0,0,-1,50,0,0
LD : 0 - 9
OBJ : 0 - 8 249
CON : 0 - 75 0
BLOCK 30 0 79 profData=0,0,0,1,1,0,0,0,35,35
JUMPT : 0 79 4 profData=0,1,1,0,0,0,-1,50,0,0
NE : 0 - 127 profData=0,1,1,0,0,0,-1,50,0,0
LD : 0 - 94
OBJ : 0 - 93 156
CON : 0 - 94 0
BLOCK 38 0 79 profData=0,0,0,1,1,0,0,0,18,18
JUMPT : 0 79 3 profData=0,1,1,0,0,0,-1,50,0,0
NE : 0 - 127 profData=0,1,1,0,0,0,-1,50,0,0
LD : 0 - 6
OBJ : 0 - 5 157
CON : 0 - 6 0
BLOCK 53 0 79 profData=0,0,0,1,1,0,0,0,8.8,8.8
JUMPF : 0 79 2 profData=0,1,1,0,0,0,55,50,0,0
NE : 0 - 127 profData=0,1,1,0,0,0,-1,50,0,0
LD 51 0 - 6
OBJ : 0 - 5 248
LD 58 0 - 6
OBJ : 0 - 5 251
BLOCK 36:95 0 79 profData=0,0,0,1,1,0,0,0,4,4
STAT : 0 79
ST 31 0 - 14
LD 26 0 - 8
OBJ : 0 - 7 250
CON 33 0 - 75 20
JUMP 36 0 79 8 profData=0,0,1,0,0,0,0,100,0,0
LABEL 17:94 0 79 2
LABEL 60 0 79 3
LABEL : 0 79 4
LABEL : 0 79 5
BLOCK 22:96 0 79 profData=0,0,0,1,1,0,0,0,89,89
JUMPF : 0 79 6 profData=0,1,1,0,0,0,-1,50,0,0
GT 30 0 - 127 profData=0,1,1,0,0,0,-1,50,0,0
LD 26 0 - 9
OBJ : 0 - 8 249
CON 32 0 - 75 9
BLOCK 49:97 0 79 profData=0,0,0,1,1,0,0,0,45,45
STAT : 0 79
ST 31 0 - 14
LD 26 0 - 8
OBJ : 0 - 7 250
CONV 37 0 - 75
ADD : 0 - 6
CONV 33 0 - 6
LD : 0 - 9
OBJ : 0 - 8 249
CON 44 0 - 6 57
JUMP 49 0 79 7 profData=0,0,1,0,0,0,0,100,0,0
LABEL 22:96 0 79 6
BLOCK 42:99 0 79 profData=0,0,0,1,1,0,0,0,45,45
STAT : 0 79
ST 31 0 - 14
LD 26 0 - 8
OBJ : 0 - 7 250
CONV 37 0 - 75
ADD : 0 - 6
CONV 33 0 - 6
LD : 0 - 9
OBJ : 0 - 8 249
CON 39 0 - 6 30
NOJUMP 42 0 79 profData=0,0,1,0,0,0,0,0,0,0
LABEL 17:98 0 79 7
LABEL :96 0 79 8
BLOCK 42:90 0 79 profData=0,0,0,1,1,0,0,0,93,93
STAT : 0 79
ST 37 0 - 14
OBJ 33 0 - 93 156
SHR 37 0 - 94
LD 33 0 - 94
OBJ : 0 - 93 156
CON 41 0 - 6 4
STAT 22 0 79
ST : 0 - 14
OBJ : 0 - 7 250
SUB : 0 - 8
LD : 0 - 8
OBJ : 0 - 7 250
CON : 0 - 6 1
STAT : 0 79
ST : 0 - 14
OBJ 24 0 - 5 248
SUB 22 0 - 6
LD 24 0 - 6
OBJ : 0 - 5 248
CON 22 0 - 6 1
NOJUMP 31 0 79 profData=0,0,0,0,0,0,0,0,0,0
LABEL : 0 79 9
BLOCK : 0 79 profData=0,0,0,0,0,0,0,0,0,0
JUMPT : 0 79 -1 profData=0,1,1,0,0,0,99,50,0,0
GE 27 0 - 127 profData=0,1,1,0,0,0,84,50,0,0
LD 24 0 - 6
OBJ : 0 - 5 248
CON 30 0 - 6 0
EXIT 1:101 0 79 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:105 0 <82
3
1
1:106
:108
51
-
-
252:.t1 4 3 7 1 38:107 3 - - - 16 0 8> 158 <83
2
0
1:106
:108
-
-
-> 82 <84
3
0
:106
:108
52
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :106 0 82 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 38:107 0 82 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 82
ST : 0 - 14
OBJ : 0 - 3 252
CALL : 0 - 4
OBJ 32 0 - 121 224
ARG 40 0 - 14
CONV 39 0 - 42
LD : 0 - 8
OBJ : 0 - 7 159
NIL 40 0 - 14
STAT 42 0 82
CONV 20 0 - 14
CALL : 0 - 6
OBJ 9 0 - 107 195
ARG 27 0 - 14
CON 21 0 - 28 2
ARG 30 0 - 14
CONV 29 0 - 48
LD : 0 - 8
OBJ : 0 - 7 159
ARG 41 0 - 14
LD 38 0 - 4
OBJ : 0 - 3 252
NIL 41 0 - 14
NOJUMP 42 0 82 profData=0,0,1,0,0,0,0,0,0,0
EXIT 1:108 0 82 profData=0,0,0,1,0,0,0,0,1,0
DATA 20:23 0 1 226
PAD : 0 1
CON : 0 - 6 1
DATA 22:24 0 1 227
PAD : 0 1
CON : 0 - 6 4
DATA 18:25 0 1 228
PAD : 0 1
CON : 0 - 6 4
DATA 30:29 0 1 229
INIT : 0 1
CON : 0 - 75 61
INIT : 0 1
CON : 0 - 75 6d
INIT : 0 1
CON : 0 - 75 6f
INIT : 0 1
CON : 0 - 75 6e
INIT : 0 1
CON : 0 - 75 2e
INIT : 0 1
CON : 0 - 75 70
INIT : 0 1
CON : 0 - 75 72
INIT : 0 1
CON : 0 - 75 66
PAD : 0 1
CON : 0 - 6 1
END 1:109 0 1
TAIL -:- 0 -
.
+               19164           1397159281 prof_io_use_fs.mil
#!<mil>
# TASKING VX-toolset for TriCore: C compiler v99.9r9 Build 759
# options: --mil --core=tc1.6 -Rlibpct --section-name-with-symbol -N0 -O3 -g1 --global-type-checking --user-mode=user-0
# files: ..\..\..\prof_io_use_fs.c
#!E__prof_block_entry
#!E__prof_func_entry
#!E__prof_func_entry2
#!E__prof_func_exit
#!E__prof_cleanup
#!E__prof_int_entry
#!E__prof_int_exit
#!E__get_return_address
#!G__prof_open
#!G__prof_write
#!G__prof_close
#!E__prof_init_real
#!G__prof_int2hex
#!G__prof_error
#!E_iob
#!Efputs
#!Efwrite
#!Efopen
#!Efclose
#!G__prof_init_use_fs
#!G__prof_init_use_stdout
#!E__libc_references
MIL - 0 - version=3:2:b646:a4b1:loopinfo,profData
HEAD - 0 -
MODULE <1:1:..\..\..\prof_io_use_fs.c:<1
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=B,C,E,F,G,I,S,T
RUNTIME=B,C,M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=f
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=f
PACK=0
PREDEF=t
PROFENABLE=t
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=f
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=f
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=user-0
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=f
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=t
UM_USER1=f>> 0 <1
1
2
:
<:79:..\..\..\prof_io_use_fs.c:<2
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=B,C,E,F,G,I,S,T
RUNTIME=B,C,M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=f
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=f
PACK=0
PREDEF=f
PROFENABLE=f
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=f
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=f
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=user-0
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=f
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=t
UM_USER1=f>>
-
-
-
<1:__wchar_t 4 3 1 6 :1:..\..\..\prof_io_use_fs.c:1 <1:5,-,-,<2:1,int,<1:signed,-,<2:short,-,->>>,0,-> - - - 0 0 0>
<2:__size_t 4 3 1 6 : <3:5,-,-,<4:1,int,<3:unsigned,-,->>,0,-> - - - 0 0 0>
<3:__ssize_t 4 3 1 6 : <5:5,-,-,<6:1,int,<4:signed,-,->>,0,-> - - - 0 0 0>
4:__ptrdiff_t 4 3 1 6 : 5 - - - 0 0 0
5:__bounds_off_t 4 3 1 6 : 5 - - - 0 0 0
<6:__bounds_t 4 3 1 6 : <7:5,-,-,<8:5,-,-,<9:1,char,<5:.signed,-,->>,0,->,0,-> - - - 0 0 0>
7:__bounds_mem_t 4 3 1 6 : 7 - - - 0 0 0
<8:__ull 4 3 1 6 : <10:5,-,-,<11:1,int,<6:unsigned,-,<7:long,-,<8:long,-,->>>>,0,-> - - - 0 0 0>
<9:__prof_adm 4 3 1 6 : <12:5,-,-,<13:5,-,-,<14:1,void,->,0,->,0,-> - - - 0 0 0>
<10:__codeptr 4 3 1 6 : <15:5,-,-,<16:5,-,-,<17:7,-,-,14,0,->,0,->,0,-> - - - 0 0 0>
<11:__prof_block_entry 4 1 2 2 - <18:5,-,-,<19:7,-,<9:-,<20:5,-,-,12,0,->,->,14,2,->,0,-> - <2
4
0
-
-
1
-
-
12:admin 4 3 7 1 - 20 - - 9 32 0 0> <3
4
0
-
-
<4
1
3
:
:79:..\..\..\prof_io_use_fs.c:2
-
-
-
<13:_iobuf 2 3 8 3 8:78:..\..\..\..\ctc\bin\..\include\stdio.h 21:2,_iobuf,-,-,0,13 - <5
5
0
1:79
:86
1
-
-
14:_ptr 3 3 8 5 25:80 7 - 0 - - 32 0 0
15:_base 3 3 8 5 :81 7 - 20 - - 32 0 0
16:_cnt 3 3 8 5 :82 5 - 40 - - 16 0 0
17:_bufsiz 3 3 8 5 :83 5 - 60 - - 16 0 0
<18:_flag 3 3 8 5 :84 <22:5,-,-,<23:1,int,<10:unsigned,-,2>>,0,-> - 80 - <19:_iob_flag_t 4 3 1 6 :75 <24:5,-,-,<25:1,-,<11:short,-,3>>,0,-> - - - 0 0 0> 16 0 0>
<20:_file 3 3 8 5 :85 <26:5,-,-,<27:1,char,3>,0,-> - 90 - - 8 0 0>> a0 - - 32 0 0>
<21:.1.tag 2 3 8 3 9:36:..\..\..\..\ctc\bin\..\include\stdlib.h 28:2,-,-,-,0,21 - <6
5
0
17
:39
1
-
-
22:quot 3 3 8 5 29:37 5 - 0 - - 16 0 0
23:rem 3 3 8 5 :38 5 - 20 - - 16 0 0> 40 - - 32 0 0>
<24:.2.tag 2 3 8 3 9:41 29:2,-,-,-,0,24 - <7
5
0
17
:44
1
-
-
<25:quot 3 3 8 5 30:42 <30:5,-,-,<31:1,int,<12:signed,-,8>>,0,-> - 0 - - 16 0 0>
26:rem 3 3 8 5 :43 30 - 20 - - 16 0 0> 40 - - 32 0 0>
<27:.3.tag 2 3 8 3 9:47 32:2,-,-,-,0,27 - <8
5
0
17
:50
1
-
-
<28:quot 3 3 8 5 35:48 <33:5,-,-,<34:1,int,<13:signed,-,7>>,0,-> - 0 - - 32 0 0>
29:rem 3 3 8 5 :49 33 - 40 - - 32 0 0> 80 - - 32 0 0>>
-
-> - - 8 0 32>
<30:__prof_func_entry 4 1 2 2 -:1 18 - <9
4
0
-
-
1
-
-
31:admin 4 3 7 1 - 20 - - 9 32 0 0> <10
4
0
-
-
4
-
-> - - 8 0 32>
<32:__prof_func_entry2 4 1 2 2 - <35:5,-,-,<36:7,-,<14:-,20,<15:-,15,->>,14,2,->,0,-> - <11
4
0
-
-
1
-
-
33:admin 4 3 7 1 - 20 - - 9 32 0 0
34:returnAddress 4 3 7 1 - 15 - - 10 32 0 0> <12
4
0
-
-
4
-
-> - - 8 0 32>
<35:__prof_func_exit 4 1 2 2 - 18 - <13
4
0
-
-
1
-
-
36:admin 4 3 7 1 - 20 - - 9 32 0 0> <14
4
0
-
-
4
-
-> - - 8 0 32>
<37:__prof_cleanup 4 1 2 2 - <37:5,-,-,<38:7,-,-,14,2,->,0,-> - <15
4
0
-
-
1
-
-> <16
4
0
-
-
4
-
-> - - 8 0 32>
<38:__prof_int_entry 4 1 2 2 - 37 - <17
4
0
-
-
1
-
-> <18
4
0
-
-
4
-
-> - - 8 0 32>
<39:__prof_int_exit 4 1 2 2 - 37 - <19
4
0
-
-
1
-
-> <20
4
0
-
-
4
-
-> - - 8 0 32>
<40:__get_return_address 4 1 2 2 <-:<3
DNSIZE=0
OPTIM=+predict
SECTION=libpct
DYSIZE=0
DZSIZE=0
PROFILE=B,C,E,F,G,I,S,T
RUNTIME=B,C,M
SOURCE=f
TRADEOFF=4
O_COAL=t
PROFBLOCK=f
TRACEBLOCK=f
R_BOUNDS=f
O_IPRO=f
PROFCALL=f
R_CASE=f
O_CSE=t
O_PRED=f
PROFEDGE=f
O_EXPR=t
O_FLOW=t
PROFFUNC=f
TRACEFUNC=f
O_GLO=t
O_INL=t
PROFINT=f
O_SKED=t
O_LOOP=t
R_MALLOC=f
O_SIMD=t
O_ALOOP=t
O_FWD=t
O_PROP=t
O_COCO=t
BR_STAT=f
O_SUB=t
PROFTIME=f
O_TREE=f
O_UNROLL=t
O_IFC=t
O_SWP=t
O_PEEP=t
AGGR_MAX_ELEMENTS=8
AGGR_MAX_MEMBERS=8
INDIRECT_PRAGMA=f
INDIRECT_RT_PRAGMA=f
INLINE=1
ISUFFIX=f
NOMACRO=t
PACK=0
PREDEF=t
PROFENABLE=t
PROTECT=f
STDC_CX_LIMITED_RANGE=f
STDC_FENV_ACCESS=f
STDC_FP_CONTRACT=f
STDINC=f
_OFFSET=-1
_TAGSIZE=-1
ALIGN=0
MAXMATCH=200
IMMEDIATE_IN_CODE=f
INLINCR=-1
INLSIZE=-1
LOOP_ALIGN=32
MAXDEPTH=-1
NOCLEAR=f
SECTION_CODE_INIT=f
SECTION_CONST_INIT=f
SECTION_DATA_OVERLAY=f
SECTION_NAME_WITH_MODULE=f
SECTION_NAME_WITH_SYMBOL=t
SECTION_PER_DATA_OBJECT=f
SECTION_VECTOR_INIT=f
SPRAM=f
SWITCH=auto
TRACE=B,F
UNROLL_FACTOR=-1
USERMODE=user-0
SWITCH_AUTO=t
CODE_CLONE=f
DATA_CLONE=f
TC013=f
TC048=f
TC051=f
TC052=f
TC060=f
TC065=f
TC068=f
TC069=f
TC070=f
TC071=f
TC072=f
TC082=f
TC083=f
TC094=f
TC095=f
TC096=f
TC103=f
TC104=f
TC105=f
TC106=f
TC108=f
TC109=f
TC116=f
CPU15=f
DMU001=f
SWITCH_JUMPTAB=f
UM_KERNEL=f
LFI2=f
LFI3=f
SWITCH_LINEAR=f
SWITCH_LOOKUP=f
PMI003=f
PMU004=f
BR_PRED=t
CODE_PRIVATE0=f
DATA_PRIVATE0=f
CODE_PRIVATE1=f
DATA_PRIVATE1=f
CODE_PRIVATE2=f
DATA_PRIVATE2=f
CODE_PRIVATE3=f
DATA_PRIVATE3=f
CODE_PRIVATE4=f
DATA_PRIVATE4=f
CODE_PRIVATE5=f
DATA_PRIVATE5=f
CODE_PRIVATE6=f
DATA_PRIVATE6=f
CODE_PRIVATE7=f
DATA_PRIVATE7=f
CODE_SHARE=f
DATA_SHARE=f
BR_REWRITE=f
UM_USER0=t
UM_USER1=f>> <39:5,-,-,<40:7,-,-,16,2,->,0,-> <16:__const__,-,<17:__leaf__,-,<18:__builtin,-,->>> <21
4
0
-
-
1
-
-> <22
4
0
-
-
4
-
-> - 10 8 0 32>
<41:__prof_open 4 1 3 2 5:22:..\..\..\prof_io_use_fs.c:2 <41:5,-,-,<42:7,-,-,6,2,->,0,-> - <23
4
0
17
22
1
-
-> <24
4
0
17
22
4
-
-> - - 8 0 0>
<42:__prof_write 4 1 3 2 6:35 <43:5,-,-,<44:7,-,<19:-,<45:5,-,-,<46:5,-,<20:const,-,->,9,0,->,0,->,<21:-,5,->>,14,2,->,0,-> - <25
4
0
19
43
1
-
-
43:s 4 3 7 1 33 45 - - - 32 0 8
44:len 4 3 7 1 40 5 - - - 16 0 8> <26
4
0
19
43
4
-
-> - - 8 0 0>
<45:__prof_close 4 1 3 2 6:40 37 - <27
4
0
19
24
1
-
-> <28
4
0
19
24
4
-
-> - - 8 0 0>
<46:__prof_init_real 4 1 2 2 6:16:..\..\..\profile.h 37 - <29
4
0
23
28
1
-
-> <30
4
0
23
28
4
-
-> - - 8 0 0>
<47:__prof_int2hex 4 1 3 2 6:57:..\..\..\prof_io_use_fs.c <47:5,-,-,<48:7,-,<22:-,7,<23:-,5,<24:-,<49:5,-,-,<50:1,int,<25:unsigned,-,8>>,0,->,21>>>,14,2,->,0,-> - <31
4
0
21
72
1
-
-
48:s 4 3 7 1 28 7 - - - 32 0 8
49:len 4 3 7 1 35 5 - - - 16 0 8
50:val 4 3 7 1 54 49 - - - 16 0 8
51:zero_fill 4 3 7 1 63 5 - - - 16 0 8> <32
4
0
21
72
4
-
-> - - 8 0 0>
<52:__prof_error 4 1 3 2 6:75 <51:5,-,-,<52:7,-,<26:-,7,->,14,2,->,0,-> - <33
4
0
19
27
1
-
-
53:s 4 3 7 1 26 7 - - - 32 0 8> <34
4
0
19
27
4
-
-> - - 8 0 0>
54:va_list 4 3 1 6 16:15:..\..\..\..\ctc\bin\..\include\stdarg.h 7 - - - 0 0 0
55:size_t 4 3 1 6 25:24:..\..\..\..\ctc\bin\..\include\stdio.h 3 - - - 0 0 0
<56:fpos_t 4 3 1 6 :64 <53:5,-,-,<54:1,-,<27:long,-,3>>,0,-> - - - 0 0 0>
19
57:FILE 4 3 1 6 :89 55:5,-,-,21,0,- - - - 0 0 0
<58:_iob 4 1 2 1 30:91 <56:5,-,-,<57:6,-,-,21,-1,->,0,-> 28:__far,-,- - 57 32 0 3>
<59:fputs 4 1 2 2 16:159 <58:5,-,-,<59:7,-,<29:-,<60:5,-,<30:restrict,-,->,46,0,->,<31:-,<61:5,-,30,55,0,->,->>,6,2,->,0,-> - <35
4
2
25
66
1
-
-
60:.1.nn 4 3 7 1 38 60 - - - 32 0 0
61:.2.nn 4 3 7 1 55 61 - - 57 32 0 0> <36
4
0
25
66
4
-
-> - - 8 0 0>
<62:fwrite 4 1 2 2 16:171 <62:5,-,-,<63:7,-,<32:-,<64:5,-,30,<65:5,-,20,14,0,->,0,->,<33:-,3,<34:-,3,31>>>,4,2,->,0,-> - <37
4
4
25
82
1
-
-
63:.1.nn 4 3 7 1 38 64 - - - 32 0 0
64:.2.nn 4 3 7 1 50 3 - - 55 16 0 0
65:.3.nn 4 3 7 1 58 3 - - 55 16 0 0
66:.4.nn 4 3 7 1 71 61 - - 57 32 0 0> <38
4
0
25
82
4
-
-> - 55 8 0 0>
<67:fopen 4 1 2 2 16:172 <66:5,-,-,<67:7,-,<35:-,60,<36:-,60,->>,55,2,->,0,-> - <39
4
2
25
72
1
-
-
68:.1.nn 4 3 7 1 38 60 - - - 32 0 0
69:.2.nn 4 3 7 1 61 60 - - - 32 0 0> <40
4
0
25
72
4
-
-> - 57 8 0 0>
<70:fclose 4 1 2 2 16:174 <68:5,-,-,<69:7,-,<37:-,<70:5,-,-,55,0,->,->,6,2,->,0,-> - <41
4
1
25
34
1
-
-
71:.1.nn 4 3 7 1 32 70 - - 57 32 0 0> <42
4
0
25
34
4
-
-> - - 8 0 0>
72:div_t 4 3 1 6 19:39:..\..\..\..\ctc\bin\..\include\stdlib.h 71:5,-,-,28,0,- - - - 0 0 0
73:ldiv_t 4 3 1 6 :44 72:5,-,-,29,0,- - - - 0 0 0
74:lldiv_t 4 3 1 6 :50 73:5,-,-,32,0,- - - - 0 0 0
<75:wchar_t 4 3 1 6 26:104 <74:5,-,-,<75:1,int,<38:short,-,4>>,0,-> - - - 0 0 0>
76:fp 4 2 4 1 14:19:..\..\..\prof_io_use_fs.c 70 - - 57 32 0 3
77:use_stdout 4 2 4 1 12:20 5 - - - 16 0 8
<78:.1.str 4 2 6 1 38:26 <76:5,-,20,<77:6,-,-,9,9,->,0,-> - - - 8 0 3>
<79:.2.str 4 2 6 1 50 <78:5,-,20,<79:6,-,-,9,2,->,0,-> - - - 8 0 3>
<80:__prof_init_use_fs 4 1 3 2 6:46 37 - <43
4
0
24
29
1
-
-> <44
4
0
24
29
4
-
-> - - 8 0 0>
<81:__prof_init_use_stdout 4 1 3 2 6:51 37 - <45
4
0
28
33
1
-
-> <46
4
0
28
33
4
-
-> - - 8 0 0>
82:__libc_references 4 1 2 2 1:1:..\..\..\prof_io_use_fs.c:1 16 18 - - - - 8 0 1056> 1 4
BEGIN : 0 1
FUNC 5:22:..\..\..\prof_io_use_fs.c:2 0 <47
3
1
1:23
:33
23
-
-
83:.c1 4 3 7 1 5:22 80:5,-,-,70,0,- - - - 32 0 264> 41 <48
2
0
1:23
:33
-
-
-> 47 <49
3
0
:23
:33
24
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :23 0 47 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 15:24 0 47 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 47
ST 1:23 0 - 14
OBJ : 0 - 80 83
OBJ 27:26 0 - 70 76
JUMPT 15:24 0 47 1 profData=0,1,1,0,0,0,90,50,0,0
NE : 0 - 81:1,_Bool,- profData=0,1,1,0,0,0,-1,50,0,0
LD : 0 - 6
OBJ : 0 - 5 77
CON : 0 - 6 0
BLOCK 30:26 0 47 profData=0,0,0,1,1,0,0,0,0.1,0.1
STAT : 0 47
ST : 0 - 14
LD 27 0 - 70
OBJ : 0 - 80 83
CALL 37 0 - 55
OBJ 32 0 - 66 67
ARG 48 0 - 14
CONV 38 0 - 46
OBJ : 0 - 82:5,-,-,77,0,- 78
ARG 53 0 - 14
CONV 50 0 - 46
OBJ : 0 - 83:5,-,-,79,0,- 79
NIL 53 0 - 14
RETURN 17 0 47 3 profData=0,0,1,0,0,0,0,100,0,0
CONV 24 0 - 6
NE 27 0 - 81 profData=0,1,1,0,0,0,60,50,0,0
CONV : 0 - 13
LD : 0 - 55
LD : 0 - 70
OBJ : 0 - 80 83
CON 59 0 - 13 0
LABEL 9:24 0 47 1
BLOCK 28:30 0 47 profData=0,0,0,1,1,0,0,0,0.9,0.9
STAT : 0 47
ST 20 0 - 14
LD 17 0 - 70
OBJ : 0 - 80 83
ADD 22 0 - 55
CONV : 0 - 55
OBJ : 0 - 56 58
CON : 0 - 6 14
RETURN 17:31 0 47 2 profData=0,0,1,0,0,0,0,100,0,0
CON 24 0 - 6 1
LABEL 1:33 0 47 2
LABEL : 0 47 3
EXIT : 0 47 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:35 0 <50
3
0
1:36
:38
25
-
-> 42 <51
2
0
:36
:38
-
-
-> 50 <52
3
0
:36
:38
26
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :36 0 50 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 30:37 0 50 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 50
CONV 15 0 - 14
CALL : 0 - 4
OBJ 9 0 - 62 62
ARG 17 0 - 14
CONV 16 0 - 65
LD : 0 - 46
OBJ : 0 - 45 43
ARG 20 0 - 14
CON 19 0 - 4 1
ARG 25 0 - 14
CONV 22 0 - 4
LD : 0 - 6
OBJ : 0 - 5 44
ARG 29 0 - 14
LD 27 0 - 55
OBJ : 0 - 70 76
NIL 29 0 - 14
NOJUMP 30 0 50 profData=0,0,1,0,0,0,0,0,0,0
EXIT 1:38 0 50 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:40 0 <53
3
1
1:41
:44
27
-
-
84:.c1 4 3 7 1 6:40 80 - - - 32 0 264> 45 <54
2
0
1:41
:44
-
-
-> 53 <55
3
0
:41
:44
28
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :41 0 53 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 19:42 0 53 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 53
ST 16 0 - 14
OBJ : 0 - 80 84
OBJ : 0 - 70 76
STAT 19 0 53
CONV 15 0 - 14
CALL : 0 - 6
OBJ 9 0 - 68 70
ARG 18 0 - 14
LD 16 0 - 55
LD : 0 - 70
OBJ : 0 - 80 84
NIL 18 0 - 14
STAT :43 0 53
ST 12 0 - 14
LD 9 0 - 70
OBJ : 0 - 80 84
CON 14 0 - 55 0
NOJUMP 18 0 53 profData=0,0,1,0,0,0,0,0,0,0
EXIT 1:44 0 53 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:46 0 <56
3
0
1:47
:49
43
-
-> 80 <57
2
0
:47
:49
-
-
-> 56 <58
3
0
:47
:49
44
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :47 0 56 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 27:48 0 56 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 56
CALL 25 0 - 14
OBJ 9 0 - 37 46
NIL 26 0 - 14
NOJUMP 27 0 56 profData=0,0,1,0,0,0,0,0,0,0
EXIT 1:49 0 56 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:51 0 <59
3
0
1:52
:55
45
-
-> 81 <60
2
0
:52
:55
-
-
-> 59 <61
3
0
:52
:55
46
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :52 0 59 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 23:53 0 59 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 59
ST 20 0 - 14
OBJ 9 0 - 5 77
CON 22 0 - 6 1
STAT 27:54 0 59
CALL 25 0 - 14
OBJ 9 0 - 37 46
NIL 26 0 - 14
NOJUMP 27 0 59 profData=0,0,1,0,0,0,0,0,0,0
EXIT 1:55 0 59 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:57 0 <62
3
2
1:58
:73
31
-
-
85:ix 4 3 7 1 13:59 5 - - - 16 0 8
86:dig 4 3 7 1 14:60 8 - - - 8 0 8
87:.s1 4 3 7 1 6:57 7 - - - 32 0 8
88:.c2 4 3 7 1 : 5 - - - 16 0 264> 47 <63
2
0
1:58
:73
-
-
-> 62 <64
3
0
:58
:73
32
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :58 0 62 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 20:62 0 62 profData=0,0,0,1,1,0,0,0,1,1
STAT 22 0 62
ST : 0 - 14
OBJ : 0 - 5 88
SUB : 0 - 6
LD 17 0 - 6
OBJ : 0 - 5 49
CON 22 0 - 6 1
STAT : 0 62
ST : 0 - 14
OBJ 24 0 - 5 85
LD 22 0 - 6
OBJ : 0 - 5 88
STAT 42 0 62
ST : 0 - 14
OBJ : 0 - 7 87
ADD 26:67 0 - 8
LD 25 0 - 8
OBJ : 0 - 7 48
LD 22:62 0 - 6
OBJ : 0 - 5 88
JUMP 31 0 62 9 profData=0,1,1,0,0,0,7,50,0,0
LABEL 42 0 62 -1 loopinfo=2,0,0,-1,0,85,-3,-3,1,0,-1,0,0,0,1,0,1,1
BLOCK 34:64 0 62 profData=0,0,0,1,1,0,0,0,93,93
STAT : 0 62
ST 21 0 - 14
OBJ 17 0 - 8 86
AND 28 0 - 84:1,char,4
CONV 24 0 - 84
LD : 0 - 50
OBJ : 0 - 49 50
CON 30 0 - 84 f
JUMPT 22:66 0 62 5 profData=0,1,1,0,0,0,62,50,0,0
NE : 0 - 81 profData=0,1,1,0,0,0,-1,50,0,0
LD : 0 - 9
OBJ : 0 - 8 86
CON : 0 - 84 0
BLOCK 30 0 62 profData=0,0,0,1,1,0,0,0,35,35
JUMPT : 0 62 4 profData=0,1,1,0,0,0,-1,50,0,0
NE : 0 - 81 profData=0,1,1,0,0,0,-1,50,0,0
LD : 0 - 50
OBJ : 0 - 49 50
CON : 0 - 50 0
BLOCK 38 0 62 profData=0,0,0,1,1,0,0,0,18,18
JUMPT : 0 62 3 profData=0,1,1,0,0,0,-1,50,0,0
NE : 0 - 81 profData=0,1,1,0,0,0,-1,50,0,0
LD : 0 - 6
OBJ : 0 - 5 51
CON : 0 - 6 0
BLOCK 53 0 62 profData=0,0,0,1,1,0,0,0,8.8,8.8
JUMPF : 0 62 2 profData=0,1,1,0,0,0,55,50,0,0
NE : 0 - 81 profData=0,1,1,0,0,0,-1,50,0,0
LD 51 0 - 6
OBJ : 0 - 5 85
LD 58 0 - 6
OBJ : 0 - 5 88
BLOCK 36:67 0 62 profData=0,0,0,1,1,0,0,0,4,4
STAT : 0 62
ST 31 0 - 14
LD 26 0 - 8
OBJ : 0 - 7 87
CON 33 0 - 84 20
JUMP 36 0 62 8 profData=0,0,1,0,0,0,0,100,0,0
LABEL 17:66 0 62 2
LABEL 60 0 62 3
LABEL : 0 62 4
LABEL : 0 62 5
BLOCK 22:68 0 62 profData=0,0,0,1,1,0,0,0,89,89
JUMPF : 0 62 6 profData=0,1,1,0,0,0,-1,50,0,0
GT 30 0 - 81 profData=0,1,1,0,0,0,-1,50,0,0
LD 26 0 - 9
OBJ : 0 - 8 86
CON 32 0 - 84 9
BLOCK 49:69 0 62 profData=0,0,0,1,1,0,0,0,45,45
STAT : 0 62
ST 31 0 - 14
LD 26 0 - 8
OBJ : 0 - 7 87
CONV 37 0 - 84
ADD : 0 - 6
CONV 33 0 - 6
LD : 0 - 9
OBJ : 0 - 8 86
CON 44 0 - 6 57
JUMP 49 0 62 7 profData=0,0,1,0,0,0,0,100,0,0
LABEL 22:68 0 62 6
BLOCK 42:71 0 62 profData=0,0,0,1,1,0,0,0,45,45
STAT : 0 62
ST 31 0 - 14
LD 26 0 - 8
OBJ : 0 - 7 87
CONV 37 0 - 84
ADD : 0 - 6
CONV 33 0 - 6
LD : 0 - 9
OBJ : 0 - 8 86
CON 39 0 - 6 30
NOJUMP 42 0 62 profData=0,0,1,0,0,0,0,0,0,0
LABEL 17:70 0 62 7
LABEL :68 0 62 8
BLOCK 42:62 0 62 profData=0,0,0,1,1,0,0,0,93,93
STAT : 0 62
ST 37 0 - 14
OBJ 33 0 - 49 50
SHR 37 0 - 50
LD 33 0 - 50
OBJ : 0 - 49 50
CON 41 0 - 6 4
STAT 22 0 62
ST : 0 - 14
OBJ : 0 - 7 87
SUB : 0 - 8
LD : 0 - 8
OBJ : 0 - 7 87
CON : 0 - 6 1
STAT : 0 62
ST : 0 - 14
OBJ 24 0 - 5 85
SUB 22 0 - 6
LD 24 0 - 6
OBJ : 0 - 5 85
CON 22 0 - 6 1
NOJUMP 31 0 62 profData=0,0,0,0,0,0,0,0,0,0
LABEL : 0 62 9
BLOCK : 0 62 profData=0,0,0,0,0,0,0,0,0,0
JUMPT : 0 62 -1 profData=0,1,1,0,0,0,99,50,0,0
GE 27 0 - 81 profData=0,1,1,0,0,0,84,50,0,0
LD 24 0 - 6
OBJ : 0 - 5 85
CON 30 0 - 6 0
EXIT 1:73 0 62 profData=0,0,0,1,0,0,0,0,1,0
FUNC 6:75 0 <65
3
0
1:76
:78
33
-
-> 52 <66
2
0
:76
:78
-
-
-> 65 <67
3
0
:76
:78
34
-
-> profData=0,0,0,0,1,0,0,0,0,1
ENTRY :76 0 65 profData=0,0,0,1,0,0,0,0,1,0
BLOCK 27:77 0 65 profData=0,0,0,1,1,0,0,0,1,1
STAT : 0 65
CONV 15 0 - 14
CALL : 0 - 6
OBJ 9 0 - 58 59
ARG 17 0 - 14
CONV 16 0 - 46
LD : 0 - 8
OBJ : 0 - 7 53
ARG 26 0 - 14
ADD 19 0 - 55
CONV : 0 - 55
OBJ : 0 - 56 58
CON : 0 - 6 28
NIL 26 0 - 14
NOJUMP 27 0 65 profData=0,0,1,0,0,0,0,0,0,0
EXIT 1:78 0 65 profData=0,0,0,1,0,0,0,0,1,0
DATA 19:19 0 1 76
PAD : 0 1
CON : 0 - 6 4
DATA 25:20 0 1 77
PAD : 0 1
CON : 0 - 6 4
DATA 38:26 0 1 78
INIT : 0 1
CON : 0 - 84 61
INIT : 0 1
CON : 0 - 84 6d
INIT : 0 1
CON : 0 - 84 6f
INIT : 0 1
CON : 0 - 84 6e
INIT : 0 1
CON : 0 - 84 2e
INIT : 0 1
CON : 0 - 84 70
INIT : 0 1
CON : 0 - 84 72
INIT : 0 1
CON : 0 - 84 66
PAD : 0 1
CON : 0 - 6 1
DATA 50 0 1 79
INIT : 0 1
CON : 0 - 84 77
PAD : 0 1
CON : 0 - 6 1
END 1:79 0 1
TAIL -:- 0 -
.

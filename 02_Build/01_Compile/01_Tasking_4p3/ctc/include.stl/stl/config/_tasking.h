

/*
 * Purpose of this file :
 *
 * This file contains all compiler specifics for the TASKING C++ compilers. The
 * macro __TASKING__ indicates that a TASKING C++ compiler is used for the
 * compilation. As the TASKING C++ compilers are used for a wide range of embedded
 * targets, several conditional blocks can occur. These are usually named like
 * __CP<target>__.
 * 
 */

#define _STLP_COMPILER "TASKING"

// Define the integer width of the hardware
#define __TSW_INT_WIDTH 32

// Disable wide character support if not supported by the compiler
#if !defined(_WCHAR_T)
#  define _STLP_NO_WCHAR_T  1
#  define _STLP_NO_MBSTATE_T  1
#  define _STLP_NO_WIDE_STREAMS  1
#endif

// Check if long long is available
#if !defined(__NO_LONG_LONG)
#  define _STLP_LONG_LONG long long
#endif

// Check for bool type
#if !defined(_BOOL)
#  define  _STLP_NO_BOOL 1
#endif

// Enable __attribute__((weak)) support
#define _STLP_WEAK_ATTRIBUTE 1

// Check for namespace support
#if !defined(__NAMESPACES)
#  define _STLP_NO_NAMESPACES 1
#  if defined(__BUILDING_STLPORT)
#    define _STLP_HAS_NO_NAMESPACES 1
#  endif
#endif

// Check for exception handling
#if !defined(__EXCEPTIONS)
#  define _STLP_HAS_NO_EXCEPTIONS 1
#  define _STLP_DONT_USE_EXCEPTIONS 1
#  define _STLP_NO_EXCEPTION_SPEC 1
#endif

// Check endianness
#if defined(__BIG_ENDIAN__)
#  define _STLP_BIG_ENDIAN 1
#endif

// Disable threads
#define _STLP_NO_THREADS 1
#define _NOTHREADS 1

// Use C-style standard I/O.
#define _STLP_USE_STDIO_IO 1

// Disable compatibility anachronisms
#define _STLP_NO_ANACHRONISMS 1

// New-style headers are available
#define _STLP_USE_NEW_C_HEADERS 1
#define _STLP_HAS_NEW_NEW_HEADER 1

// Disable initialization of static data members
//#define _STLP_STATIC_CONST_INIT_BUG 1

// Force string termination.
#define _STLP_FORCE_STRING_TERMINATION 1

// Use new for allocations
#define _STLP_USE_NEWALLOC 1

// Disable the use of the private namespace
//#define _STLP_NO_OWN_NAMESPACE 1
#define _STLP_DONT_USE_PRIV_NAMESPACE 1

// Import C library into the "std" namespace
//#define _STLP_IMPORT_VENDOR_CSTD 1

// Various include directories
#define _STLP_NATIVE_HEADER(header)    <../include.cpp/header>
#define _STLP_NATIVE_C_HEADER(header)    <../include/header>
#define _STLP_NATIVE_CPP_C_HEADER(header)    <../include.cpp/header>
#define _STLP_NATIVE_CPP_RUNTIME_HEADER(header) <../include.cpp/header>

// Enable the include_next preprocessor directive
//#define _STLP_HAS_INCLUDE_NEXT 1

// Enable uncaugh and unexpected except support
#undef _STLP_NO_UNCAUGHT_EXCEPT_SUPPORT
#undef _STLP_NO_UNEXPECTED_EXCEPT_SUPPORT

// Some additional I/O settings
#if !defined (_STLP_USE_NO_IOSTREAMS)
#  define _STLP_NEW_IO_NAMESPACE _STLP_STD
#endif

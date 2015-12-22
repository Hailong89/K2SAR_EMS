/**************************************************************************
**
**  FILE        :  tasking_config.h
**
**  DESCRIPTION :  TASKING C++ configuration macros
**
**  COPYRIGHT   :  Copyright 1998-2014 Altium BV
**
**************************************************************************/

#ifndef _TASKING_CONFIG_H
#define _TASKING_CONFIG_H

// Define a macro to include the native C/C++ header files instead of the
// STLPort versions with the same name
# if !defined(__TASKING_MAKE_HEADER)
#  define __TASKING_MAKE_HEADER(path, header) <path/header>
# endif

#if !defined (__TASKING_C_NATIVE_HEADER)
# if !defined (__TASKING_C_NATIVE_INCLUDE_PATH)
#  define __TASKING_C_NATIVE_INCLUDE_PATH ../include
# endif
# define __TASKING_C_NATIVE_HEADER(header) __TASKING_MAKE_HEADER(__TASKING_C_NATIVE_INCLUDE_PATH,header)
#endif

#if !defined (__TASKING_CXX_NATIVE_HEADER)
# if !defined (__TASKING_CXX_NATIVE_INCLUDE_PATH)
#  define __TASKING_CXX_NATIVE_INCLUDE_PATH ../include.cpp
# endif
# define __TASKING_CXX_NATIVE_HEADER(header) __TASKING_MAKE_HEADER(__TASKING_CXX_NATIVE_INCLUDE_PATH,header)
#endif

// Define the qualifier that should be used to access something defined
// in the namespace of the runtime. This is "std" if the runtime uses
// namespaces or "" otherwise.
#if defined(__NAMESPACES)
# if !defined(STD_NAMESPACE)
#  define STD_NAMESPACE std
# endif /* !defined(STD_NAMESPACE) */
#else /* !defined(__NAMESPACES) */
# if !defined(STD_NAMESPACE)
#  define STD_NAMESPACE /* empty */
# endif /* !defined(STD_NAMESPACE) */
# if defined(__IMPLICIT_USING_STD)
   // When not using namespaces, do not implicitely use the std namespace
#  undef __IMPLICIT_USING_STD
# endif /* defined(__IMPLICIT_USING_STD) */
#endif /* defined(__NAMESPACES) */

// Define macros to start and end the std namespace
#if defined(__NAMESPACES)
# define __TASKING_START_NAMESPACE namespace STD_NAMESPACE {
# define __TASKING_END_NAMESPACE }
# if defined(__IMPLICIT_USING_STD)
#  define __TASKING_USING_NAMESPACE using namespace STD_NAMESPACE;
# else /* !defined(__IMPLICIT_USING_STD) */
#  define __TASKING_USING_NAMESPACE /* empty */
# endif /* defined(__IMPLICIT_USING_STD) */
#else /* !defined(__NAMESPACES) */
# define __TASKING_START_NAMESPACE /* empty */
# define __TASKING_END_NAMESPACE /* empty */
# define __TASKING_USING_NAMESPACE /* empty */
#endif /* defined(__NAMESPACES) */

/*
Should the TASKING-supplied exception classes be used.  This flag may be
set to FALSE if a third party standard library is being used that includes
classes such as bad_alloc, etc.
*/
#ifndef __USE_TASKING_EXCEPTION_CLASSES
#define __USE_TASKING_EXCEPTION_CLASSES 1
#endif /* !defined(__USE_TASKING_EXCEPTION_CLASSES) */

#endif  // _TASKING_CONFIG_H

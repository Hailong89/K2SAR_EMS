#ifndef __VA_TRICORE__
#define __VA_TRICORE__


/* Define __gnuc_va_list.  */

enum type_class
{
  no_type_class = -1,
  void_type_class, integer_type_class, char_type_class,
  enumeral_type_class, boolean_type_class,
  pointer_type_class, reference_type_class, offset_type_class,
  real_type_class, complex_type_class,
  function_type_class, method_type_class,
  record_type_class, union_type_class,
  array_type_class, string_type_class, set_type_class, file_type_class,
  lang_type_class
};

#ifndef __GNUC_VA_LIST
#define __GNUC_VA_LIST
#ifdef _STDARG_H
  typedef void *__gnuc_va_list;
#else
  typedef struct
  {
	void *__va_dreg[4];	/* pointer to d4, d5, d6, d7 */
	void *__va_areg[4];	/* pointer to a4, a5, a6, a7 */
	void *__va_stck;	/* pointer to stack args */
  } * __gnuc_va_list;
#endif
#endif

/* Define the standard macros for the user,
   if this invocation was from the user program.  */

/* Amount of space required in an argument list for an arg of type TYPE.
   TYPE may alternatively be an expression whose type is used.  */

#define __va_rounded_size(TYPE)  \
  (((sizeof (TYPE) + sizeof (int) - 1) / sizeof (int)) * sizeof (int))

#ifdef _STDARG_H

#define va_start(AP, LASTARG) 						\
 (AP = ((__gnuc_va_list) __builtin_next_arg (LASTARG)))
#undef va_end
void va_end (__gnuc_va_list);		/* Defined in libgcc.a */
#define va_end(AP)	((void)0)

#else

typedef struct { } __stck_parm__;

#define va_alist  __builtin_va_alist
#define va_dcl    __stck_parm__ __builtin_va_alist;...
#define va_start(AP)							\
  do {									\
	(AP) = (__gnuc_va_list) __builtin_saveregs();			\
	if (__builtin_args_info(0) & 0x10) (AP)->__va_dreg[0]=0;	\
	if (__builtin_args_info(0) & 0x20) (AP)->__va_dreg[1]=0;	\
	if (__builtin_args_info(0) & 0x40) (AP)->__va_dreg[2]=0;	\
	if (__builtin_args_info(0) & 0x80) (AP)->__va_dreg[3]=0;	\
	if (__builtin_args_info(0) & 0x100000) (AP)->__va_areg[0]=0;	\
	if (__builtin_args_info(0) & 0x200000) (AP)->__va_areg[1]=0;	\
	if (__builtin_args_info(0) & 0x400000) (AP)->__va_areg[2]=0;	\
	if (__builtin_args_info(0) & 0x800000) (AP)->__va_areg[3]=0;	\
	(AP)->__va_stck = (void*) & __builtin_va_alist;			\
  } while (0)
#define va_end(AP)	((void)0)

#endif /* _STDARG_H */

/* We cast to void * and then to TYPE * because this avoids
   a warning about increasing the alignment requirement.  */

#ifdef _STDARG_H
#define va_arg(AP, TYPE)						\
 ( (sizeof (TYPE) > 8)							\
   ? (AP = (__gnuc_va_list) ((char *) (AP) + 4),			\
      **((TYPE **) (void *) ((char *) (AP) - 4)))			\
   : (AP = (__gnuc_va_list) ((char *) (AP) + __va_rounded_size (TYPE)),	\
      *((TYPE *) (void *) ((char *) (AP) - __va_rounded_size (TYPE)))) )
#else
/* This is difficult because registers are NOT used in sequential order */
/* e.g. (int, long long, int) uses (d4, (d6,d7), d5)                    */
/* Fortunately, optimization eliminates all cases but one               */
#define va_arg(AP, TYPE)						\
({									\
   TYPE *result;							\
   if ( __builtin_classify_type(*(TYPE *)0) == pointer_type_class	\
   ||   __builtin_classify_type(*(TYPE *)0) == reference_type_class )	\
   {									\
      if ((AP)->__va_areg[0] != 0)					\
         { result=(TYPE*)(AP)->__va_areg[0]; (AP)->__va_areg[0]=0; }	\
      else if ((AP)->__va_areg[1] != 0)					\
         { result=(TYPE*)(AP)->__va_areg[1]; (AP)->__va_areg[1]=0; }	\
      else if ((AP)->__va_areg[2] != 0)					\
         { result=(TYPE*)(AP)->__va_areg[2]; (AP)->__va_areg[2]=0; }	\
      else if ((AP)->__va_areg[3] != 0)					\
         { result=(TYPE*)(AP)->__va_areg[3]; (AP)->__va_areg[3]=0; }	\
      else								\
         { result=(TYPE*)(AP)->__va_stck;((char*)(AP)->__va_stck)+=4; }	\
   }									\
   else if (sizeof (TYPE) > 0 && sizeof (TYPE) <= 4)			\
   {									\
      if ((AP)->__va_dreg[0] != 0)					\
         { result=(TYPE*)(AP)->__va_dreg[0]; (AP)->__va_dreg[0]=0; }	\
      else if ((AP)->__va_dreg[1] != 0)					\
         { result=(TYPE*)(AP)->__va_dreg[1]; (AP)->__va_dreg[1]=0; }	\
      else if ((AP)->__va_dreg[2] != 0)					\
         { result=(TYPE*)(AP)->__va_dreg[2]; (AP)->__va_dreg[2]=0; }	\
      else if ((AP)->__va_dreg[3] != 0)					\
         { result=(TYPE*)(AP)->__va_dreg[3]; (AP)->__va_dreg[3]=0; }	\
      else								\
         { result=(TYPE*)(AP)->__va_stck;((char*)(AP)->__va_stck)+=4; }	\
   }									\
   else if (sizeof (TYPE) > 4 && sizeof (TYPE) <= 8)			\
   {									\
      if ((AP)->__va_dreg[0] != 0 && (AP)->__va_dreg[1] != 0)		\
      {									\
         result = (TYPE*)(AP)->__va_dreg[0];				\
         (AP)->__va_dreg[0] = 0; (AP)->__va_dreg[1] = 0;		\
      }									\
      else if ((AP)->__va_dreg[2] != 0 && (AP)->__va_dreg[3] != 0)	\
      {									\
         result = (TYPE*)(AP)->__va_dreg[2];				\
         (AP)->__va_dreg[2] = 0; (AP)->__va_dreg[3] = 0;		\
      }									\
      else								\
      {									\
         result = (TYPE*)(AP)->__va_stck;				\
         ((char*)(AP)->__va_stck)+=8;					\
      }									\
   }									\
   else if (sizeof (TYPE) > 8)						\
   {									\
      if ((AP)->__va_areg[0] != 0)					\
         {result=*((TYPE**)(AP)->__va_areg[0]); (AP)->__va_areg[0]=0;}	\
      else if ((AP)->__va_areg[1] != 0)					\
         {result=*((TYPE**)(AP)->__va_areg[1]); (AP)->__va_areg[1]=0;}	\
      else if ((AP)->__va_areg[2] != 0)					\
         {result=*((TYPE**)(AP)->__va_areg[2]); (AP)->__va_areg[2]=0;}	\
      else if ((AP)->__va_areg[3] != 0)					\
         {result=*((TYPE**)(AP)->__va_areg[3]); (AP)->__va_areg[3]=0;}	\
      else								\
         {result=*(TYPE**)(AP)->__va_stck;((char*)(AP)->__va_stck)+=4;}	\
   }									\
   else if (sizeof (TYPE) == 0)						\
           result = (TYPE*)(AP)->__va_stck; 				\
   *result;								\
})
#endif

/* Copy __gnuc_va_list into another variable of this type.  */
#define __va_copy(dest, src) (dest) = (src)

#endif /* __VA_TRICORE__ */

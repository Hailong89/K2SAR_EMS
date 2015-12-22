#include <stdio.h>
#include <ctype.h>


#pragma section .rodata.argbuf 4 a
/* the debugger will save the argument string into the buffer __init_arg_buf */
#define __INIT_ARG_BUF_SIZE  4
__attribute__ ((weak)) const char __init_arg_buf[__INIT_ARG_BUF_SIZE] = {0,0,0,0};
__attribute__ ((weak)) const int __init_arg_buf_len = __INIT_ARG_BUF_SIZE;
#pragma section
/* 
 * int _init_args(char *args)
 * scan the string in __init_arg_buf for argument strings seperated by white 
 * space characters
 * create the argv vector with adresses to the arguments on the stack
 * the modified stack pointer is returned in register a2
 * the number of found argumnets is returnd in d2
 *
 */
int
_init_args(char **stackp)
{
	int n = 0;
	char *cp;
	char **p;
        char *ep;

	if (__init_arg_buf[0] == 0 || __init_arg_buf_len < 4) {
		stackp -= 2;
		*stackp = 0;
		asm ("mov.aa %%a2,%0"::"a" (stackp) : "a2");
		return 0;
	}
	/* count arguments */
	cp = __init_arg_buf;
        ep = &__init_arg_buf[__init_arg_buf_len];
	while (*cp && isspace(*cp) && (cp < ep)) cp++;
	if (*cp) n++;
	for (; *cp && (cp < ep); cp++) {
		if (isspace(*cp)) {
			while (*cp && isspace(*cp) && (cp < ep)) cp++;
			if (*cp) n++;
		}
	}


	stackp -= (n & 1)? n+1:n+2;

	p = stackp;
	
	cp = __init_arg_buf;
	while (*cp && isspace(*cp) && (cp < ep)) cp++;
	*p++ = cp;
	for (; *cp && (cp < ep); cp++) {
		if (isspace(*cp)) {
			*cp++ = 0;
			while (*cp && isspace(*cp) && (cp < ep)) cp++;
			if (*cp) *p++ = cp;
		}
	}
	*p = 0;
	asm ("mov.aa %%a2, %0" : : "a" (stackp): "a2");
	return n;
}



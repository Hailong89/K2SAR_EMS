#include<stddef.h>
#include<errno.h>
#include<stdio.h>
#include<sys/stat.h>
#include<sys/times.h>
#include<sys/time.h>

void abort ()
{
  asm volatile ("debug");
  __asm__ volatile ("mov.a %%a14, %0;j _exit":: "d" (0xdeadbeef));
  while (1) ;
};


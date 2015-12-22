#include<stddef.h>
#include<errno.h>
#include<stdio.h>
#include<sys/stat.h>
#include<sys/times.h>
#include<sys/time.h>

#define FREQ 100000000	/* clock rate of processor in Hz */

#if 0
char *__progname;


void abort ()
{
        asm volatile ("debug");
        while (1) ;
};


void _exit (int status)
{
        asm volatile ("debug");
        while (1) ;
};
#endif


int getpid ()
{
	return 0;
};


int isatty (int desc)
{
	if (desc==0 || desc==1 || desc==2) return 1;
	return 0;
};

#if 0

extern char __HEAP;
extern char __HEAP_END;

void* sbrk (size_t incr)
{
	void *ret;
	static char* heap_top	= & __HEAP;
	char* new_heap_top = heap_top + incr;
	if (new_heap_top > & __HEAP_END)
	{
		errno = ENOMEM;
		return (void*)(-1);
	}
	if (new_heap_top < & __HEAP)
		abort();
	ret = (void*) heap_top;
	heap_top = new_heap_top;
	return ret;
};
#endif


int fork ()
{
	abort();
};


int wait (int *status)
{
	abort();
};


int kill (int pid, int sig)
{
	abort();
};


int link (const char *old, const char *new)
{
	abort();
};


#if 0
int unlink (const char *file)
{
	abort();
};
#endif



int stat (const char *file, struct stat *buf)
{
	abort();
};


int fstat (int fd, struct stat *buf)
{
	if (fd < 0 || fd > 2)
	{
		errno = EBADF;
		return -1;
	}
	buf->st_mode = S_IFCHR;
	buf->st_blksize = S_BLKSIZE;
	return 0;
};



int gettimeofday (struct timeval *tv, struct timezone *tz)
{
	abort();
};


#if 0
int open (const char *file, int flags, int mode)
{
	abort();
};
#endif


#if 0
int close (int fd)
{
	abort();
};
#endif

#if 0
extern char readchar ();

long read (int fd, void *buf, size_t cnt)
{
	char ch, *cbuf = (char*)buf;
	long len=0;
        while (len < cnt)
	{
	   ch = readchar ();
	   if (ch == EOF) break;
	   *cbuf++ = ch; len++;
	   if (ch == '\n') break;
	}
	return len;
};
#endif


#if 0
extern void writechar (char);


long write (int fd, const void *buf, size_t cnt)
{
	int i;
	char *cbuf = (char*)buf;
	for (i=0; i<cnt; ++i) writechar (*cbuf++);
	return cnt;
};
#endif


#if 0
off_t lseek (int fd, off_t pos, int whence)
{
	abort();
};
#endif


#if 0
unsigned long usec ()
{
#if defined(__TC1796__) || defined(__TC1766) || defined(__TC1762__) || defined(__TC1782__) || defined(__TC1130__)
#define STM_BASE	0xf0000200
#elif defined(__TC1920__) || defined(__TC1775__) || defined(__TC1765__)
#define STM_BASE 0xf0000300
#elif defined (__TC12__) || defined (__TC13__)
#define STM_BASE 0xf0000300
#endif
	clock_t clk = *(clock_t *) (STM_BASE+0x10);
	return clk;
};

clock_t times (struct tms *buf)
{
	clock_t clk = (clock_t ) usec();
	buf->tms_utime = clk;
	buf->tms_stime = 0;
	buf->tms_cutime = 0;
	buf->tms_cstime = 0;
	return clk;
};
#endif

#include "dirent.h"

int getdents(unsigned int fd, struct dirent *dirp, unsigned int count)
{
	abort();
}

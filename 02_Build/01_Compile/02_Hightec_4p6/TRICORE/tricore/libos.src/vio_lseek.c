#include <unistd.h>
#include "vio-syscalls.h"


off_t
lseek (int desc, off_t offset, int whence)
{
  asm volatile ("	\n\
    mov %%d12,%0	\n\
    j ___virtio_hnd	\n\
  ": : "i" (SYS_LSEEK) );
}

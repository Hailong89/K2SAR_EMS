/*====================================================================
// ***********************************************************************
//
//  $Id: simio.c,v 1.5 2006-09-29 11:12:35 hennigb Exp $
//
//  FILE        :  simio.c
//
//  DESCRIPTION :  Simulated I/O for stdin,stdout and stderr
//                 ASCII terminal window via target - host
//                 communication channel
//
//  COPYRIGHT   :  pls Programmierbare Logik & Systeme GmbH  1999-2004
//
// ***********************************************************************

*====================================================================*/

#include <stdio.h>
#include "compiler.h" // READ and WRITE

// ***********************************************************************
//
//   TYPE DEFINITIONS
//
// ***********************************************************************
typedef unsigned int UINT;
typedef unsigned char BYTE;
typedef unsigned short WORD;
typedef unsigned long DWORD;
typedef unsigned int BOOL;

#ifndef FALSE
#define FALSE    (0)
#endif
#ifndef TRUE
#define TRUE     (!FALSE)
#endif
#ifndef EOF
#define EOF      (1)
#endif
//
// nonblocking simio = 1
//
#define NONBLOCKINGSIMIO 1
//
#define SIMIO_TARGET_BUFFER_SIZE        1024

typedef struct tagSimIOBuffer {
  WORD wReadIndex;
  WORD wWriteIndex;
  BYTE byBuffer[SIMIO_TARGET_BUFFER_SIZE];

} SIMIOBUFFER;

typedef struct tagJtagSimioAccess {
  DWORD dwSignature;
  WORD wHTBufSize;
  WORD wTHBufSize;
  volatile SIMIOBUFFER *dwHTBufAddr;
  volatile SIMIOBUFFER *dwTHBufAddr;
} TJtagSimioAccess;

#define JTAG_SIMIO_SIGNATURE 0x4741544A	// "JTAG"

// ***********************************************************************
//
//   PROTOTYPS OF INTERNAL FUNCTIONS
//
// ***********************************************************************
static UINT GetTHBufferSpace (void);
static UINT GetHTCharCount (void);
static BYTE GetByteFromHost (void);
static void PutByteToHost (BYTE Data);
#ifdef __cplusplus
extern "C" {
	size_t WRITE (int fd, char *buffer, size_t count);
	size_t READ (int fd, char *buffer, size_t count);
}
#endif /* __cpluscplus */
// ***********************************************************************
//
//   MODULE STATIC VARIABLES
//
// ***********************************************************************
static volatile SIMIOBUFFER HTBuffer = { 0, 0, {0} };
static volatile SIMIOBUFFER THBuffer = { 0, 0, {0} };

TJtagSimioAccess g_JtagSimioAccess = {
  JTAG_SIMIO_SIGNATURE,
  SIMIO_TARGET_BUFFER_SIZE,
  SIMIO_TARGET_BUFFER_SIZE,
  &HTBuffer,
  &THBuffer
};

// ***********************************************************************
//
//   FUNCTIONS
//
// ***********************************************************************
// ***********************************************************************
//
//  Get free buffer space for output buffer (non blocking
//
// ***********************************************************************

static UINT GetTHBufferSpace (void)
{
  UINT uiBufferSpace;
  WORD wReadIndex, wWriteIndex;
  wReadIndex  = g_JtagSimioAccess.dwHTBufAddr->wReadIndex;
  wWriteIndex = g_JtagSimioAccess.dwHTBufAddr->wWriteIndex;

  if (wWriteIndex < wReadIndex) {
    uiBufferSpace = wReadIndex - wWriteIndex - 1;
  } else {
    uiBufferSpace = wReadIndex +
      (g_JtagSimioAccess.wHTBufSize - 1 - wWriteIndex);
  }
  // check for new space we set the readindex and losing old data
#if(NONBLOCKINGSIMIO == 1)
  if(uiBufferSpace == 0)
  {
  	if( ++wReadIndex >= g_JtagSimioAccess.wHTBufSize )
  	{
  		wReadIndex = 0;
  	}
  	g_JtagSimioAccess.dwHTBufAddr->wReadIndex = wReadIndex;
  	uiBufferSpace = 1;
  }
  // we need 1 or more Bytes of space
#endif
  return uiBufferSpace;
}

// ***********************************************************************
//
//
//
// ***********************************************************************
static UINT GetHTCharCount (void)
{
  WORD wReadIndex, wWriteIndex;
  wReadIndex  = g_JtagSimioAccess.dwHTBufAddr->wReadIndex;
  wWriteIndex = g_JtagSimioAccess.dwHTBufAddr->wWriteIndex;

  if (wWriteIndex >= wReadIndex) {
    return wWriteIndex - wReadIndex;
  } else {
    return wWriteIndex +
      (g_JtagSimioAccess.wHTBufSize - wReadIndex);
  }
}

// ***********************************************************************
//
//  Read byte from HT transfer buffer
//
// ***********************************************************************
static BYTE GetByteFromHost (void)
{
  WORD wReadIndex;
  BYTE ucByte;
  wReadIndex  = g_JtagSimioAccess.dwHTBufAddr->wReadIndex;
  ucByte = g_JtagSimioAccess.dwHTBufAddr->byBuffer[wReadIndex++];
  if (wReadIndex >= g_JtagSimioAccess.wHTBufSize)
    wReadIndex = 0;
  g_JtagSimioAccess.dwHTBufAddr->wReadIndex = wReadIndex;
  return ucByte;
}

// ***********************************************************************
//
//  write byte to TH transfer buffer
//
// ***********************************************************************
static void PutByteToHost (BYTE Data)
{
  WORD wWriteIndex;
  while (!GetTHBufferSpace ());	// wait until buffer space is available
  wWriteIndex = g_JtagSimioAccess.dwTHBufAddr->wWriteIndex;
  g_JtagSimioAccess.dwTHBufAddr->byBuffer[wWriteIndex++] = Data;
  if (wWriteIndex >= g_JtagSimioAccess.wTHBufSize)
  {
    wWriteIndex = 0;
  }
  g_JtagSimioAccess.dwTHBufAddr->wWriteIndex = wWriteIndex;
}

// ***********************************************************************
//
//  Posix read
//  this function is called by the ANSI-C Library to read data from a FD
//
// ***********************************************************************
size_t READ (int fd, char *buffer, size_t count)
{
  size_t index;
  index = 0;
  if (fileno (stdin) == fd) {
    while (0 == GetHTCharCount ()); // wait for at least one byte
    for (; index < count && 0 != GetHTCharCount (); index++, buffer++) {
      *buffer = GetByteFromHost ();
    }
  }
  return index;
}

// ***********************************************************************
//
//  Posix write
//  this function is called by the ANSI-C Library to write data to a FD
//
// ***********************************************************************
size_t WRITE (int fd, char *buffer, size_t count)
{
  size_t index;
  index = 0;
  if (fileno (stdout) == fd || fileno (stderr) == fd) {
    for (; index < count; index++, buffer++) {
      PutByteToHost (*buffer);
    }
  }
  return index;
}


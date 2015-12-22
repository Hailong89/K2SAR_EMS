/*************************************************************************
**
**  VERSION CONTROL:	@(#)cstart.c	1.3	07/01/03
**
**  IN PACKAGE:		
**
**  AUTHORS:		Erwin van den Berg		(erwin)
**
**  COPYRIGHT:		Copyright 2006-2014 Altium BV
**
**************************************************************************/

#include <stdlib.h>

#pragma extern main

extern	int	main( int argc, char *argv[] );

#pragma weak exit
#pragma extern _Exit

void __interrupt( 1 ) _cstart( void )
{
	 exit( main( 0, NULL ) );		/* argc is 0 */
}

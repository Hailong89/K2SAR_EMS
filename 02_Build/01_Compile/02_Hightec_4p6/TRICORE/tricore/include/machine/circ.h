/* 
   circ.h -- C interface to use the circular buffer addressing on the TriCore

   this module define access Macros for all scalar data types up to 8 byte
   using circular addressing mode 
*/ 

#ifndef __circ_h__
#define __circ_h__
/* the following typedef defines the circular buffer address type */

typedef struct {
	void *buf;		/* the base address 	*/
	short index;		/* the index		*/
	short length;		/* the length in bytes  */
} circ_t __attribute__((__ptr64__));

#define opPd(type,fname,tg,tp,s,A)		__opPd(type,fname,tg,tp,s,A)

/* the following macro defines the get and put functions using the circular buffer
   addressing mode according to the defined type
   the parameters are:
	type	the scalar access type
	tg	tricore data type for get 
	tp	tricore data type for put 
	s	the size of the data type in bytes 
	A	use doubel register names inside the functions
 opPd(long,w,w,4,) defines the following funcitons for the long data type

 circ_t get_circ_long(circ_t aa, long *ptrlong);

	get_circ_...  reads the element from the actual index out of the buffer and stores
	the value at ptrlong . the modified circular buffer address aa will be returned

 circ_t put_circ_long(circ_t aa, long value);

	put_circ_... writes the value at the actual index into the buffer and returns
	the modified circular buffer address aa;

 circ_t init_circ_long(circ_t aa, long *buf, short len);

	init_circ_... initialize the circular buffer address with the base address buf
	and the length len. the index will be initialized with 0

 all defined function get as there first argument the circular buffer address and
 return the modified circular buffer address
*/

#define __opPd(type,fname,tg,tp,s,A) \
static __inline__ circ_t  \
get_circ_##fname(circ_t aa, type *pret) \
{ \
	__asm__ volatile ("ld."#tg"\t%"#A"0,[%2+c]"#s"": "=d" (*pret), "=a" (aa) : "1" (aa) ); \
	return aa; \
} \
 \
static __inline__ circ_t \
put_circ_##fname(circ_t aa, type value) \
{ \
	__asm__ volatile ("st."#tp"\t[%2+c]"#s", %"#A"1": "=a" (aa) : "d" (value), "0" (aa) ); \
	return aa; \
} \
static __inline__ circ_t 	\
init_circ_##fname(circ_t aa, type *buf, short len) \
{	\
	aa.buf = (void *)buf;	\
	aa.index = 0;		\
	aa.length = len;	\
	return aa;		\
}


opPd(long,long,w,w,4,)
opPd(int,int,w,w,4,)
opPd(short,short,h,h,2,)
opPd(char,char,b,b,1,)
opPd(unsigned long,ulong,w,w,4,)
opPd(unsigned int,uint,w,w,4,)
opPd(unsigned short,ushort,hu,h,2,)
opPd(unsigned char,uchar,bu,b,1,)
opPd(long long,llong,d,d,8,A)
opPd(double,double,d,d,8,A)
opPd(float,float,w,w,4,)

#undef opPd
#undef __opPd
#endif /* __circ_h__ */

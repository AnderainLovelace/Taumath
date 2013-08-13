typedef unsigned long					uint32_t	;
typedef struct { uint32_t hi,lo; }		u64			; 

u64
u64hilo (uint32_t hi, uint32_t lo)
{
	u64 r;
	r.hi = hi;
	r.lo = lo;
	return r;
}
/* Return a u64 value representing LO.	*/
u64
u64lo (uint32_t lo)
{
	u64 r;
	r.hi = 0;
	r.lo = lo;
	return r;
}
/* Return X < Y.	*/
int
u64lt (u64 x, u64 y)
{
	return x.hi < y.hi || (x.hi == y.hi && x.lo < y.lo);
}
/* Return X & Y.	*/
u64
u64and (u64 x, u64 y)
{
	u64 r;
	r.hi = x.hi & y.hi;
	r.lo = x.lo & y.lo;
	return r;
}
/* Return X | Y.	*/
u64
u64or (u64 x, u64 y)
{
	u64 r;
	r.hi = x.hi | y.hi;
	r.lo = x.lo | y.lo;
	return r;
}
/* Return X ^ Y.	*/
u64
u64xor (u64 x, u64 y)
{
	u64 r;
	r.hi = x.hi ^ y.hi;
	r.lo = x.lo ^ y.lo;
	return r;
}
/* Return X + Y.	*/
u64
u64plus (u64 x, u64 y)
{
	u64 r;
	r.lo = x.lo + y.lo;
	r.hi = x.hi + y.hi + (r.lo < x.lo);
	return r;
}
/* Return X - Y.	*/
u64
u64sub (u64 x, u64 y)
{
	u64 one={0,1},r;
	r.hi	= ~y.hi;
	r.lo	= ~y.lo;
	r		= u64plus(r,one);
	r		= u64plus(x,r);
	return r;
}
/* Return X << N.	*/
u64
u64shl (u64 x, int n)
{
	u64 r;
	if (n < 32)
	{
		r.hi = (x.hi << n) | (x.lo >> (32 - n));
		r.lo = x.lo << n;
	}
	else
	{
		r.hi = x.lo << (n - 32);
		r.lo = 0;
	}
  return r;
}
/* Return X >> N.	*/
u64
u64shr (u64 x, int n)
{
	u64 r;
	if (n < 32)
	{
		r.hi = x.hi >> n;
		r.lo = (x.hi << (32 - n)) | (x.lo >> n);
	}
	else
	{
		r.hi = 0;
		r.lo = x.hi >> (n - 32);
	}
	return r;
}

u64
u32mult(uint32_t op1, uint32_t op2)
{
	u64 r;
	uint32_t op1_hi = (op1 >> 16) & 0xffff;
	uint32_t op1_lo = op1 & 0xffff;
	uint32_t op2_hi = (op2 >> 16) & 0xffff;
	uint32_t op2_lo = op2 & 0xffff;
    uint32_t cross_prod = op1_lo * op2_hi + op1_hi * op2_lo;
    r.hi = op1_hi * op2_hi + ((cross_prod >> 16) & 0xffff);
    r.lo = op1_lo * op2_lo + ((cross_prod << 16) & 0xffff0000);
	return r;
}

u64
u64mul(u64 x,u64 y)
{
	u64 r,t;
	t		= u32mult(x.lo,y.lo);
	r.hi	= x.hi*y.lo+x.lo*y.hi+t.hi;
	r.lo	= t.lo;
	return r;
}

u64
u64div(u64 a,u64 b)
{  
    u64 c = {0,1}, d = {0,0}, _b = b;  
    while(!u64lt(a,b)) // !a<b == a>=b  
    {  
		c = u64shl(c,1);  
		b = u64shl(b,1); 
    }  
	c = u64shr(c,1);  
	b = u64shr(b,1); 
    while(!u64lt(b,_b))  
    {  
        if(!u64lt(a,b))  
        {  
            a = u64sub(a,b); 
            d = u64plus(d,c);
        }  
		c = u64shr(c,1);  
		b = u64shr(b,1);  
    }  
    return d;  
}
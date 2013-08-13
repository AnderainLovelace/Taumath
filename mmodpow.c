// Bignum modular power (x^n mod m)

#include "stdafx.h"
#include "defs.h"

// could do indexed bit test instead of shift right

unsigned int *
mmodpow(unsigned int *x, unsigned int *n, unsigned int *m)
{
	unsigned int *y, *z;
	x = mcopy(x);
	n = mcopy(n);
	y = mint(1);
	while (1) {
		if (n[0] & 1) {
			z = mmul(y, x);
			mfree(y);
			y = mmod(z, m);
			mfree(z);
		}
		mshiftright(n);
		if (MZERO(n))
			break;
		z = mmul(x, x);
		mfree(x);
		x = mmod(z, m);
		mfree(z);
	}
	mfree(x);
	mfree(n);
	return y;
}

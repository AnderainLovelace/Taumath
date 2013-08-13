// Bignum power

#include "stdafx.h"
#include "defs.h"

unsigned int *
mpow(unsigned int *a, unsigned int n)
{
	unsigned int *aa, *t;

	a = mcopy(a);

	aa = mint(1);

	for (;;) {

		if (n & 1) {
			t = mmul(aa, a);
			mfree(aa);
			aa = t;
		}

		n >>= 1;

		if (n == 0)
			break;

		t = mmul(a, a);
		mfree(a);
		a = t;
	}

	mfree(a);

	return aa;
}


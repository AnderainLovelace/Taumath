//-----------------------------------------------------------------------------
//
//	Bignum root
//
//	Returns null pointer if not perfect root.
//
//	The sign of the radicand is ignored.
//
//-----------------------------------------------------------------------------

#include "stdafx.h"
#include "defs.h"

unsigned int *
mroot(unsigned int *n, unsigned int index)
{
	int i, j, k;
	unsigned int m, *x, *y;

	if (index == 0)
		stop("root index is zero");

	// count number of bits

	k = 32 * (MLENGTH(n) - 1);

	m = n[MLENGTH(n) - 1];

	while (m) {
		m >>= 1;
		k++;
	}

	if (k == 0)
		return mint(0);

	// initial guess

	k = (k - 1) / index;

	j = k / 32 + 1;
	x = mnew(j);
	MSIGN(x) = 1;
	MLENGTH(x) = j;
	for (i = 0; i < j; i++)
		x[i] = 0;

	while (k >= 0) {
		mp_set_bit(x, k);
		y = mpow(x, index);
		switch (mcmp(y, n)) {
		case -1:
			break;
		case 0:
			mfree(y);
			return x;
		case 1:
			mp_clr_bit(x, k);
			break;
		}
		mfree(y);
		k--;
	}

	mfree(x);

	return 0;
}

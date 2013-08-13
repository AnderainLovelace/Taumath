// Bignum multiplication and division

#include "stdafx.h"
#include "defs.h"

const double POW_2_32 = 4294967296.0;

extern int ge(unsigned int *, unsigned int *, int);

static void mulf(unsigned int *, unsigned int *, int, unsigned int);
static void addf(unsigned int *, unsigned int *, int);
static void subf(unsigned int *, unsigned int *, int);

unsigned int *
mmul(unsigned int *a, unsigned int *b)
{
	int alen, blen, i, n;
	unsigned int *t, *x;

	if (MZERO(a) || MZERO(b))
		return mint(0);

	if (MLENGTH(a) == 1 && a[0] == 1) {
		t = mcopy(b);
		MSIGN(t) *= MSIGN(a);
		return t;
	}

	if (MLENGTH(b) == 1 && b[0] == 1) {
		t = mcopy(a);
		MSIGN(t) *= MSIGN(b);
		return t;
	}

	alen = MLENGTH(a);
	blen = MLENGTH(b);

	n = alen + blen;

	x = mnew(n);

	t = mnew(alen + 1);

	for (i = 0; i < n; i++)
		x[i] = 0;

	/* sum of partial products */

	for (i = 0; i < blen; i++) {
		mulf(t, a, alen, b[i]);
		addf(x + i, t, alen + 1);
	}

	mfree(t);

	/* length of product */

	for (i = n - 1; i > 0; i--)
		if (x[i])
			break;

	MLENGTH(x) = i + 1;

	MSIGN(x) = MSIGN(a) * MSIGN(b);

	return x;
}

unsigned int *
mdiv(unsigned int *a, unsigned int *b)
{
	int alen, blen, i, n;
	unsigned int c, *t, *x, *y;
	ULONGLONG jj, kk;

	if (MZERO(b))
		stop("divide by zero");

	if (MZERO(a))
		return mint(0);

	alen = MLENGTH(a);
	blen = MLENGTH(b);

	n = alen - blen;

	if (n < 0)
		return mint(0);

	x = mnew(alen + 1);

	for (i = 0; i < alen; i++)
		x[i] = a[i];

	x[i] = 0;

	y = mnew(n + 1);

	t = mnew(blen + 1);

	/* Add 1 here to round up in case the remaining words are non-zero. */

	kk = (ULONGLONG) b[blen - 1] + 1;

	for (i = 0; i <= n; i++) {

		y[n - i] = 0;

		for (;;) {

			/* estimate the partial quotient */
/*
			if (little_endian()) {
				((unsigned int *) &jj)[0] = x[alen - i - 1];
				((unsigned int *) &jj)[1] = x[alen - i - 0];
			} else {
				((unsigned int *) &jj)[1] = x[alen - i - 1];
				((unsigned int *) &jj)[0] = x[alen - i - 0];
			}
*/
			jj = x[alen - i - 1]/*low*/+x[alen - i]/*high*/*POW_2_32;


			c = (unsigned int) (jj / kk);

			if (c == 0) {
				if (ge(x + n - i, b, blen)) { /* see note 1 */
					y[n - i]++;
					subf(x + n - i, b, blen);
				}
				break;
			}

			y[n - i] += c;
			mulf(t, b, blen, c);
			subf(x + n - i, t, blen + 1);
		}
	}

	mfree(t);

	mfree(x);

	/* length of quotient */

	for (i = n; i > 0; i--)
		if (y[i])
			break;

	if (i == 0 && y[0] == 0) {
		mfree(y);
		y = mint(0);
	} else {
		MLENGTH(y) = i + 1;
		MSIGN(y) = MSIGN(a) * MSIGN(b);
	}

	return y;
}

// a = a + b

static void
addf(unsigned int *a, unsigned int *b, int len)
{
	int i;
	LONGLONG t = 0; /* can be signed or unsigned */
	for (i = 0; i < len; i++) {
		t += (LONGLONG) a[i] + b[i];
		a[i] = (unsigned int) t;
		//t >>= 32;
		t/=POW_2_32;
	}
}

// a = a - b

static void
subf(unsigned int *a, unsigned int *b, int len)
{
	int i;
	LONGLONG t = 0; /* must be signed */
	for (i = 0; i < len; i++) {
		t += (LONGLONG) a[i] - b[i];
		a[i] = (unsigned int) t;
		//t >>= 32;
		t/=POW_2_32;
		//printf("t=%ld,i=%d\n",t,i);
	}
}

// a = b * c

// 0xffffffff + 0xffffffff * 0xffffffff == 0xffffffff00000000

static void
mulf(unsigned int *a, unsigned int *b, int len, unsigned int c)
{
	int i;
	ULONGLONG t = 0; /* must be unsigned */
	for (i = 0; i < len; i++) {
		t += (ULONGLONG) b[i] * c;
		a[i] = (unsigned int) t;
		//t >>= 32;
		t /=POW_2_32;
	}
	a[i] = (unsigned int) t;
}

unsigned int *
mmod(unsigned int *a, unsigned int *b)
{
	int alen, blen, i, n;
	unsigned int c, *t, *x, *y;
	ULONGLONG jj, kk;

	if (MZERO(b))
		stop("divide by zero");

	if (MZERO(a))
		return mint(0);

	alen = MLENGTH(a);
	blen = MLENGTH(b);

	n = alen - blen;

	if (n < 0)
		return mcopy(a);

	x = mnew(alen + 1);

	for (i = 0; i < alen; i++)
		x[i] = a[i];

	x[i] = 0;

	y = mnew(n + 1);

	t = mnew(blen + 1);

	kk = (ULONGLONG) b[blen - 1] + 1;

	for (i = 0; i <= n; i++) {

		y[n - i] = 0;

		for (;;) {

			/* estimate the partial quotient */
/*
			if (little_endian()) {
				((unsigned int *) &jj)[0] = x[alen - i - 1];
				((unsigned int *) &jj)[1] = x[alen - i - 0];
			} else {
				((unsigned int *) &jj)[1] = x[alen - i - 1];
				((unsigned int *) &jj)[0] = x[alen - i - 0];
			}
*/
			jj = x[alen - i - 1]/*low*/+x[alen - i]/*high*/*POW_2_32;

			c = (int) (jj / kk);

			if (c == 0) {
				if (ge(x + n - i, b, blen)) { /* see note 1 */
					y[n - i]++;
					subf(x + n - i, b, blen);
				}
				break;
			}

			y[n - i] += c;
			mulf(t, b, blen, c);
			subf(x + n - i, t, blen + 1);
		}
	}

	mfree(t);

	mfree(y);

	/* length of remainder */

	for (i = blen - 1; i > 0; i--)
		if (x[i])
			break;

	if (i == 0 && x[0] == 0) {
		mfree(x);
		x = mint(0);
	} else {
		MLENGTH(x) = i + 1;
		MSIGN(x) = MSIGN(a);
	}

	return x;
}

// return both quotient and remainder of a/b

void
mdivrem(unsigned int **q, unsigned int **r, unsigned int *a, unsigned int *b)
{
	int alen, blen, i, n;
	unsigned int c, *t, *x, *y;
	ULONGLONG jj, kk;

	if (MZERO(b))
		stop("divide by zero");

	if (MZERO(a)) {
		*q = mint(0);
		*r = mint(0);
		return;
	}

	alen = MLENGTH(a);
	blen = MLENGTH(b);

	n = alen - blen;

	if (n < 0) {
		*q = mint(0);
		*r = mcopy(a);
		return;
	}

	x = mnew(alen + 1);

	for (i = 0; i < alen; i++)
		x[i] = a[i];

	x[i] = 0;

	y = mnew(n + 1);

	t = mnew(blen + 1);

	kk = (ULONGLONG) b[blen - 1] + 1;

	for (i = 0; i <= n; i++) {

		y[n - i] = 0;

		for (;;) {

			/* estimate the partial quotient */
/*
			if (little_endian()) {
				((unsigned int *) &jj)[0] = x[alen - i - 1];
				((unsigned int *) &jj)[1] = x[alen - i - 0];
			} else {
				((unsigned int *) &jj)[1] = x[alen - i - 1];
				((unsigned int *) &jj)[0] = x[alen - i - 0];
			}
*/
			jj = x[alen - i - 1]/*low*/+x[alen - i]/*high*/*POW_2_32;

			c = (int) (jj / kk);

			if (c == 0) {
				if (ge(x + n - i, b, blen)) { /* see note 1 */
					y[n - i]++;
					subf(x + n - i, b, blen);
				}
				break;
			}

			y[n - i] += c;
			mulf(t, b, blen, c);
			subf(x + n - i, t, blen + 1);
		}
	}

	mfree(t);

	/* length of quotient */

	for (i = n; i > 0; i--)
		if (y[i])
			break;

	if (i == 0 && y[0] == 0) {
		mfree(y);
		y = mint(0);
	} else {
		MLENGTH(y) = i + 1;
		MSIGN(y) = MSIGN(a) * MSIGN(b);
	}

	/* length of remainder */

	for (i = blen - 1; i > 0; i--)
		if (x[i])
			break;

	if (i == 0 && x[0] == 0) {
		mfree(x);
		x = mint(0);
	} else {
		MLENGTH(x) = i + 1;
		MSIGN(x) = MSIGN(a);
	}

	*q = y;
	*r = x;
}

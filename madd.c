// Bignum addition and subtraction

#include "stdafx.h"
#include "defs.h"

static unsigned int *addf(unsigned int *, unsigned int *);
static unsigned int *subf(unsigned int *, unsigned int *);
static int ucmp(unsigned int *, unsigned int *);

unsigned int *
madd(unsigned int *a, unsigned int *b)
{
	if (MSIGN(a) == MSIGN(b))
		return addf(a, b);	// same sign, add together
	else
		return subf(a, b);	// opposite sign, find difference
}

unsigned int *
msub(unsigned int *a, unsigned int *b)
{
	if (MSIGN(a) == MSIGN(b))
		return subf(a, b);	// same sign, find difference
	else
		return addf(a, b);	// opposite sign, add together
}

static unsigned int *
addf(unsigned int *a, unsigned int *b)
{
	int i, sign;
	unsigned int c, *x;

	sign = MSIGN(a);

	if (MLENGTH(a) < MLENGTH(b)) {
		x = a;
		a = b;
		b = x;
	}

	x = mnew(MLENGTH(a) + 1);

	c = 0;

	for (i = 0; i < MLENGTH(b); i++) {
		x[i] = a[i] + b[i] + c;
		if (c)
			if (a[i] >= x[i])
				c = 1;
			else
				c = 0;
		else
			if (a[i] > x[i])
				c = 1;
			else
				c = 0;
	}

	for (i = MLENGTH(b); i < MLENGTH(a); i++) {
		x[i] = a[i] + c;
		if (a[i] > x[i])
			c = 1;
		else
			c = 0;
	}

	x[MLENGTH(a)] = c;

	for (i = MLENGTH(a); i > 0; i--)
		if (x[i])
			break;

	MLENGTH(x) = i + 1;
	MSIGN(x) = sign;

	return x;
}

static unsigned int *
subf(unsigned int *a, unsigned int *b)
{
	int i, sign = 0;
	unsigned int c, *x;

	switch (ucmp(a, b)) {

	case 0:
		return mint(0);

	case 1:
		sign = MSIGN(a);	/* |a| > |b| */
		break;

	case -1:
		sign = -MSIGN(a);	/* |a| < |b| */
		x = a;
		a = b;
		b = x;
		break;
	}

	x = mnew(MLENGTH(a));

	c = 0;

	for (i = 0; i < MLENGTH(b); i++) {
		x[i] = a[i] - b[i] - c;
		if (c)
			if (a[i] <= x[i])
				c = 1;
			else
				c = 0;
		else
			if (a[i] < x[i])
				c = 1;
			else
				c = 0;
	}

	for (i = MLENGTH(b); i < MLENGTH(a); i++) {
		x[i] = a[i] - c;
		if (a[i] < x[i])
			c = 1;
		else
			c = 0;
	}

	for (i = MLENGTH(a) - 1; i > 0; i--)
		if (x[i])
			break;

	MLENGTH(x) = i + 1;
	MSIGN(x) = sign;

	return x;
}

// unsigned compare

static int
ucmp(unsigned int *a, unsigned int *b)
{
	int i;

	if (MLENGTH(a) < MLENGTH(b))
		return -1;

	if (MLENGTH(a) > MLENGTH(b))
		return 1;

	for (i = MLENGTH(a) - 1; i > 0; i--)
		if (a[i] != b[i])
			break;

	if (a[i] < b[i])
		return -1;

	if (a[i] > b[i])
		return 1;

	return 0;
}


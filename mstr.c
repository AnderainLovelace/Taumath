// Convert bignum to string

#include "stdafx.h"
#include "defs.h"

static int divby1billion(unsigned int *);

static char *str;
static int len;

char *
mstr(unsigned int *a)
{
	int k, n, r, sign;
	char c;

	if (str == NULL) {
		str = (char *) malloc(1000);
		len = 1000;
	}

	// estimate string size

	n = 10 * MLENGTH(a) + 2;

	if (n > len) {
		free(str);
		str = (char *) malloc(n);
		len = n;
	}

	sign = MSIGN(a);

	a = mcopy(a);

	k = len - 1;

	str[k] = 0;

	for (;;) {
		k -= 9;
		r = divby1billion(a);
		c = str[k + 9];
		sprintf(str + k, "%09d", r);
		str[k + 9] = c;
		if (MZERO(a))
			break;
	}

	// remove leading zeroes

	while (str[k] == '0')
		k++;

	if (str[k] == 0)
		k--;

	// sign

	if (sign == -1) {
		k--;
		str[k] = '-';
	}

	mfree(a);

	return str + k;
}

// Returns remainder as function value, quotient returned in a.

static int
divby1billion(unsigned int *a)
{
	int i;
	ULONGLONG kk;

	kk = 0;

	for (i = MLENGTH(a) - 1; i >= 0; i--) {

		kk = *a;

		a[i] = (int) (kk / 1000000000);

		kk -= (ULONGLONG) 1000000000 * a[i];
	}

	// length of quotient

	for (i = MLENGTH(a) - 1; i > 0; i--)
		if (a[i])
			break;

	MLENGTH(a) = i + 1;


	return kk;
}

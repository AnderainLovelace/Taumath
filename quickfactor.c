//-----------------------------------------------------------------------------
//
//	Factor small numerical powers
//
//	Input:		tos-2		Base (positive integer < 2^31 - 1)
//
//			tos-1		Exponent
//
//	Output:		Expr on stack
//
//-----------------------------------------------------------------------------

#include "stdafx.h"
#include "defs.h"

#define BASE p1
#define EXPO p2

static void quickpower(void);

void
quickfactor(void)
{
	int h, i, n;
	U **s;

	save();

	EXPO = pop();
	BASE = pop();

	h = tos;

	push(BASE);

	factor_small_number();

	n = tos - h;

	s = stack + h;

	for (i = 0; i < n; i += 2) {
		push(s[i]);		// factored base
		push(s[i + 1]);		// factored exponent
		push(EXPO);
		multiply();
		quickpower();
	}

	// stack has n results from factor_number_raw()

	// on top of that are all the expressions from quickpower()

	// multiply the quickpower() results

	multiply_all(tos - h - n);

	p1 = pop();

	tos = h;

	push(p1);

	restore();
}

// BASE is a prime number so power is simpler

static void
quickpower(void)
{
	int expo;

	save();

	EXPO = pop();
	BASE = pop();

	push(EXPO);
	bignum_truncate();
	p3 = pop();

	push(EXPO);
	push(p3);
	subtract();
	p4 = pop();

	// fractional part of EXPO

	if (!iszero(p4)) {
		push_symbol(POWER);
		push(BASE);
		push(p4);
		list(3);
	}

	push(p3);
	expo = pop_integer();

	if (expo == (int) 0x80000000) {
		push_symbol(POWER);
		push(BASE);
		push(p3);
		list(3);
		restore();
		return;
	}

	if (expo == 0) {
		restore();
		return;
	}

	push(BASE);
	bignum_power_number(expo);

	restore();
}

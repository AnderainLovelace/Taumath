// factor a polynomial or integer

#include "stdafx.h"
#include "defs.h"

void
eval_factor(void)
{
	push(cadr(p1));
	eval();

	push(caddr(p1));
	eval();

	p2 = pop();
	if (p2 == symbol(NIL))
		guess();
	else
		push(p2);

	factor();

	// more factoring?

	p1 = cdddr(p1);
	while (iscons(p1)) {
		push(car(p1));
		eval();
		factor_again();
		p1 = cdr(p1);
	}
}

void
factor_again(void)
{
	int h, n;

	save();

	p2 = pop();
	p1 = pop();

	h = tos;

	if (car(p1) == symbol(MULTIPLY)) {
		p1 = cdr(p1);
		while (iscons(p1)) {
			push(car(p1));
			push(p2);
			factor_term();
			p1 = cdr(p1);
		}
	} else {
		push(p1);
		push(p2);
		factor_term();
	}

	n = tos - h;

	if (n > 1)
		multiply_all_noexpand(n);

	restore();
}

void
factor_term(void)
{
	save();
	factorpoly();
	p1 = pop();
	if (car(p1) == symbol(MULTIPLY)) {
		p1 = cdr(p1);
		while (iscons(p1)) {
			push(car(p1));
			p1 = cdr(p1);
		}
	} else
		push(p1);
	restore();
}

void
factor(void)
{
	save();
	p2 = pop();
	p1 = pop();
	if (isinteger(p1)) {
		push(p1);
		factor_number(); // see pollard.cpp
	} else {
		push(p1);
		push(p2);
		factorpoly();
	}
	restore();
}

// for factoring small integers (2^32 or less)

void
factor_small_number(void)
{
	int d, expo, i, n;

	save();

	n = pop_integer();

	if (n == (int) 0x80000000)
		stop("number too big to factor");

	if (n < 0)
		n = -n;

	for (i = 0; i < MAXPRIMETAB; i++) {

		d = primetab[i];

		if (d > n / d)
			break;

		expo = 0;

		while (n % d == 0) {
			n /= d;
			expo++;
		}

		if (expo) {
			push_integer(d);
			push_integer(expo);
		}
	}

	if (n > 1) {
		push_integer(n);
		push_integer(1);
	}

	restore();
}

// Factor a polynomial

#include "stdafx.h"
#include "defs.h"

static void rationalize_coefficients(int);
static int get_factor(void);
static void evalpoly(void);
static void yydivpoly(void);

static int expo;
static U **polycoeff;

#define POLY p1
#define X p2
#define Z p3
#define A p4
#define B p5
#define Q p6
#define RESULT p7
#define FACTOR p8

void
factorpoly(void)
{
	save();

	p2 = pop();
	p1 = pop();

	if (!find(p1, p2)) {
		push(p1);
		restore();
		return;
	}

	if (!ispoly(p1, p2)) {
		push(p1);
		restore();
		return;
	}

	if (!issymbol(p2)) {
		push(p1);
		restore();
		return;
	}

	push(p1);
	push(p2);
	yyfactorpoly();

	restore();
}

//-----------------------------------------------------------------------------
//
//	Input:		tos-2		true polynomial
//
//			tos-1		free variable
//
//	Output:		factored polynomial on stack
//
//-----------------------------------------------------------------------------

void
yyfactorpoly(void)
{
	int h, i;

	save();

	X = pop();
	POLY = pop();

	h = tos;

	if (isfloating(POLY))
		stop("floating point numbers in polynomial");

	polycoeff = stack + tos;

	push(POLY);
	push(X);
	expo = coeff() - 1;

	rationalize_coefficients(h);

	// for univariate polynomials we could do expo > 1

	while (expo > 0) {

		if (iszero(polycoeff[0])) {
			push_integer(1);
			A = pop();
			push_integer(0);
			B = pop();
		} else if (get_factor() == 0) {
			if (verbosing)
				//!!!////printf("no factor found\n");
			break;
		}

		push(A);
		push(X);
		multiply();
		push(B);
		add();
		FACTOR = pop();

		if (verbosing) {
			//////printf("success\nFACTOR=");
			print(FACTOR);
			//////printf("\n");
		}

		// factor out negative sign (not req'd because A > 1)
#if 0
		if (isnegativeterm(A)) {
			push(FACTOR);
			negate();
			FACTOR = pop();
			push(RESULT);
			negate_noexpand();
			RESULT = pop();
		}
#endif
		push(RESULT);
		push(FACTOR);
		multiply_noexpand();
		RESULT = pop();

		yydivpoly();

		while (expo && iszero(polycoeff[expo]))
			expo--;
	}

	// unfactored polynomial

	push(zero);
	for (i = 0; i <= expo; i++) {
		push(polycoeff[i]);
		push(X);
		push_integer(i);
		power();
		multiply();
		add();
	}
	POLY = pop();

	if (verbosing) {
		//////printf("POLY=");
		print(POLY);
		//////printf("\n");
	}

	// factor out negative sign

	if (expo > 0 && isnegativeterm(polycoeff[expo])) {
		push(POLY);
		negate();
		POLY = pop();
		push(RESULT);
		negate_noexpand();
		RESULT = pop();
	}

	push(RESULT);
	push(POLY);
	multiply_noexpand();
	RESULT = pop();

	if (verbosing) {
		//////printf("RESULT=");
		print(RESULT);
		//////printf("\n");
	}

	stack[h] = RESULT;

	tos = h + 1;

	restore();
}

static void
rationalize_coefficients(int h)
{
	int i;

	// LCM of all polynomial coefficients

	RESULT = one;
	for (i = h; i < tos; i++) {
		push(stack[i]);
		denominator();
		push(RESULT);
		lcm();
		RESULT = pop();
	}

	// multiply each coefficient by RESULT

	for (i = h; i < tos; i++) {
		push(RESULT);
		push(stack[i]);
		multiply();
		stack[i] = pop();
	}

	// reciprocate RESULT

	push(RESULT);
	reciprocate();
	RESULT = pop();
}

static int
get_factor(void)
{
	int i, j, h;
	int a0, an, na0, nan;

	if (verbosing) {
		push(zero);
		for (i = 0; i <= expo; i++) {
			push(polycoeff[i]);
			push(X);
			push_integer(i);
			power();
			multiply();
			add();
		}
		POLY = pop();
		//////printf("POLY=");
		print(POLY);
		//////printf("\n");
	}

	h = tos;

	an = tos;
	push(polycoeff[expo]);

	divisors_onstack();

	nan = tos - an;

	a0 = tos;
	push(polycoeff[0]);
	divisors_onstack();
	na0 = tos - a0;

	if (verbosing) {
		////printf("divisors of base term");
		for (i = 0; i < na0; i++) {
			////printf(", ");
			print(stack[a0 + i]);
		}
		////printf("\n");
		////printf("divisors of leading term");
		for (i = 0; i < nan; i++) {
			////printf(", ");
			print(stack[an + i]);
		}
		////printf("\n");
	}

	// try roots

	for (i = 0; i < nan; i++) {
		for (j = 0; j < na0; j++) {

			A = stack[an + i];
			B = stack[a0 + j];

			push(B);
			push(A);
			divide();
			negate();
			Z = pop();

			evalpoly();

			if (verbosing) {
				////printf("try A=");
				print(A);
				////printf(", B=");
				print(B);
				////printf(", root ");
				print(X);
				////printf("=-B/A=");
				print(Z);
				////printf(", POLY(");
				print(Z);
				////printf(")=");
				print(Q);
				////printf("\n");
			}

			if (iszero(Q)) {
				tos = h;
				return 1;
			}

			push(B);
			negate();
			B = pop();

			push(Z);
			negate();
			Z = pop();

			evalpoly();

			if (verbosing) {
				////printf("try A=");
				print(A);
				////printf(", B=");
				print(B);
				////printf(", root ");
				print(X);
				////printf("=-B/A=");
				print(Z);
				////printf(", POLY(");
				print(Z);
				////printf(")=");
				print(Q);
				////printf("\n");
			}

			if (iszero(Q)) {
				tos = h;
				return 1;
			}
		}
	}

	tos = h;

	return 0;
}

//-----------------------------------------------------------------------------
//
//	Divide a polynomial by Ax+B
//
//	Input:		polycoeff	Dividend coefficients
//
//			expo		Degree of dividend
//
//			A		As above
//
//			B		As above
//
//	Output:		polycoeff	Contains quotient coefficients
//
//-----------------------------------------------------------------------------

static void
yydivpoly(void)
{
	int i;
	Q = zero;
	for (i = expo; i > 0; i--) {
		push(polycoeff[i]);
		polycoeff[i] = Q;
		push(A);
		divide();
		Q = pop();
		push(polycoeff[i - 1]);
		push(Q);
		push(B);
		multiply();
		subtract();
		polycoeff[i - 1] = pop();
	}
	polycoeff[0] = Q;
}

static void
evalpoly(void)
{
	int i;
	push(zero);
	for (i = expo; i >= 0; i--) {
		push(Z);
		multiply();
		push(polycoeff[i]);
		add();
	}
	Q = pop();
}

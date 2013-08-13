//-----------------------------------------------------------------------------
//
//	Hermite polynomial
//
//	Input:		tos-2		x	(can be a symbol or expr)
//
//			tos-1		n
//
//	Output:		Result on stack
//
//-----------------------------------------------------------------------------

#include "stdafx.h"
#include "defs.h"

void
hermite(void)
{
	save();
	yyhermite();
	restore();
}

// uses the recurrence relation H(x,n+1)=2*x*H(x,n)-2*n*H(x,n-1)

#define X p1
#define N p2
#define Y p3
#define Y1 p4
#define Y0 p5

void
yyhermite(void)
{
	int n;

	N = pop();
	X = pop();

	push(N);
	n = pop_integer();

	if (n < 0) {
		push_symbol(HERMITE);
		push(X);
		push(N);
		list(3);
		return;
	}

	if (issymbol(X))
		yyhermite2(n);
	else {
		Y = X;			// do this when X is an expr
		X = symbol(SECRETX);
		yyhermite2(n);
		X = Y;
		push(symbol(SECRETX));
		push(X);
		subst();
		eval();
	}
}

void
yyhermite2(int n)
{
	int i;

	push_integer(1);
	push_integer(0);

	Y1 = pop();

	for (i = 0; i < n; i++) {

		Y0 = Y1;

		Y1 = pop();

		push(X);
		push(Y1);
		multiply();

		push_integer(i);
		push(Y0);
		multiply();

		subtract();

		push_integer(2);
		multiply();
	}
}

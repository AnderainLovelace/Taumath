/* Legendre function

Example

	legendre(x,3,0)

Result

	 5   3    3
	--- x  - --- x
	 2        2

The computation uses the following recurrence relation.

	P(x,0) = 1

	P(x,1) = x

	n*P(x,n) = (2*(n-1)+1)*x*P(x,n-1) - (n-1)*P(x,n-2)

In the "for" loop we have i = n-1 so the recurrence relation becomes

	(i+1)*P(x,n) = (2*i+1)*x*P(x,n-1) - i*P(x,n-2)

For m > 0

	P(x,n,m) = (-1)^m * (1-x^2)^(m/2) * d^m/dx^m P(x,n)
*/

#include "stdafx.h"
#include "defs.h"

void
eval_legendre(void)
{
	// 1st arg

	push(cadr(p1));
	eval();

	// 2nd arg

	push(caddr(p1));
	eval();

	// 3rd arg (optional)

	push(cadddr(p1));
	eval();

	p2 = pop();
	if (p2 == symbol(NIL))
		push_integer(0);
	else
		push(p2);

	legendre();
}

#define X p1
#define N p2
#define M p3
#define Y p4
#define Y0 p5
#define Y1 p6

static void __legendre(void), __legendre2(int, int), __legendre3(int);

void
legendre(void)
{
	save();
	__legendre();
	restore();
}

static void
__legendre(void)
{
	int m, n;

	M = pop();
	N = pop();
	X = pop();

	push(N);
	n = pop_integer();

	push(M);
	m = pop_integer();

	if (n < 0 || m < 0) {
		push_symbol(LEGENDRE);
		push(X);
		push(N);
		push(M);
		list(4);
		return;
	}

	if (issymbol(X))
		__legendre2(n, m);
	else {
		Y = X;			// do this when X is an expr
		X = symbol(SECRETX);
		__legendre2(n, m);
		X = Y;
		push(symbol(SECRETX));
		push(X);
		subst();
		eval();
	}

	__legendre3(m);
}

static void
__legendre2(int n, int m)
{
	int i;

	push_integer(1);
	push_integer(0);

	Y1 = pop();

	//	i=1	Y0 = 0 
	//		Y1 = 1 
	//		((2*i+1)*x*Y1 - i*Y0) / i = x
	//
	//	i=2	Y0 = 1
	//		Y1 = x
	//		((2*i+1)*x*Y1 - i*Y0) / i = -1/2 + 3/2*x^2
	//
	//	i=3	Y0 = x
	//		Y1 = -1/2 + 3/2*x^2
	//		((2*i+1)*x*Y1 - i*Y0) / i = -3/2*x + 5/2*x^3

	for (i = 0; i < n; i++) {

		Y0 = Y1;

		Y1 = pop();

		push_integer(2 * i + 1);
		push(X);
		multiply();
		push(Y1);
		multiply();

		push_integer(i);
		push(Y0);
		multiply();

		subtract();

		push_integer(i + 1);
		divide();
	}

	for (i = 0; i < m; i++) {
		push(X);
		derivative();
	}
}

// tos = tos * (-1)^m * (1-x^2)^(m/2)

static void
__legendre3(int m)
{
	if (m == 0)
		return;

	if (car(X) == symbol(COS)) {
		push(cadr(X));
		sine();
		square();
	} else if (car(X) == symbol(SIN)) {
		push(cadr(X));
		cosine();
		square();
	} else {
		push_integer(1);
		push(X);
		square();
		subtract();
	}

	push_integer(m);
	push_rational(1, 2);
	multiply();
	power();
	multiply();

	if (m % 2)
		negate();
}

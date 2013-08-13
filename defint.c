// definite integral

#include "stdafx.h"
#include "defs.h"

#define F p2
#define X p3
#define A p4
#define B p5

void
eval_defint(void)
{
	push(cadr(p1));
	eval();
	F = pop();

	p1 = cddr(p1);

	while (iscons(p1)) {

		push(car(p1));
		p1 = cdr(p1);
		eval();
		X = pop();

		push(car(p1));
		p1 = cdr(p1);
		eval();
		A = pop();

		push(car(p1));
		p1 = cdr(p1);
		eval();
		B = pop();

		push(F);
		push(X);
		integral();
		F = pop();

		push(F);
		push(X);
		push(B);
		subst();
		eval();

		push(F);
		push(X);
		push(A);
		subst();
		eval();

		subtract();
		F = pop();
	}

	push(F);
}

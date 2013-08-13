// Condense an expression by factoring common terms.
                                                                                
#include "stdafx.h"
#include "defs.h"

void
eval_condense(void)
{
	push(cadr(p1));
	eval();
	Condense();
}

void
Condense(void)
{
	int tmp;
	tmp = expanding;
	save();
	yycondense();
	restore();
	expanding = tmp;
}

void
yycondense(void)
{
	expanding = 0;

	p1 = pop();

	if (car(p1) != symbol(ADD)) {
		push(p1);
		return;
	}

	// get gcd of all terms

	p3 = cdr(p1);
	push(car(p3));
	p3 = cdr(p3);
	while (iscons(p3)) {
		push(car(p3));
		gcd();
		p3 = cdr(p3);
	}

//printf("condense: this is the gcd of all the terms:\n");
//print(stdout, stack[tos - 1]);

	// divide each term by gcd

	inverse();
	p2 = pop();
	push(zero);
	p3 = cdr(p1);
	while (iscons(p3)) {
		push(p2);
		push(car(p3));
		multiply();
		add();
		p3 = cdr(p3);
	}

	// We multiplied above w/o expanding so sum factors cancelled.

	// Now we expand which which normalizes the result and, in some cases,
	// simplifies it too (see test case H).

	yyexpand();

	// multiply result by gcd

	push(p2);
	divide();
}

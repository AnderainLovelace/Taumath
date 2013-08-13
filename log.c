// natural logarithm

#include "stdafx.h"
#include "defs.h"

void
eval_log(void)
{
	push(cadr(p1));
	eval();
	logarithm();
}

void
logarithm(void)
{
	save();
	yylog();
	restore();
}

void
yylog(void)
{
	double d;

	p1 = pop();

	if (p1 == symbol(E)) {
		push_integer(1);
		return;
	}

	if (equaln(p1, 1)) {
		push_integer(0);
		return;
	}

	if (isnegativenumber(p1)) {
		push(p1);
		negate();
		logarithm();
		push(imaginaryunit);
		push_symbol(PI);
		multiply();
		add();
		return;
	}

	if (isdouble(p1)) {
		d = log(p1->u.d);
		push_double(d);
		return;
	}

	// rational number and not an integer?

	if (isfraction(p1)) {
		push(p1);
		numerator();
		logarithm();
		push(p1);
		denominator();
		logarithm();
		subtract();
		return;
	}

	// log(a ^ b) --> b log(a)

	if (car(p1) == symbol(POWER)) {
		push(caddr(p1));
		push(cadr(p1));
		logarithm();
		multiply();
		return;
	}

	// log(a * b) --> log(a) + log(b)

	if (car(p1) == symbol(MULTIPLY)) {
		push_integer(0);
		p1 = cdr(p1);
		while (iscons(p1)) {
			push(car(p1));
			logarithm();
			add();
			p1 = cdr(p1);
		}
		return;
	}

	push_symbol(LOG);
	push(p1);
	list(2);
}


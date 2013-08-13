#include "stdafx.h"
#include "defs.h"

void
eval_arccos(void)
{
	push(cadr(p1));
	eval();
	arccos();
}

void
arccos(void)
{
	int n;
	double d;

	save();

	p1 = pop();

	if (car(p1) == symbol(COS)) {
		push(cadr(p1));
		restore();
		return;
	}

	if (isdouble(p1)) {
		errno = 0;
		d = acos(p1->u.d);
		if (errno)
			stop("arccos function argument is not in the interval [-1,1]");
		push_double(d);
		restore();
		return;
	}

	// if p1 == 1/sqrt(2) then return 1/4*pi (45 degrees)

	if (isoneoversqrttwo(p1)) {
		push_rational(1, 4);
		push_symbol(PI);
		multiply();
		restore();
		return;
	}

	// if p1 == -1/sqrt(2) then return 3/4*pi (135 degrees)

	if (isminusoneoversqrttwo(p1)) {
		push_rational(3, 4);
		push_symbol(PI);
		multiply();
		restore();
		return;
	}

	if (!isrational(p1)) {
		push_symbol(ARCCOS);
		push(p1);
		list(2);
		restore();
		return;
	}

	push(p1);
	push_integer(2);
	multiply();
	n = pop_integer();

	switch (n) {

	case -2:
		push_symbol(PI);
		break;

	case -1:
		push_rational(2, 3);
		push_symbol(PI);
		multiply();
		break;

	case 0:
		push_rational(1, 2);
		push_symbol(PI);
		multiply();
		break;

	case 1:
		push_rational(1, 3);
		push_symbol(PI);
		multiply();
		break;

	case 2:
		push(zero);
		break;

	default:
		push_symbol(ARCCOS);
		push(p1);
		list(2);
		break;
	}

	restore();
}


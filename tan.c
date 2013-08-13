// Tangent function of numerical and symbolic arguments

#include "stdafx.h"
#include "defs.h"

void
eval_tan(void)
{
	push(cadr(p1));
	eval();
	tangent();
}

void
tangent(void)
{
	save();
	yytangent();
	restore();
}

void
yytangent(void)
{
	int n;
	double d;

	p1 = pop();

	if (car(p1) == symbol(ARCTAN)) {
		push(cadr(p1));
		return;
	}

	if (isdouble(p1)) {
		d = tan(p1->u.d);
		if (fabs(d) < 1e-10)
			d = 0.0;
		push_double(d);
		return;
	}

	// tan function is antisymmetric, tan(-x) = -tan(x)

	if (isnegative(p1)) {
		push(p1);
		negate();
		tangent();
		negate();
		return;
	}

	// multiply by 180/pi

	push(p1);
	push_integer(180);
	multiply();
	push_symbol(PI);
	divide();

	n = pop_integer();

	if (n < 0) {
		push(symbol(TAN));
		push(p1);
		list(2);
		return;
	}

	switch (n % 360) {
	case 0:
	case 180:
		push_integer(0);
		break;
	case 30:
	case 210:
		push_rational(1, 3);
		push_integer(3);
		push_rational(1, 2);
		power();
		multiply();
		break;
	case 150:
	case 330:
		push_rational(-1, 3);
		push_integer(3);
		push_rational(1, 2);
		power();
		multiply();
		break;
	case 45:
	case 225:
		push_integer(1);
		break;
	case 135:
	case 315:
		push_integer(-1);
		break;
	case 60:
	case 240:
		push_integer(3);
		push_rational(1, 2);
		power();
		break;
	case 120:
	case 300:
		push_integer(3);
		push_rational(1, 2);
		power();
		negate();
		break;
	default:
		push(symbol(TAN));
		push(p1);
		list(2);
		break;
	}
}


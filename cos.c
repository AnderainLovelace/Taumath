// Cosine function of numerical and symbolic arguments

#include "stdafx.h"
#include "defs.h"

void
eval_cos(void)
{
	push(cadr(p1));
	eval();
	cosine();
}

void
cosine(void)
{
	save();
	p1 = pop();
	if (car(p1) == symbol(ADD))
		cosine_of_angle_sum();
	else
		cosine_of_angle();
	restore();
}

// Use angle sum formula for special angles.

#define A p3
#define B p4

void
cosine_of_angle_sum(void)
{
	p2 = cdr(p1);
	while (iscons(p2)) {
		B = car(p2);
		if (isnpi(B)) {
			push(p1);
			push(B);
			subtract();
			A = pop();
			push(A);
			cosine();
			push(B);
			cosine();
			multiply();
			push(A);
			sine();
			push(B);
			sine();
			multiply();
			subtract();
			return;
		}
		p2 = cdr(p2);
	}
	cosine_of_angle();
}

void
cosine_of_angle(void)
{
	int n;
	double d;

	if (car(p1) == symbol(ARCCOS)) {
		push(cadr(p1));
		return;
	}

	if (isdouble(p1)) {
		d = cos(p1->u.d);
		if (fabs(d) < 1e-10)
			d = 0.0;
		push_double(d);
		return;
	}

	// cosine function is symmetric, cos(-x) = cos(x)

	if (isnegative(p1)) {
		push(p1);
		negate();
		p1 = pop();
	}

	// cos(arctan(x)) = 1 / sqrt(1 + x^2)

	// see p. 173 of the CRC Handbook of Mathematical Sciences

	if (car(p1) == symbol(ARCTAN)) {
		push_integer(1);
		push(cadr(p1));
		push_integer(2);
		power();
		add();
		push_rational(-1, 2);
		power();
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
		push(symbol(COS));
		push(p1);
		list(2);
		return;
	}

	switch (n % 360) {
	case 90:
	case 270:
		push_integer(0);
		break;
	case 60:
	case 300:
		push_rational(1, 2);
		break;
	case 120:
	case 240:
		push_rational(-1, 2);
		break;
	case 45:
	case 315:
		push_rational(1, 2);
		push_integer(2);
		push_rational(1, 2);
		power();
		multiply();
		break;
	case 135:
	case 225:
		push_rational(-1, 2);
		push_integer(2);
		push_rational(1, 2);
		power();
		multiply();
		break;
	case 30:
	case 330:
		push_rational(1, 2);
		push_integer(3);
		push_rational(1, 2);
		power();
		multiply();
		break;
	case 150:
	case 210:
		push_rational(-1, 2);
		push_integer(3);
		push_rational(1, 2);
		power();
		multiply();
		break;
	case 0:
		push_integer(1);
		break;
	case 180:
		push_integer(-1);
		break;
	default:
		push(symbol(COS));
		push(p1);
		list(2);
		break;
	}
}

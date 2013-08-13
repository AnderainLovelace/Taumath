// Sine function of numerical and symbolic arguments

#include "stdafx.h"
#include "defs.h"

void
eval_sin(void)
{
	push(cadr(p1));
	eval();
	sine();
}

void
sine(void)
{
	save();
	p1 = pop();
	if (car(p1) == symbol(ADD))
		sine_of_angle_sum();
	else
		sine_of_angle();
	restore();
}

// Use angle sum formula for special angles.

#define A p3
#define B p4

void
sine_of_angle_sum(void)
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
			sine();
			push(B);
			cosine();
			multiply();
			push(A);
			cosine();
			push(B);
			sine();
			multiply();
			add();
			return;
		}
		p2 = cdr(p2);
	}
	sine_of_angle();
}

void
sine_of_angle(void)
{
	int n;
	double d;

	if (car(p1) == symbol(ARCSIN)) {
		push(cadr(p1));
		return;
	}

	if (isdouble(p1)) {
		d = sin(p1->u.d);
		if (fabs(d) < 1e-10)
			d = 0.0;
		push_double(d);
		return;
	}

	// sine function is antisymmetric, sin(-x) = -sin(x)

	if (isnegative(p1)) {
		push(p1);
		negate();
		sine();
		negate();
		return;
	}

	// sin(arctan(x)) = x / sqrt(1 + x^2)

	// see p. 173 of the CRC Handbook of Mathematical Sciences

	if (car(p1) == symbol(ARCTAN)) {
		push(cadr(p1));
		push_integer(1);
		push(cadr(p1));
		push_integer(2);
		power();
		add();
		push_rational(-1, 2);
		power();
		multiply();
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
		push(symbol(SIN));
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
	case 150:
		push_rational(1, 2);
		break;
	case 210:
	case 330:
		push_rational(-1, 2);
		break;
	case 45:
	case 135:
		push_rational(1, 2);
		push_integer(2);
		push_rational(1, 2);
		power();
		multiply();
		break;
	case 225:
	case 315:
		push_rational(-1, 2);
		push_integer(2);
		push_rational(1, 2);
		power();
		multiply();
		break;
	case 60:
	case 120:
		push_rational(1, 2);
		push_integer(3);
		push_rational(1, 2);
		power();
		multiply();
		break;
	case 240:
	case 300:
		push_rational(-1, 2);
		push_integer(3);
		push_rational(1, 2);
		power();
		multiply();
		break;
	case 90:
		push_integer(1);
		break;
	case 270:
		push_integer(-1);
		break;
	default:
		push(symbol(SIN));
		push(p1);
		list(2);
		break;
	}
}

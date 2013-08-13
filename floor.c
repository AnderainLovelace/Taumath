#include "stdafx.h"
#include "defs.h"

void
eval_floor(void)
{
	push(cadr(p1));
	eval();
	yfloor();
}

void
yfloor(void)
{
	save();
	yyfloor();
	restore();
}

void
yyfloor(void)
{
	double d;

	p1 = pop();

	if (!isnum(p1)) {
		push_symbol(FLOOR);
		push(p1);
		list(2);
		return;
	}

	if (isdouble(p1)) {
		d = floor(p1->u.d);
		push_double(d);
		return;
	}

	if (isinteger(p1)) {
		push(p1);
		return;
	}

	p3 = alloc();
	p3->k = NUM;
	p3->u.q.a = mdiv(p1->u.q.a, p1->u.q.b);
	p3->u.q.b = mint(1);
	push(p3);

	if (isnegativenumber(p1)) {
		push_integer(-1);
		add();
	}
}

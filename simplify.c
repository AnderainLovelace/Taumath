#include "stdafx.h"
#include "defs.h"

extern int trigmode;
static void simplify_tensor(void);
static int count(U *);
static int nterms(U *);
static void f1(void);
static void f2(void);
static void f3(void);
static void f4(void);
static void f5(void);
static void f9(void);

void
eval_simplify(void)
{
	push(cadr(p1));
	eval();
	simplify();
}

void
simplify(void)
{
	save();
	simplify_main();
	restore();
}

void
simplify_main(void)
{
	p1 = pop();

	if (istensor(p1)) {
		simplify_tensor();
		return;
	}

	if (find(p1, symbol(FACTORIAL))) {
		push(p1);
		simfac();
		p2 = pop();
		push(p1);
		rationalize();
		simfac();
		p3 = pop();
		if (count(p2) < count(p3))
			p1 = p2;
		else
			p1 = p3;
	}

	f1();
	f2();
	f3();
	f4();
	f5();
	f9();

	push(p1);
}

static void
simplify_tensor(void)
{
	int i;
	p2 = alloc_tensor(p1->u.tensor->nelem);
	p2->u.tensor->ndim = p1->u.tensor->ndim;
	for (i = 0; i < p1->u.tensor->ndim; i++)
		p2->u.tensor->dim[i] = p1->u.tensor->dim[i];
	for (i = 0; i < p1->u.tensor->nelem; i++) {
		push(p1->u.tensor->elem[i]);
		simplify();
		p2->u.tensor->elem[i] = pop();
	}
	if (iszero(p2))
		p2 = zero; // null tensor becomes scalar zero
	push(p2);
}

static int
count(U *p)
{
	int n;
	if (iscons(p)) {
		n = 0;
		while (iscons(p)) {
			n += count(car(p)) + 1;
			p = cdr(p);
		}
	} else
		n = 1;
	return n;
}

// try rationalizing

static void
f1(void)
{
	if (car(p1) != symbol(ADD))
		return;
	push(p1);
	rationalize();
	p2 = pop();
	if (count(p2) < count(p1))
		p1 = p2;
}

// try condensing

static void
f2(void)
{
	if (car(p1) != symbol(ADD))
		return;
	push(p1);
	Condense();
	p2 = pop();
	if (count(p2) <= count(p1))
		p1 = p2;
}

// this simplifies forms like (A-B) / (B-A)

static void
f3(void)
{
	push(p1);
	rationalize();
	negate();
	rationalize();
	negate();
	rationalize();
	p2 = pop();
	if (count(p2) < count(p1))
		p1 = p2;
}

// try expanding denominators

static void
f4(void)
{
	if (iszero(p1))
		return;
	push(p1);
	rationalize();
	inverse();
	rationalize();
	inverse();
	rationalize();
	p2 = pop();
	if (count(p2) < count(p1))
		p1 = p2;
}

// simplifies trig forms

void
simplify_trig(void)
{
	save();
	p1 = pop();
	f5();
	push(p1);
	restore();
}

static void
f5(void)
{
	if (find(p1, symbol(SIN)) == 0 && find(p1, symbol(COS)) == 0)
		return;

	p2 = p1;

	trigmode = 1;
	push(p2);
	eval();
	p3 = pop();

	trigmode = 2;
	push(p2);
	eval();
	p4 = pop();

	trigmode = 0;

	if (count(p4) < count(p3) || nterms(p4) < nterms(p3))
		p3 = p4;

	if (count(p3) < count(p1) || nterms(p3) < nterms(p1))
		p1 = p3;
}

// if it's a sum then try to simplify each term

static void
f9(void)
{
	if (car(p1) != symbol(ADD))
		return;
	push_integer(0);
	p2 = cdr(p1);
	while (iscons(p2)) {
		push(car(p2));
		simplify();
		add();
		p2 = cdr(p2);
	}
	p2 = pop();
	if (count(p2) < count(p1))
		p1 = p2;
}

static int
nterms(U *p)
{
	if (car(p) != symbol(ADD))
		return 1;
	else
		return length(p) - 1;
}

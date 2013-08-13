//-----------------------------------------------------------------------------
//
//	Author : philippe.billet@noos.fr
//
//	Error function erf(x)
//	erf(-x)=erf(x)
//  
//-----------------------------------------------------------------------------

#include "stdafx.h"
#include "defs.h"
static void yyerf(void);

void
eval_erf(void)
{
	push(cadr(p1));
	eval();
	yerf();
}

void
yerf(void)
{
	save();
	yyerf();
	restore();
}

static void
yyerf(void)
{
	double d;

	p1 = pop();

	if (isdouble(p1)) {
		d = 1.0 - erfc(p1->u.d);
		push_double(d);
		return;
	}

	if (isnegativeterm(p1)) {
		push_symbol(ERF);
		push(p1);
		negate();
		list(2);
		negate();
		return;
	}
	
	push_symbol(ERF);
	push(p1);
	list(2);
	return;
}

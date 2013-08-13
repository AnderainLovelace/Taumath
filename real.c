/* Returns the real part of complex z

	z		real(z)
	-		-------

	a + i b		a

	exp(i a)	cos(a)
*/

#include "stdafx.h"
#include "defs.h"

void
eval_real(void)
{
	push(cadr(p1));
	eval();
	real();
}

void
real(void)
{
	save();
	rect();
	p1 = pop();
	push(p1);
	push(p1);
	conjugate();
	add();
	push_integer(2);
	divide();
	restore();
}

/* Returns the coefficient of the imaginary part of complex z

	z		imag(z)
	-		-------

	a + i b		b

	exp(i a)	sin(a)
*/

#include "stdafx.h"
#include "defs.h"

void
eval_imag(void)
{
	push(cadr(p1));
	eval();
	imag();
}

void
imag(void)
{
	save();
	rect();
	p1 = pop();
	push(p1);
	push(p1);
	conjugate();
	subtract();
	push_integer(2);
	divide();
	push(imaginaryunit);
	divide();
	restore();
}


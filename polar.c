/* Convert complex z to polar form

	Input:		push	z

	Output:		Result on stack

	polar(z) = mag(z) * exp(i * arg(z))
*/

#include "stdafx.h"
#include "defs.h"

void
eval_polar(void)
{
	push(cadr(p1));
	eval();
	polar();
}

void
polar(void)
{
	save();
	p1 = pop();
	push(p1);
	mag();
	push(imaginaryunit);
	push(p1);
	arg();
	multiply();
	exponential();
	multiply();
	restore();
}

/* Convert complex z to clock form

	Input:		push	z

	Output:		Result on stack

	clock(z) = mag(z) * (-1) ^ (arg(z) / pi)

	For example, clock(exp(i pi/3)) gives the result (-1)^(1/3)
*/

#include "stdafx.h"
#include "defs.h"

void
eval_clock(void)
{
	push(cadr(p1));
	eval();
	clockform();
}

void
clockform(void)
{
	save();
#if 1
	p1 = pop();
	push(p1);
	mag();
	push_integer(-1);
	push(p1);
	arg();
	push(symbol(PI));
	divide();
	power();
	multiply();
#else
	p1 = pop();
	push(p1);
	mag();
	push(symbol(E));
	push(p1);
	arg();
	push(imaginaryunit);
	multiply();
	power();
	multiply();
#endif
	restore();
}

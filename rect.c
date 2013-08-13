/* Convert complex z to rectangular form

	Input:		push	z

	Output:		Result on stack
*/

#include "stdafx.h"
#include "defs.h"

void
eval_rect(void)
{
	push(cadr(p1));
	eval();
	rect();
}

void
rect(void)
{
	save();
	p1 = pop();
	if (car(p1) == symbol(ADD)) {
		push_integer(0);
		p1 = cdr(p1);
		while (iscons(p1)) {
			push(car(p1));
			rect();
			add();
			p1 = cdr(p1);
		}
	} else {
		push(p1);	// mag(z) * (cos(arg(z)) + i sin(arg(z)))
		mag();
		push(p1);
		arg();
		p1 = pop();
		push(p1);
		cosine();
		push(imaginaryunit);
		push(p1);
		sine();
		multiply();
		add();
		multiply();
	}
	restore();
}

// Adjunct of a matrix

#include "stdafx.h"
#include "defs.h"

void
eval_adj(void)
{
	push(cadr(p1));
	eval();
	adj();
}

void
adj(void)
{
	int i, j, n;

	save();

	p1 = pop();

	if (istensor(p1) && p1->u.tensor->ndim == 2 && p1->u.tensor->dim[0] == p1->u.tensor->dim[1])
		;
	else
		stop("adj: square matrix expected");

	n = p1->u.tensor->dim[0];

	p2 = alloc_tensor(n * n);

	p2->u.tensor->ndim = 2;
	p2->u.tensor->dim[0] = n;
	p2->u.tensor->dim[1] = n;

	for (i = 0; i < n; i++)
		for (j = 0; j < n; j++) {
			cofactor(p1, n, i, j);
			p2->u.tensor->elem[n * j + i] = pop(); /* transpose */
		}

	push(p2);

	restore();
}

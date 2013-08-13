// Outer product of tensors

#include "stdafx.h"
#include "defs.h"

void
eval_outer(void)
{
	p1 = cdr(p1);
	push(car(p1));
	eval();
	p1 = cdr(p1);
	while (iscons(p1)) {
		push(car(p1));
		eval();
		outer();
		p1 = cdr(p1);
	}
}

void
outer(void)
{
	save();
	p2 = pop();
	p1 = pop();
	if (istensor(p1) && istensor(p2))
		yyouter();
	else {
		push(p1);
		push(p2);
		if (istensor(p1))
			tensor_times_scalar();
		else if (istensor(p2))
			scalar_times_tensor();
		else
			multiply();
	}
	restore();
}

void
yyouter(void)
{
	int i, j, k, ndim, nelem;

	ndim = p1->u.tensor->ndim + p2->u.tensor->ndim;

	if (ndim > MAXDIM)
		stop("outer: rank of result exceeds maximum");

	nelem = p1->u.tensor->nelem * p2->u.tensor->nelem;

	p3 = alloc_tensor(nelem);

	p3->u.tensor->ndim = ndim;

	for (i = 0; i < p1->u.tensor->ndim; i++)
		p3->u.tensor->dim[i] = p1->u.tensor->dim[i];

	j = i;

	for (i = 0; i < p2->u.tensor->ndim; i++)
		p3->u.tensor->dim[j + i] = p2->u.tensor->dim[i];

	k = 0;

	for (i = 0; i < p1->u.tensor->nelem; i++)
		for (j = 0; j < p2->u.tensor->nelem; j++) {
			push(p1->u.tensor->elem[i]);
			push(p2->u.tensor->elem[j]);
			multiply();
			p3->u.tensor->elem[k++] = pop();
		}

	push(p3);
}

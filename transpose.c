// Transpose tensor indices

#include "stdafx.h"
#include "defs.h"
static void ytranspose(void);

void
eval_transpose(void)
{
	push(cadr(p1));
	eval();
	if (cddr(p1) == symbol(NIL)) {
		push_integer(1);
		push_integer(2);
	} else {
		push(caddr(p1));
		eval();
		push(cadddr(p1));
		eval();
	}
	transpose();
}

void
transpose(void)
{
	save();
	ytranspose();
	restore();
}

static void
ytranspose(void)
{
	int i, j, k, l, m, ndim, nelem, t;
	int ai[MAXDIM], an[MAXDIM];
	U **a, **b;

	p3 = pop();
	p2 = pop();
	p1 = pop();

	if (!istensor(p1)) {
		if (!iszero(p1))
			stop("transpose: tensor expected, 1st arg is not a tensor");
		push(zero);
		return;
	}

	ndim = p1->u.tensor->ndim;
	nelem = p1->u.tensor->nelem;

	// vector?

	if (ndim == 1) {
		push(p1);
		return;
	}

	push(p2);
	l = pop_integer();

	push(p3);
	m = pop_integer();

	if (l < 1 || l > ndim || m < 1 || m > ndim)
		stop("transpose: index out of range");

	l--;
	m--;

	p2 = alloc_tensor(nelem);

	p2->u.tensor->ndim = ndim;

	for (i = 0; i < ndim; i++)
		p2->u.tensor->dim[i] = p1->u.tensor->dim[i];

	p2->u.tensor->dim[l] = p1->u.tensor->dim[m];
	p2->u.tensor->dim[m] = p1->u.tensor->dim[l];

	a = p1->u.tensor->elem;
	b = p2->u.tensor->elem;

	for (i = 0; i < ndim; i++) {
		ai[i] = 0;
		an[i] = p1->u.tensor->dim[i];
	}

	// copy components from a to b

	for (i = 0; i < nelem; i++) {

		t = ai[l]; ai[l] = ai[m]; ai[m] = t;
		t = an[l]; an[l] = an[m]; an[m] = t;

		k = 0;
		for (j = 0; j < ndim; j++)
			k = (k * an[j]) + ai[j];

		t = ai[l]; ai[l] = ai[m]; ai[m] = t;
		t = an[l]; an[l] = an[m]; an[m] = t;

		b[k] = a[i];

		for (j = ndim - 1; j >= 0; j--) {
			if (++ai[j] < an[j])
				break;
			ai[j] = 0;
		}
	}

	push(p2);
	return;
}


// For example, the number of five card hands is choose(52,5)
//
//                          n!
//      choose(n,k) = -------------
//                     k! (n - k)!

#include "stdafx.h"
#include "defs.h"

void
eval_choose(void)
{
	push(cadr(p1));
	eval();
	push(caddr(p1));
	eval();
	choose();
}

// Result vanishes for k < 0 or k > n. (A=B, p. 19)

#define N p1
#define K p2

void
choose(void)
{
	save();

	K = pop();
	N = pop();

	if (choose_check_args() == 0) {
		push_integer(0);
		restore();
		return;
	}

	push(N);
	factorial();

	push(K);
	factorial();

	divide();

	push(N);
	push(K);
	subtract();
	factorial();

	divide();

	restore();
}

int
choose_check_args(void)
{
	if (isnum(N) && lessp(N, zero))
		return 0;
	else if (isnum(K) && lessp(K, zero))
		return 0;
	else if (isnum(N) && isnum(K) && lessp(N, K))
		return 0;
	else
		return 1;
}


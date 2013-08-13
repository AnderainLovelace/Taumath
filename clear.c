#include "stdafx.h"
#include "defs.h"

#ifndef ARM9
void
eval_clear(void)
{
	if (test_flag == 0)
		clear_term();
	clear_symbols();
	defn();
	push(symbol(NIL));
}
#endif
// clear from application GUI code


void
clear(void)
{
	run("clear");
}

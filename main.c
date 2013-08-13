/* Eigenmath by G. Weigt

	The starting point for a symbolic computation is in run.cpp

	Input is scanned in scan.cpp

	Expression evaluation is done in eval.cpp

	Output is formatted in display.cpp
*/

#include "defs.h"
#include "dconsole.h"

void
clear_term()
{
}

extern void eval_print(void);

void
eval_display(void)
{
	eval_print();
}

void
printstr(char *s)
{
	while (*s)
		printchar(*s++);
}

extern int test_flag;

#define OUTBUFLEN 10000
//char out_buf[OUTBUFLEN + 1];
int out_count;

void
printchar(int c)
{
	dConsolePutChar(c);
}

void
printchar_nowrap(int c)
{
	printchar(c);
}

void
eval_draw(void)
{
	push(symbol(NIL));
}

void
eval_sample(void)
{
}

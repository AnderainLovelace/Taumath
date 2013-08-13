#include <fxlib.h>
#include <stdio.h>
#include <setjmp.h>
#include "defs.h"
#include "dconsole.h"

#define EXPR_BUF_SIZE 256

extern U ** mem;
extern unsigned int **free_stack;

int
initialize_tuamath()
{
	// modified by anderain 
	free_stack	= (unsigned int**)	calloc(500/*1000*/,sizeof(unsigned int*));
	mem			= (U**)				calloc(100 /*M*/,sizeof(U*));
	stack   	= (U**)				calloc(TOS,sizeof(U*));
	symtab  	= (U*)				calloc(NSYM,sizeof(U));
	binding 	= (U**)				calloc(NSYM,sizeof(U*));
	arglist 	= (U**)				calloc(NSYM,sizeof(U*));
	logbuf  	= (char*)			calloc(256,1);
}


int AddIn_main(int isAppli, unsigned short OptionNum)
{
	unsigned int	key;
	char			expr[EXPR_BUF_SIZE];

	initialize_tuamath();
	// initialize failed ?
	if (!(free_stack && mem && stack && symtab && binding && arglist && logbuf))
		return 0;

    Bdisp_AllClr_DDVRAM();

	puts("eigenmath-FX 1.0");
	puts("  ported by Andearin");
	puts("--------------------");

	for(;;)
	{
		printf(">");
		*expr = '\0';
		gets(expr,EXPR_BUF_SIZE);
		puts(expr);
		printf("=");
		run(expr);
	}


	for(;;)GetKey(&key);
    return 1;
}

#pragma section _BR_Size
unsigned long BR_Size;
#pragma section

#pragma section _TOP
int InitializeSystem(int isAppli, unsigned short OptionNum)
{
    return INIT_ADDIN_APPLICATION(isAppli, OptionNum);
}
#pragma section


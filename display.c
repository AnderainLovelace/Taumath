#include "stdafx.h"
#include "defs.h"


void
display(U *p)
{
	save();

	printline(p);

	restore();
}

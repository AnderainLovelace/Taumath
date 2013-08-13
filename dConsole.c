#include <fxlib.h>
#include <stdio.h>
#include <stdarg.h>
#include "dconsole.h"

#define LINE_ROW_MAX	8
#define LINE_COL_MAX	21

typedef unsigned int 	uint;
typedef unsigned char	uchar;

char	line_buf[LINE_ROW_MAX][LINE_COL_MAX+1];
int		line_index	= 0;
int		line_x		= 0;
int		line_start	= 0;
int		line_count	= 0;

void dAreaClear (int left,int top,int right,int bottom,int sel) 
{ 
	DISPBOX box; 
	box.left = left;box.top = top;box.right = right;box.bottom = bottom; 
 	if (sel != 1) 
		Bdisp_AreaClr_VRAM (&box); 
	if (sel != 0){ 
 		Bdisp_DrawLineVRAM (box.left,box.top,box.right,box.top); 
		Bdisp_DrawLineVRAM (box.left,box.bottom,box.right,box.bottom); 
		Bdisp_DrawLineVRAM (box.left,box.top,box.left,box.bottom); 
		Bdisp_DrawLineVRAM (box.right,box.top,box.right,box.bottom); 
    } 
}

uint WaitKey ()
{
	uint key;GetKey(&key);return key;
}

char dGetKeyChar (uint key)
{
	if (key>=KEY_CHAR_A && key<=KEY_CHAR_Z)
		return key+32;
	else if (key>=KEY_CHAR_0 && key<= KEY_CHAR_9)
		return key;
	else if (key>=' ' && key<='~')
		return key;
	switch(key)
	{
		case KEY_CHAR_PLUS:		return '+';
		case KEY_CHAR_MINUS:	return '-';
		case KEY_CHAR_MULT:		return '*';
		case KEY_CHAR_DIV:		return '/';
		case KEY_CHAR_POW:		return '^';
	}

	return 0;
}

void dConsoleCls ()
{
	line_index	= 0;
	line_x		= 0;
	line_start	= 0;
	line_count	= 0;
	Bdisp_AllClr_VRAM();
}

int dGetLineBox (char * s,int max,int width,int x,int y)
{
	int		pos = strlen(s);
	int		refresh = 1;
	uint	key;
	char	c;
	
	while(1)
	{
		if (refresh)
		{
			dAreaClear(x,y,x+width*6+2,y+10,2);

			if (pos<width-1)
			{
				PrintXY (x+1,y+2,(uchar*)s,0);
				PrintXY (x+1+pos*6,y+2,(uchar*)"_",0);
			}
			else
			{
				PrintXY (x+1,y+2,(uchar*)(s+pos-width+1),0);
				PrintXY (x+1+(width-1)*6,y+2,(uchar*)"_",0);
			}
			refresh = 0;
		}

		GetKey(&key);

		if ((c=dGetKeyChar(key))!=0)
		{
			if (pos>=max) continue;

			s[pos++] = c;s[pos] = '\0';
			refresh = 1;
		}
		else
		{
			if (key==KEY_CTRL_DEL)
			{
				if (pos<=0) continue;
				s[--pos] = '\0';
				refresh  = 1;
			}
			else if (key==KEY_CTRL_AC)
			{
				*s		= 0;
				pos		= 0;
				refresh	= 1;
			}
			else if (key==KEY_CTRL_EXE) return 1;
			else if (key==KEY_CTRL_EXIT) return 0;
			
		}
		
	}
}

int dGetLine (char * s,int max)	// This function is depended on dConsole
								// And this function is not allowed to abolish
{
	int		pos = strlen(s);
	int		refresh = 1;
	int		x,y,l,width;
	uint	key;
	char	c;
	
	
	l = strlen (line_buf[line_index]);
	
	if (l>=LINE_COL_MAX)
	{
		dConsolePut("\n");
		l = 0;
	}
	else
		dConsoleRedraw();

	x = l + 1;
	y = line_count;
	width = LINE_COL_MAX - l;

	while (1)
	{
		if (refresh)
		{
			int i;
			for (i=x;i<=LINE_COL_MAX;++i)
			{
				locate(i,y);Print((uchar*)" ");
			}
			if (pos<width-1)
			{
				locate(x,y);		Print((uchar*)s);
				locate(x+pos,y);	Print((uchar*)"_");
			}
			else
			{
				locate(x,y);			Print((uchar*)s+pos-width+1);
				locate(x+width-1,y);	Print((uchar*)"_");
			}
			refresh = 0;
		}
		GetKey(&key);
		if ((c=dGetKeyChar(key))!=0)
		{
			if (pos>=max) continue;

			s[pos++] = c;s[pos] = '\0';
			refresh = 1;
		}
		else
		{
			if (key==KEY_CTRL_DEL)
			{
				if (pos<=0) continue;
				s[--pos] = '\0';
				refresh  = 1;
			}
			else if (key==KEY_CTRL_AC)
			{
				*s		= 0;
				pos		= 0;
				refresh	= 1;
			}
			else if (key==KEY_CTRL_EXE) return 1;
			
		}
	}
	return 0;
}

void dConsoleRedraw ()
{
	int i,j;
	Bdisp_AllClr_VRAM();
	for(i=0,j=line_start;i<line_count;++i)
	{
		locate(1,i+1);Print((uchar*)line_buf[j]);
		if (++j>=LINE_ROW_MAX) j = 0;
	}
	
}
void dConsolePutChar (char c)
{
	if (line_count == 0) line_count = 1;
	if (c != '\n')
		line_buf[line_index][line_x++] = c;
	else
	{
		line_buf[line_index][line_x] = '\0';
		line_x = LINE_COL_MAX;
	}
	if (line_x>=LINE_COL_MAX)
	{
		line_buf[line_index][line_x] = '\0';

		line_x = 0;
		if (line_count<LINE_ROW_MAX)
		{
			++line_count;
		}
		else
		{
			line_start++;
			if (line_start>=LINE_ROW_MAX) line_start = 0;
		}
		line_index++;
		if (line_index>=LINE_ROW_MAX) line_index = 0;
	}
	line_buf[line_index][line_x] = '\0';
	dConsoleRedraw();
}

void dConsolePut(const char * str)
{
	if (line_count == 0) line_count = 1;
	for (;*str;++str)
	{
		if (*str != '\n')
			line_buf[line_index][line_x++] = *str;
		else
		{
			line_buf[line_index][line_x] = '\0';
			line_x = LINE_COL_MAX;
		}
		if (line_x>=LINE_COL_MAX)
		{
			line_buf[line_index][line_x] = '\0';

			line_x = 0;
			if (line_count<LINE_ROW_MAX)
			{
				++line_count;
			}
			else
			{
				line_start++;
				if (line_start>=LINE_ROW_MAX) line_start = 0;
			}
			line_index++;
			if (line_index>=LINE_ROW_MAX) line_index = 0;
		}
	}
	line_buf[line_index][line_x] = '\0';
	dConsoleRedraw();
}

void dPuts(const char * s)
{
	dConsolePut(s);
	dConsolePut("\n");
}

int dPrintf (const char * format,...)
{
	char	buf[256];
	int		length;
	va_list	arg_list;

	va_start(arg_list,format);
	length = vsprintf(buf,format,arg_list);
	va_end(arg_list);

	dConsolePut (buf);

	return length;
}


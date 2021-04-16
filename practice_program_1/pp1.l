%{
#include<stdio.h>
int p=0,s=0;
%}
%%
"printf" {fprintf(yyout, "writef");p++;}
"scanf" {fprintf(yyout, "readf");s++;}
%%

int main()
{
	yyin = fopen("input.c", "r");
	yyout = fopen("output.c", "w");

	yylex();

	printf("\nNumber of printf = %d\nNumber of scanf = %d\n",p,s);
}

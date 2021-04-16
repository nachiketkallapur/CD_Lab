%{
#include<stdio.h>
int op=0, key=0, var=0, d=0;
%}
%%
if|else|then|begin|end|int|float|byte|short|long|while|for|switch|case|struct|goto|return|main key++;
[0-9] d++;
[a-zA-Z_][a-zA-Z0-9]* var++;
"+"|"-"|"*"|"/"|"<"|">"|"\\"|"=" op++;
.;
\n return 0;
%%
int main()
{
	printf("Enter a string: ");
	
	yylex();

	printf("Keywords: %d\nVariables: %d\nOperators: %d\nDigits: %d\n",key,var,op,d);
}
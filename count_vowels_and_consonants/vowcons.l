%{
int c=0,v=0;
%}
%%
([aeiouAEIOU]) v++;
([a-zA-Z]) c++;
.;
\n return 0;
%%
int main()
{
printf("Enter the string: ");
yylex();
printf("No. of vowels = %d\nNo. of consonants = %d\n",v,c);
}
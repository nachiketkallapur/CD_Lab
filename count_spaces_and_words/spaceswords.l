%{
int wd=0,sp=0;
%}
%%
([" "]) sp++;
([a-zA-Z0-9])* wd++;
.;
\n return 0;
%%
main()
{
printf("Enter the string: ");
yylex();
printf("No. of spaces = %d\nNo. of words = %d\n",sp,wd);
}
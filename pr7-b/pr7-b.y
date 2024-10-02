%
{
#include <stdio.h>
#include <stdlib.h>
int yylex();
void yyerror();
%}
%token A B NL
%%
stmt: S NL {printf("Valid String\n");
return 0;}
S : A S B | ;
%%
void main()
{
printf("Enter a String :");
yyparse();
}
void yyerror()
{
printf("Invalid String\n");
}


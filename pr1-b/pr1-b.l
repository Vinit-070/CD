%{
#include <stdio.h>
%}
%%
[\n] { printf("My Name is Vinit Patel\n"); }
. {return 0;}
%%
int yywrap(){}
int main()
{


yylex();
return 0;
}

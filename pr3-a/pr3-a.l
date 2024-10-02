%{
#include <stdio.h>
int count = 0;
%}
%%
[()] {
if(yytext[0] == '(')
{
count++;
}
else if(yytext[0] == ')')
{
count--;
}
}
\n {return 0;}
. ;
%%
int yywrap(){}
int main()
{
printf("Enter string: \n");
yylex();
if(count == 0)
{ printf("Balanced parentheses\n"); }
else if(count > 0)
{ printf("Extra opening parenthesis or missing closing parentheses\n"); }
else if(count < 0)
{ printf("Extra closing parentheses or missing opening parentheses\n"); }
else { printf("Unreachable code (shouldn't reach here)\n"); }
return 0;
}

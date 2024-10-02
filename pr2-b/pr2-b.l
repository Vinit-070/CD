%{
#include <stdio.h>
%}

%%
[+]?[0-9]+ {printf("Number is positive \n");
return 0;}
[-]{1}[0-9]+ {printf("Number is negative \n");
return 0; }
[+]?[0-9]+[.]{1}[0-9]+ {printf("Number is positive floating \n");
return 0; }
[-]{1}[0-9]+[.]{1}[0-9]+ {printf("Number is negative floating \n");
return 0; }
. {return 0;}
%%
int yywrap(){}
int main()
{
yylex();
return 0;
}



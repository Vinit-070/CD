%{
#include <stdio.h>
%}
%%
[aeiouAEIOU][A-Za-z0-9]* {printf("Word start with vowel. Word is %s. \n",yytext);
return 0;}
^[^aeiouAEIOU][A-Za-z0-9]* {printf("Word Not start with vowel. Word is %s.\n",yytext);
return 0; }
. {return 0;}
%%
int yywrap(){}
int main()
{
yylex();
return 0;
}



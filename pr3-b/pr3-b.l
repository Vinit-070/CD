%{
#include <stdio.h>
%}
%%
"<"([a-zA-Z0-9]+)">" { printf("%s\n", yytext); }
"</"([a-zA-Z0-9]+)">" { printf("%s\n", yytext); }
.|\n ;
%%
int yywrap(){}
int main()
{
char fname[100];
printf("Enter the name of File: ");
scanf("%s",fname);
yyin = fopen(fname,"r");
yylex();
return 0;
}

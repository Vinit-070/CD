%{
#include<stdio.h>
%}
%%
"/*".*\n*.*"*/" {printf("%s",yytext);}
. {}
%%
int yywrap(){}
int main()
{
char fname[100];
printf("Enter the name of the file:");
scanf("%s", fname);
yyin=fopen(fname,"r");
yylex();
}


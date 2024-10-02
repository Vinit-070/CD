%{
#include <stdio.h>
%}
%%
"//".* {}
%%
int yywrap(){}
int main()
{
char fname[100];
printf("Enter the name of File: ");
scanf("%s",fname);
yyin = fopen(fname,"r");
yyout=fopen("test_output.c","w");
yylex();
return 0;
}

%{
#include <stdio.h>
int i,ca = 0,cb = 0;
%}
%%
[a]+[b]+ {
for(i=0;i<yyleng;i++)
{
if(yytext[i]=='a')
{
ca++;
}else if(yytext[i] == 'b')
{
cb++;
}
}
if(ca == cb)
{
printf("String accepted\n");
}
else
{
printf("String is not accepted\n");
}
return 0;


}
.+ {
printf("String not accepted\n");
return 0;
}
%%


int yywrap(){}
int main()
{
printf("Enter a String: ");
yylex();
return 0;
}

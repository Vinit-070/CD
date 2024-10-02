%{
#include<stdio.h>
int char_count = 0, space_count = 0, line_count = 0, word_count = 0;
%}

%%


[ \t]+ { space_count++; }
\n { line_count++; }
[a-zA-Z]+ { word_count++; char_count += yyleng; }
. { char_count++; word_count++; }
%%
int yywrap(){
printf("Number of characters: %d\n", char_count);
printf("Number of spaces: %d\n", space_count);
printf("Number of lines: %d\n", line_count);
printf("Number of words: %d\n", word_count);
return 1;
}
int main(){
char fname[100];
printf("Enter file name: ");
scanf("%s",fname);
yyin=fopen(fname,"r");
yylex();
return 0;
}

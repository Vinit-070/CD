%{
#include <stdio.h>
#include <string.h>
FILE *operator_file, *keyword_file, *identifier_file, *separator_file;
%}
%%
"+"|"-"|"*"|"/"|"<"|">"|"="|"!="|"&&"|"||" {
fprintf(operator_file, "%s\n", yytext);
}
"int"|"float"|"char"|"void"|"if"|"else"|"while"|"for"|"return" {
fprintf(keyword_file, "%s\n", yytext);
}
[a-zA-Z][a-zA-Z0-9]* {
fprintf(identifier_file, "%s\n", yytext);
}
[ \t\n]+ {
// Ignore whitespace
}
. {
fprintf(separator_file, "%s\n", yytext);
}
%%
int main() {
void open_files() {
operator_file = fopen("operators.txt", "w");
keyword_file = fopen("keywords.txt", "w");
identifier_file = fopen("identifiers.txt", "w");
separator_file = fopen("separators.txt", "w");
}

void close_files() {
fclose(operator_file);
fclose(keyword_file);
fclose(identifier_file);
fclose(separator_file);
}
open_files();
yyin = fopen("test.txt", "r");
yylex();
close_files();
return 0;
}
int yywrap(){
return 1;
}


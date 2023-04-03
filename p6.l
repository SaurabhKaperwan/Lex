%{
#include <stdio.h>
%}

%%
[ \t]+    { fprintf(yyout, " "); }
.         { fprintf(yyout, "%s", yytext); }
%%

int main()
{
    FILE *input_file = fopen("input.txt", "r");
    FILE *output_file = fopen("output.txt", "w");

    //Set input and output streams
    yyin = input_file;
    yyout = output_file;
    yylex();
    fclose(input_file);
    fclose(output_file);
    return 0;
}

int yywrap()
{
    return 1;
}

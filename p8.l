%{
#include<stdio.h>
%}

%%
"<"[^>]*">" {
                fprintf(yyout, "%s\n", yytext);
            }
.           {

            }
%%

int yywrap()
{
    return 1;
}

int main(int argc, char *argv[])
{
    if(argc < 3)
    {
        printf("Usage : %s input.html output.txt\n",argv[0]);
        return 1;
    }


    yyin = fopen(argv[1], "r");
    yyout = fopen(argv[2], "w");

    yylex();

    fclose(yyin);
    fclose(yyout);

    return 0;
}

/*
Design a LEX Code to extract all html tags in the given HTML 
file at run time and store into Text file given at run time
*/

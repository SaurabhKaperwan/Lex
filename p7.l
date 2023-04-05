%{
%}

%%
"//"[^\n]* ;
"/*"([^*]|[*]+[^/])*[*]+"/" ;
. fprintf(yyout,"%s",yytext);
%%

int yywrap()
{
    return 1;
}
int main()
{ 
    extern FILE *yyin,*yyout;
    yyin=fopen("input.c","r");
    yyout=fopen("out.c","w");
    yylex();
} 

/*
Design a LEX Code to remove the comments from any 
C-Program given at run-time and store into ‘out.c’ file.
*/

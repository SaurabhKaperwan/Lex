/*
    DFA that recognizes strings of binary digits with at least one 1, 
    and prints "Accepted" for valid strings, 
    "Not Accepted" for invalid strings without a 1, and "INVALID" for invalid 
    strings with non-binary characters
*/
%{
%}

%s A B

%%
<INITIAL>1 BEGIN INITIAL;
<INITIAL>0 BEGIN A;
<INITIAL>[^0|\n] BEGIN B;
<INITIAL>\n BEGIN INITIAL; printf("Accepted\n");
<A>1 BEGIN A;
<A>0 BEGIN INITIAL;
<A>[^0|\n] BEGIN B;
<A>\n BEGIN INITIAL; printf("Not Accepted\n");
<B>0 BEGIN B;
<B>1 BEGIN B;
<B>[^0|\n] BEGIN B;
<B>\n {BEGIN INITIAL; printf("INVALID\n");}
%%

int yywrap()
{
    return 1;
}

void main()
{
    yylex();
}
    

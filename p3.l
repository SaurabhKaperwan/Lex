%{
#include<stdio.h>
%}

%%
[\t\n]+ {}
[-]?[0-9]+	{printf("Interger Value: %s\n", yytext);}
[-]?[0-9]*\.[0-9]+	{printf("Float Value: %s\n", yytext);}
.+	{printf("Invalid Input: %s\n", yytext);}
%%

int yywrap(){}

int main()
{
	yylex();
	return 0;
}

/*
Design a LEX Code to identify 
and print integer and float value in given Input pattern.
*/

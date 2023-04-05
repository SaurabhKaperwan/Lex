%{
#include<stdio.h>
%}

%%
[\t\n]+ {}
[0-9]+	{printf("Interger Value: %s\n", yytext);}
[0-9]*\.[0-9]+	{printf("Float Value: %s\n", yytext);}
.	{printf("Invalid Input: %s\n", yytext);}
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


In regular expressions, the backslash character () is used to escape special characters, so that they can be interpreted literally rather than having their special meaning.

The dot (.) is a special character in regular expressions that matches any character except a newline. If you want to match a literal dot character (.), you need to escape it with a backslash, which results in the regular expression ..

Therefore, . is a regular expression that matches a literal period (dot) character*/

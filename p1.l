/*
 Count the number of lines words spaces and characters
*/
/*
	Commands to run this code:
	lex fileName.l
	gcc lex.yy.c
	./a.out < input.txt
*/

%{
	int num_lines = 0;
	int num_words = 0;
	int num_spaces = 0;
	int num_chars = 0;	
%}

%%
\n	{num_lines++;}
[a-zA-Z]+ {num_words++; num_chars += yyleng;}
" "	{num_spaces++;}
.	{num_chars++;}
%%
/*
The yywrap function is used by the scanner to 
determine when the end of the input has been reached.
*/

/*
yytext is a character pointer that is automatically 
defined by Flex (or Lex) in the generated scanner code
*/
int yywrap() 
{
    return 1;
}
/*
yylex() start the lexer and then prints out the final counts
*/
int main()
{
	yylex();
	printf("Lines: %d\nWords: %d\nSpaces: %d\nCharacters: %d\n",num_lines, num_words,num_spaces,num_chars);
	return 0;
}

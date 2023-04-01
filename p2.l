%{
int count = 0;
%}

%%
[\t\n]+ {}
"$" {return 0;}
"int"|"float"|"char"|"if"|"for"   {   printf("%s is a keyword\n", yytext);  }
[a-zA-Z_][a-zA-z0-9_]*  {   printf("Valid Identifier: %s\n", yytext); count++;   }
.  {   printf("Not Valid Identifier: %s\n", yytext);    }
%%

int yywrap(){}

int main()
{
    yylex();
    printf("Total Identifiers : %d", count);
    return 0;
}

/*
[\t\n]+ {} matches one or more occurrences of tab and newline characters and discards them.
"$" {return 0;} specifies the end of the input file.
"int"|"float"|"char"|"double"|"void"|"short"|"long"|"signed"|"unsigned"|"const"|"static"|"extern"|"if"|"else"|"for"|
"while"|"do"|"switch"|"case"|"default" matches any of the C/C++ keywords and prints them as such.
[a-zA-Z_][a-zA-z0-9_]* matches any valid identifier, which must start with a letter or an underscore and 
can be followed by zero or more letters, digits or underscores. The matched identifier is printed 
as a valid identifier, and count is incremented.
. matches any character that has not already been matched, and prints it as not a valid identifier
*/

/*
Design a LEX Code to identify and print valid Identifier
of C/C++ in given Input pattern. 
*/

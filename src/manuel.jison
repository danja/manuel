
/* description: Parses end executes mathematical expressions. */

/* lexical grammar */
%lex
%%

\s+                   /* skip whitespace */
\/\/[^\n]*                                                   /* skip comment */
\#[^\n]*                                                     /* skip comment */

^"http""s"?"://"\S+[^">"] return 'URI'
"<"                   return '<'
">"                   return '>'
<<EOF>>               return 'EOF'

/lex

/* operator associations and precedence */


%start expressions

%% /* language grammar */

expressions
    : e EOF
        { typeof console !== 'undefined' ? console.log($1) : print($1);
          return $1; }
    ;

e
    : '<' + URI + '>'
    	{$$ = yy.stuff($2);}
    ;


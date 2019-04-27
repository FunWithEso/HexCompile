%option noyywrap
%option nounistd

%{
#include "Tokens.h"
using namespace uscc::scan;
%}

%%

%{
    /* Arithmetic */
%}
"+"						{ return Token::Sum; }
"-"						{ return Token::Diff; }
"*"						{ return Token::Prod; }
"/"						{ return Token::Quot; }
"%"                     { return Token::Mod; }
"~"						{ return Token::Neg; }
"("						{ return Token::EdgeDec; }
")"						{ return Token::EdgeInc; }

%{
    /* I/O */
%}
","                     { return Token::ReadSingleByte; }
"?"                     { return Token::ReadAndDiscard; }
";"                     { return Token::ModAndWrite; }
"!"                     { return Token::DecWrite; }

%{
    /* Control Flow */
%}
"$"                     { return Token::Jump; }
"/"                     { return Token::FS; }
"\"                     { return Token::BS; }
"_"                     { return Token::US; }
"|"                     { return Token::SL; }
">"                     { return Token::GT; }
"<"                     { return Token::LT; }
"["                     { return Token::PIP; }
"]"                     { return Token::NIP; }
"#"                     { return Token::JIP; }

%{
    /* Memory */
%}
"{"                     { return Token::MPLeft; }
"}"                     { return Token::MPRight; }
"\""                     { return Token::BackAndLeft; }
"\'"                     { return Token::BackAndRight; }
"="                     { return Token::MPReverse; }
"^"                     { return Token::LeftIfZero; }
"="                     { return Token::MPReverse; }
"&"                     { return Token::CPLeftIfZero; }

%{
    /* Values */
%}

"\'"("\\t"|"\\n"|.)"\'" { return Token::Constant; }
"-"?(0|([1-9][0-9]*))   { return Token::Constant; }
\"([^\\\"]|\\n|\\t)\"  { return Token::Char; }

%{
    /* White space/comments */
%}

" "						{ return Token::Space; }
"\t"					{ return Token::Tab; }

("\n"|"\r\n")           { return Token::Newline; }

%{
    /* NOP */
%}

"."						{ return Token::NOP; }

%%
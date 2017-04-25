" - help c.vim
" - syntax match for brackets [](){} and colon : are commented out because
"   including them will cause vim to incorrectly highlight brackets (mostly
"   curly brackets) and semicolons as errors in c source files
"   - setting c_no_bracket_error = 1 and c_no_curly_error = 1 doesn't fix the
"     problem

" in C99, it is possible for valid code to have {} inside [] (eg. compound
" literals) so disable this error highlight
let c_no_bracket_error = 1

" in C99, it is also possible for valid code to have {} inside () (eg.
" compound literals) so disable this error highlight
let c_no_curly_error = 1

" help :syn-match
syntax match oozzyCOperator "\M="
syntax match oozzyCOperator "\M+"
syntax match oozzyCOperator "\M-"
syntax match oozzyCOperator "\M*"
syntax match oozzyCOperator "\M/"
syntax match oozzyCOperator "\M%"
syntax match oozzyCOperator "\M++"
syntax match oozzyCOperator "\M--"

syntax match oozzyCOperator "\M=="
syntax match oozzyCOperator "\M!="
syntax match oozzyCOperator "\M>"
syntax match oozzyCOperator "\M<"
syntax match oozzyCOperator "\M>="
syntax match oozzyCOperator "\M<="

syntax match oozzyCOperator "\M!"
syntax match oozzyCOperator "\M&&"
syntax match oozzyCOperator "\M||"

syntax match oozzyCOperator "\M~"
syntax match oozzyCOperator "\M&"
syntax match oozzyCOperator "\M|"
syntax match oozzyCOperator "\M\^"
syntax match oozzyCOperator "\M<<"
syntax match oozzyCOperator "\M>>"

syntax match oozzyCOperator "\M+="
syntax match oozzyCOperator "\M-="
syntax match oozzyCOperator "\M*="
syntax match oozzyCOperator "\M/="
syntax match oozzyCOperator "\M%="
syntax match oozzyCOperator "\M&="
syntax match oozzyCOperator "\M|="
syntax match oozzyCOperator "\M\^="
syntax match oozzyCOperator "\M<<="
syntax match oozzyCOperator "\M>>="

" syntax match oozzyCOperator "\M\["
" syntax match oozzyCOperator "\M\]"
syntax match oozzyCOperator "\M->"
syntax match oozzyCOperator "\M."
syntax match oozzyCOperator "\M->*"
syntax match oozzyCOperator "\M.*"

" syntax match oozzyCOperator "\M("
" syntax match oozzyCOperator "\M)"
syntax match oozzyCOperator "\M,"
syntax match oozzyCOperator "\M?"
" syntax match oozzyCOperator "\M:"
syntax match oozzyCOperator "\M::"
syntax match oozzyCOperator "\M..."

" syntax match oozzyCOperator "\M{"
" syntax match oozzyCOperator "\M}"
syntax match oozzyCOperator "\M;"

" help :highlight
highlight link oozzyCOperator Operator

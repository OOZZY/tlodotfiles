" a vim colorscheme
" Maintainer: oozzy
" Last Change: ????-??-??

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" boilerplate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - see /usr/share/vim/vim74/colors/murphy.vim

" - help :highlight
" - reset all highlighting to the defaults
highlight clear

" - help 'background'
" - when set to dark, vim will try to use colors that look good on a dark
"   background
set background=dark

" - help exists()
" - help g:syntax_on
" - help :syntax-reset
" - if syntax_on variable exists
if exists("syntax_on")
  " - if you have changed the colors and messed them up, use this command to
  "   get the defaults back
  syntax reset
endif

" - help g:colors_name
" - set g:colors_name variable to the name of this colorscheme
let g:colors_name = "oozzy"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" notes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - help :highlight
" - help group-name
" - help highlight-groups
" - help highlight-args
" - help highlight-term
" - help highlight-cterm
" - help highlight-gui
" - help highlight-ctermbg
" - help highlight-ctermfg
" - help highlight-guibg
" - help highlight-guifg
" - highlight <group-name> <key>=<arg>...
" - help cterm-colors
" - help gui-colors

" cterm:
" - following cterm* settings are for 8-color terminals
" - following cterm* settings use only color names and not color numbers
" - note some terminals can't mix attributes with coloring. use only one of
"   cterm= OR ctermfg= OR ctermbg=
" - for NR-8 color numbers, the '*' indicates that the bold attribute is set for
"   ctermfg
"   - in many 8-color terminals, causes the bright colors to appear
"   - doesn't work for background colors
"   - each of the 8 colors have a dark and a light version. the background
"     color can only be a dark color
" - ----------------------------------------+-------------------------------
"   Dark Colors                             | Light Colors
"   Name                      (NR-16, NR-8) | Name             (NR-16, NR-8)
"   ----------------------------------------+-------------------------------
"   Black                            (0, 0) | DarkGray, DarkGrey    (8 , 0*)
"   DarkBlue                         (1, 4) | Blue, LightBlue       (9 , 4*)
"   DarkGreen                        (2, 2) | Green, LightGreen     (10, 2*)
"   DarkCyan                         (3, 6) | Cyan, LightCyan       (11, 6*)
"   DarkRed                          (4, 1) | Red, LightRed         (12, 1*)
"   DarkMagenta                      (5, 5) | Magenta, LightMagenta (13, 5*)
"   Brown, DarkYellow                (6, 3) | Yellow, LightYellow   (14, 3*)
"   LightGray, LightGrey, Gray, Grey (7, 7) | White                 (15, 7*)
"   ----------------------------------------+-------------------------------
" - the same table but sorted by NR-8 instead of NR-16
"   ----------------------------------------+-------------------------------
"   Dark Colors                             | Light Colors
"   Name                      (NR-16, NR-8) | Name             (NR-16, NR-8)
"   ----------------------------------------+-------------------------------
"   Black                            (0, 0) | DarkGray, DarkGrey    (8 , 0*)
"   DarkRed                          (4, 1) | Red, LightRed         (12, 1*)
"   DarkGreen                        (2, 2) | Green, LightGreen     (10, 2*)
"   Brown, DarkYellow                (6, 3) | Yellow, LightYellow   (14, 3*)
"   DarkBlue                         (1, 4) | Blue, LightBlue       (9 , 4*)
"   DarkMagenta                      (5, 5) | Magenta, LightMagenta (13, 5*)
"   DarkCyan                         (3, 6) | Cyan, LightCyan       (11, 6*)
"   LightGray, LightGrey, Gray, Grey (7, 7) | White                 (15, 7*)
"   ----------------------------------------+-------------------------------
" - ctermfg=White cterm=NONE. foreground text will be LightGray and not bold
" - ctermfg=White cterm=bold. foreground text will be White and bold
" - ctermfg=LightGray cterm=NONE. foreground text will be LightGray and not bold
" - ctermfg=LightGray cterm=bold. foreground text will be White and bold
" - seems like there is no way to make foreground text White and not bold
" - cterm=NONE. foreground text will be the dark counterpart and not bold
" - cterm=bold. foreground text will be the light counterpart and bold
" - seems like there is no way to make foreground text the light counterpart
"   and not bold
" - always set cterm=bold and don't use cterm=NONE
" - example: ctermbg=Black ctermfg=DarkGray cterm=NONE
"   - background will be black and foreground text will also be black
"   - foreground can't be seen
" - example: ctermbg=Black ctermfg=DarkGray cterm=bold
"   - background will be black and foreground text will be dark gray
"   - foreground can be seen
" - note the actual color that is used in the terminal is ultimately determined
"   by the color palette of the terminal emulator
"   - in gnome-terminal, the color palette entry numbers seem to correspond with
"     the NR-8 numbers, however the '*' colors start with 8 and go up to 15
"     - palette entry 0 is Black
"     - palette entry 1 is DarkRed
"     - palette entry 7 is LightGray
"     - palette entry 8 is DarkGray
"     - palette entry 9 is Red
"     - palette entry 15 is White
"   - for example, if ctermfg=DarkGray, the foreground color used in
"     gnome-terminal will be whatever color is set for palette entry 8 and it
"     won't necessarily be dark gray

" gui:
" - following gui* settings use only color numbers and not color names
" - for each syntax/highlight group, the gui colors match the cterm colors
"   - exceptions: Cursor, CursorColumn, CursorLine
" - the cterm color names listed above are also available as gui color names on
"   most systems

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" color palettes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - color palette of konsole in linux mint 17.x kde
"   - retrieved by taking screenshots and color picking with gimp
" - possible background colors (can use in background and foreground):
" let s:Black       = "#000000"
" let s:DarkBlue    = "#1818b2"
" let s:DarkGreen   = "#18b218"
" let s:DarkCyan    = "#18b2b2"
" let s:DarkRed     = "#b21818"
" let s:DarkMagenta = "#b218b2"
" let s:DarkYellow  = "#b26818"
" let s:LightGray   = "#b2b2b2"
" - possible foreground colors (can use in foreground only):
" let s:DarkGray    = "#686868"
" let s:Blue        = "#4975ae"
" let s:Green       = "#8ae234"
" let s:Cyan        = "#49dddd"
" let s:Red         = "#ff5454"
" let s:Magenta     = "#b03ab0"
" let s:Yellow      = "#ffff54"
" let s:White       = "#ffffff"

" - xterm color palette scheme of gnome-terminal in ubuntu 16.04.1
" - possible background colors (can use in background and foreground):
" let s:Black       = "#000000"
" let s:DarkRed     = "#CD0000"
" let s:DarkGreen   = "#00CD00"
" let s:DarkYellow  = "#CDCD00"
" let s:DarkBlue    = "#1E90FF"
" let s:DarkMagenta = "#CD00CD"
" let s:DarkCyan    = "#00CDCD"
" let s:LightGray   = "#E5E5E5"
" - possible foreground colors (can use in foreground only):
" let s:DarkGray    = "#4C4C4C"
" let s:Red         = "#FF0000"
" let s:Green       = "#00FF00"
" let s:Yellow      = "#FFFF00"
" let s:Blue        = "#4682B4"
" let s:Magenta     = "#FF00FF"
" let s:Cyan        = "#00FFFF"
" let s:White       = "#FFFFFF"

" - "XTerm" color palette scheme of GNOME Terminal in Ubuntu 19.10.
" - Possible background colors (can use in background and foreground):
let s:Black       = "#000000"
let s:DarkRed     = "#CD0000"
let s:DarkGreen   = "#00CD00"
let s:DarkYellow  = "#CDCD00"
let s:DarkBlue    = "#0000EE"
let s:DarkMagenta = "#CD00CD"
let s:DarkCyan    = "#00CDCD"
let s:LightGray   = "#E5E5E5"
" - Possible foreground colors (can use in foreground only):
let s:DarkGray    = "#7F7F7F"
let s:Red         = "#FF0000"
let s:Green       = "#00FF00"
let s:Yellow      = "#FFFF00"
let s:Blue        = "#5C5CFF"
let s:Magenta     = "#FF00FF"
let s:Cyan        = "#00FFFF"
let s:White       = "#FFFFFF"

" - "Linux console" color palette scheme of GNOME Terminal in Ubuntu 19.10.
" - Possible background colors (can use in background and foreground):
" let s:Black       = "#000000"
" let s:DarkRed     = "#AA0000"
" let s:DarkGreen   = "#00AA00"
" let s:DarkYellow  = "#AA5500"
" let s:DarkBlue    = "#0000AA"
" let s:DarkMagenta = "#AA00AA"
" let s:DarkCyan    = "#00AAAA"
" let s:LightGray   = "#AAAAAA"
" - Possible foreground colors (can use in foreground only):
" let s:DarkGray    = "#555555"
" let s:Red         = "#FF5555"
" let s:Green       = "#55FF55"
" let s:Yellow      = "#FFFF55"
" let s:Blue        = "#5555FF"
" let s:Magenta     = "#FF55FF"
" let s:Cyan        = "#55FFFF"
" let s:White       = "#FFFFFF"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - help :exe
" - . is string concatenation operator
" - can't set ctermbg, guibg etc with a variable, so have to instead use the
"   variables to build a command string, then execute the command with :exe
function! s:Highlight(group, ctermbg, ctermfg, cterm, guibg, guifg, gui)
  let command = "highlight " . a:group .
    \ " ctermbg=" . a:ctermbg . " ctermfg=" . a:ctermfg . " cterm=" . a:cterm .
    \ " guibg=" . a:guibg . " guifg=" . a:guifg . " gui=" . a:gui
  " echo command
  exe command
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax groups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - Normal. normal text
" - set default background and foreground colors
" - Normal is actually a highlight group and not a syntax group
" - the colors for the Normal group should be set first, before setting the
"   colors for any other groups
call s:Highlight("Normal",
  \ "Black", "White", "bold",
  \ s:Black, s:White, "bold")

" Comment. any comment
call s:Highlight("Comment",
  \ "bg", "DarkGray", "bold",
  \ "bg", s:DarkGray, "bold")

" Constant. any constant
call s:Highlight("Constant",
  \ "bg", "Green", "bold",
  \ "bg", s:Green, "bold")

" Identifier. any variable name
call s:Highlight("Identifier",
  \ "bg", "fg", "bold",
  \ "bg", "fg", "bold")

" Statement. any statement
call s:Highlight("Statement",
  \ "bg", "Red", "bold",
  \ "bg", s:Red, "bold")

" Operator. "sizeof", "+", "*", etc.
call s:Highlight("Operator",
  \ "bg", "Blue", "bold",
  \ "bg", s:Blue, "bold")

" PreProc. generic Preprocessor
call s:Highlight("PreProc",
  \ "bg", "Cyan", "bold",
  \ "bg", s:Cyan, "bold")

" Type. int, long, char, etc.
call s:Highlight("Type",
  \ "bg", "Yellow", "bold",
  \ "bg", s:Yellow, "bold")

" Special. any special symbol
call s:Highlight("Special",
  \ "bg", "Magenta", "bold",
  \ "bg", s:Magenta, "bold")

" Underlined. text that stands out, HTML links
call s:Highlight("Underlined",
  \ "bg", "Blue", "bold,underline",
  \ "bg", s:Blue, "bold,underline")

" Ignore. left blank, hidden |hl-Ignore|
call s:Highlight("Ignore",
  \ "bg", "DarkGray", "bold",
  \ "bg", s:DarkGray, "bold")

" Error. any erroneous construct
call s:Highlight("Error",
  \ "DarkRed", "White", "bold,underline",
  \ s:DarkRed, s:White, "bold,underline")

" Todo. anything that needs extra attention; mostly the keywords TODO FIXME and
" XXX
call s:Highlight("Todo",
  \ "DarkMagenta", "White", "bold,underline",
  \ s:DarkMagenta, s:White, "bold,underline")

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight groups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ColorColumn. used for the columns set with 'colorcolumn'
call s:Highlight("ColorColumn",
  \ "DarkRed", "White", "bold",
  \ s:DarkRed, s:White, "bold")

" - Cursor. the character under the cursor
" - Cursor highlight group seems to apply to only gui and not to cterm
highlight Cursor guibg=fg guifg=bg gui=bold

" CursorColumn. the screen column that the cursor is in when 'cursorcolumn' is
" set
call s:Highlight("CursorColumn",
  \ "NONE", "NONE", "bold",
  \ "NONE", "NONE", "bold")

" - CursorLine. the screen line that the cursor is in when 'cursorline' is set
" - CursorLine and CursorColumn highlight groups are handled differently for
"   cterm and gui
" - for cterm: by default, line is underlined
" - for gui: by default, line's background color is set to some light gray
"   color (probably LightGray)
" - ctermfg and guifg are set to NONE here because if they are set to other
"   colors, the cursorline's foreground text will have the given colors (the
"   foreground text will lose its syntax highlighting)
"   - same thing for ctermbg and guibg
call s:Highlight("CursorLine",
  \ "NONE", "NONE", "bold",
  \ "NONE", "NONE", "bold")

" DiffAdd. diff mode: Added line |diff.txt|
call s:Highlight("DiffAdd",
  \ "DarkGreen", "White", "bold",
  \ s:DarkGreen, s:White, "bold")

" DiffChange. diff mode: Changed line |diff.txt|
call s:Highlight("DiffChange",
  \ "DarkBlue", "White", "bold",
  \ s:DarkBlue, s:White, "bold")

" DiffDelete. diff mode: Deleted line |diff.txt|
call s:Highlight("DiffDelete",
  \ "DarkMagenta", "White", "bold",
  \ s:DarkMagenta, s:White, "bold")

" DiffText. diff mode: Changed text within a changed line |diff.txt|
call s:Highlight("DiffText",
  \ "DarkCyan", "White", "bold",
  \ s:DarkCyan, s:White, "bold")

" IncSearch. 'incsearch' highlighting
call s:Highlight("IncSearch",
  \ "DarkGreen", "White", "bold",
  \ s:DarkGreen, s:White, "bold")

" LineNr. Line number for ":number" and ":#" commands, and when 'number' or
" 'relativenumber' option is set.
call s:Highlight("LineNr",
  \ "bg", "Yellow", "bold",
  \ "bg", s:Yellow, "bold")

" CursorLineNr. Like LineNr when 'cursorline' or 'relativenumber' is set for
" the cursor line.
call s:Highlight("CursorLineNr",
  \ "bg", "Red", "bold",
  \ "bg", s:Red, "bold")

" Search. Last search pattern highlighting (see 'hlsearch').
call s:Highlight("Search",
  \ "DarkMagenta", "White", "bold",
  \ s:DarkMagenta, s:White, "bold")

" Visual. Visual mode selection
call s:Highlight("Visual",
  \ "DarkBlue", "White", "bold",
  \ s:DarkBlue, s:White, "bold")

" TabLine. tab pages line, not active tab page label
call s:Highlight("TabLine",
  \ "bg", "Yellow", "bold",
  \ "bg", s:Yellow, "bold")

" TabLineFill. tab pages line, where there are no labels
call s:Highlight("TabLineFill",
  \ "bg", "fg", "bold",
  \ "bg", "fg", "bold")

" TabLineSel. tab pages line, active tab page label
call s:Highlight("TabLineSel",
  \ "bg", "Red", "bold",
  \ "bg", s:Red, "bold")

" Folded. line used for closed folds
call s:Highlight("Folded",
  \ "bg", "Blue", "bold",
  \ "bg", s:Blue, "bold")

" Directory. directory names (and other special names in listings)
call s:Highlight("Directory",
  \ "bg", "Blue", "bold",
  \ "bg", s:Blue, "bold")

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TODO
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" hi LineNr ctermfg=Yellow guifg=Yellow
" hi StatusLine,bold cterm=reverse gui=NONE guifg=White guibg=darkblue
" hi StatusLineNC cterm=reverse gui=NONE guifg=white guibg=#333333
" hi ErrorMsg ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
" hi WarningMsg ctermfg=LightRed guifg=Red

" hi Directory ctermfg=LightCyan guifg=Cyan
" hi ModeMsg cterm=bold gui=bold
" hi MoreMsg ctermfg=LightGreen gui=bold guifg=SeaGreen
" hi NonText ctermfg=Blue gui=bold guifg=Blue
" hi Question ctermfg=LightGreen gui=bold guifg=Cyan
" hi SpecialKey ctermfg=LightBlue guifg=Cyan
" hi Title ctermfg=LightMagenta gui=bold guifg=Pink

" Conceal. placeholder characters substituted for concealed
"   text (see 'conceallevel')
" CursorIM. like Cursor, but used when in IME mode |CursorIM|
" ErrorMsg. error messages on the command line
" VertSplit. the column separating vertically split windows
" FoldColumn. 'foldcolumn'
" SignColumn. column where |signs| are displayed
" MatchParen. The character under the cursor or just before it, if it
"   is a paired bracket, and its match. |pi_paren.txt|
" ModeMsg. 'showmode' message (e.g., "-- INSERT --")
" MoreMsg. |more-prompt|
" NonText. '~' and '@' at the end of the window, characters from
"   'showbreak' and other characters that do not really exist in
"   the text (e.g., ">" displayed when a double-wide character
"   doesn't fit at the end of the line).
" Normal. normal text
" Pmenu. Popup menu: normal item.
" PmenuSel. Popup menu: selected item.
" PmenuSbar. Popup menu: scrollbar.
" PmenuThumb. Popup menu: Thumb of the scrollbar.
" Question. |hit-enter| prompt and yes/no questions
" SpecialKey. Meta and special keys listed with ":map", also for text used
"   to show unprintable characters in the text, 'listchars'.
"   Generally: text that is displayed differently from what it
"   really is.
" SpellBad. Word that is not recognized by the spellchecker. |spell|
"   This will be combined with the highlighting used otherwise.
" SpellCap. Word that should start with a capital. |spell|
"   This will be combined with the highlighting used otherwise.
" SpellLocal. Word that is recognized by the spellchecker as one that is
"   used in another region. |spell|
"   This will be combined with the highlighting used otherwise.
" SpellRare. Word that is recognized by the spellchecker as one that is
"   hardly ever used. |spell|
"   This will be combined with the highlighting used otherwise.
" StatusLine. status line of current window
" StatusLineNC. status lines of not-current windows
"   Note: if this is equal to "StatusLine" Vim will use "^^^" in
"   the status line of the current window.
" Title. titles for output from ":set all", ":autocmd" etc.
" VisualNOS. Visual mode selection when vim is "Not Owning the Selection".
"   Only X11 Gui's |gui-x11| and |xterm-clipboard| supports this.
" WarningMsg. warning messages
" WildMenu. current match in 'wildmenu' completion

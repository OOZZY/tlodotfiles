" a vim colorscheme
" Maintainer: oozzy
" Last Change: ????-??-??

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" boilerplate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - help :hi
" - reset all highlighting to the defaults
hi clear

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
let g:colors_name = "oozzy0"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" notes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - help :hi
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
" - hi <group-name> <key>=<arg>...

" cterm:
" - following cterm* settings are for 8-color terminals
" - following cterm* settings use only color names and not color numbers
" - note many terminals can't mix attributes with coloring. use only one of
"   cterm= OR ctermfg= OR ctermbg=
" - note that <number>* colors only apply to foreground colors and not
"   background colors
"   - each of the 8 colors have a dark and a bright version. the background
"     color can be one of only the dark colors
" - ctermfg=White cterm=NONE. foreground text will be LightGray and not bold
" - ctermfg=White cterm=bold. foreground text will be White and bold
" - ctermfg=LightGray cterm=NONE. foreground text will be LightGray and not bold
" - ctermfg=LightGray cterm=bold. foreground text will be White and bold
" - seems like there is no way to make foreground text White and not bold
" - cterm=NONE. foreground text will be the dark counterpart and not bold
" - cterm=bold. foreground text will be the bright counterpart and bold
" - seems like there is no way to make foreground text the bright counterpart
"   and not bold

" gui:
" - following gui* settings use only color numbers and not color names
" - for each syntax/highlight group, the gui colors match the cterm colors
"   - exceptions: Cursor, CursorColumn, CursorLine

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" color palettes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - color palette of konsole in linux mint 17.x kde
"   - retrieved by taking screenshots and color picking with gimp
"   - possible background colors:
"     - Black = #000000
"     - DarkBlue = #1818b2
"     - DarkGreen = #18b218
"     - DarkCyan = #18b2b2
"     - DarkRed = #b21818
"     - DarkMagenta = #b218b2
"     - Brown = #b26818
"     - LightGray = #b2b2b2
"   - possible foreground colors:
"     - background colors
"     - DarkGray = #686868
"     - Blue = #4975ae
"     - Green = #8ae234
"     - Cyan = #49dddd
"     - Red = #ff5454
"     - Magenta = #b03ab0
"     - Yellow = #ffff54
"     - White = #ffffff

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax groups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - Normal. normal text
" - set default background and foreground colors
" - Normal is actually a highlight group and not a syntax group
" - the colors for the Normal group should be set first, before setting the
"   colors for any other groups
hi Normal
  \ ctermbg=Black ctermfg=White
  \ guibg=#000000 guifg=#ffffff

" Comment. any comment
hi Comment
  \ ctermbg=bg ctermfg=DarkGray cterm=bold
  \ guibg=bg guifg=#686868 gui=NONE

" Constant. any constant
hi Constant
  \ ctermbg=bg ctermfg=Green cterm=bold
  \ guibg=bg guifg=#8ae234 gui=bold

" Identifier. any variable name
hi Identifier
  \ ctermbg=bg ctermfg=fg cterm=bold
  \ guibg=bg guifg=fg gui=bold

" Statement. any statement
hi Statement
  \ ctermbg=bg ctermfg=Magenta cterm=bold
  \ guibg=bg guifg=#b03ab0 gui=bold

" PreProc. generic Preprocessor
hi PreProc
  \ ctermbg=bg ctermfg=Cyan cterm=bold
  \ guibg=bg guifg=#49dddd gui=bold

" Type. int, long, char, etc.
hi Type
  \ ctermbg=bg ctermfg=Blue cterm=bold
  \ guibg=bg guifg=#4975ae gui=bold

" Special. any special symbol
hi Special
  \ ctermbg=bg ctermfg=Yellow cterm=bold
  \ guibg=bg guifg=#ffff54 gui=bold

" Underlined. text that stands out, HTML links
hi Underlined
  \ ctermbg=bg ctermfg=Blue cterm=bold,underline
  \ guibg=bg guifg=#4975ae gui=bold,underline

" Ignore. left blank, hidden |hl-Ignore|
hi Ignore
  \ ctermbg=bg ctermfg=DarkGray cterm=bold
  \ guibg=bg guifg=#686868 gui=NONE

" Error. any erroneous construct
hi Error
  \ ctermbg=bg ctermfg=Red cterm=bold,underline
  \ guibg=bg guifg=#ff5454 gui=bold,underline

" Todo. anything that needs extra attention; mostly the keywords TODO FIXME and
" XXX
hi Todo
  \ ctermbg=bg ctermfg=Magenta cterm=bold,underline
  \ guibg=bg guifg=#b03ab0 gui=bold,underline

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight groups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ColorColumn. used for the columns set with 'colorcolumn'
hi ColorColumn
  \ ctermbg=DarkBlue ctermfg=White cterm=bold
  \ guibg=#1818b2 guifg=#ffffff gui=bold

" - Cursor. the character under the cursor
" - Cursor highlight group seems to apply to only gui and not to cterm
hi Cursor guibg=fg guifg=bg gui=bold

" CursorColumn. the screen column that the cursor is in when 'cursorcolumn' is
" set
hi CursorColumn
  \ cterm=underline
  \ guibg=#111111

" - CursorLine. the screen line that the cursor is in when 'cursorline' is set
" - CursorLine and CursorColumn highlight groups are handled differently for
"   cterm and gui
" - for cterm: line is underlined
" - for gui: line's background color is set to #111111. can't get this color in
"   cterm.  it is a gray that is darker than the cterm DarkGray
hi CursorLine
  \ cterm=underline
  \ guibg=#111111

" IncSearch. 'incsearch' highlighting
hi IncSearch
  \ ctermbg=DarkBlue ctermfg=White cterm=bold
  \ guibg=#1818b2 guifg=#ffffff gui=bold

" Search. Last search pattern highlighting (see 'hlsearch').
hi Search
  \ ctermbg=DarkBlue ctermfg=White cterm=bold
  \ guibg=#1818b2 guifg=#ffffff gui=bold

" Visual. Visual mode selection
hi Visual
  \ ctermbg=DarkBlue ctermfg=White cterm=bold
  \ guibg=#1818b2 guifg=#ffffff gui=bold

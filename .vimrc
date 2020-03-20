""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - help :set
" - set <setting> " enable boolean setting
" - set no<setting> " disable boolean settinng
" - set <setting>=<value> " set non-boolean setting
" - set <setting>& " reset setting to default value
" - set <setting>? " see current value of setting

" - help 'nocompatible'
" - no need for vi-compatibility
set nocompatible

" - help 'hlsearch'
" - highlight all matches of the previous search pattern
" - use :nohlsearch or :noh command to turn off highlights
" - using :nohlsearch will not change the hlsearch setting. the highlights will
"   come back in the next search command
set hlsearch

" - help 'incsearch'
" - makes text searching like ctrl+f in web browsers
" - while the search pattern is being typed, matches of the pattern typed so
"   far will be searched for
set incsearch

" - help 'nobackup'
" - help 'writebackup'
" - make backup file when editing a file. delete it after the file is saved
set nobackup " do not keep backup file
set writebackup " make backup file before overwriting a file

" - help 'expandtab'
" - help 'tabstop'
" - help 'softtabstop'
" - help 'shiftwidth'
" - set expandtab
"   - always expand tab to spaces. to insert a real tab, use CTRL-V<Tab>
" - set tabstop=2 " there should be no spaces before and after the =
"   - tab width (in spaces)
" - set softtabstop=2
"   - tab character width (in spaces)
" - set shiftwidth=2
"   - indent width (in spaces). for indent operations: << and >> in insert
"   - mode. < and > in visual mode. etc
" - difference between tabstop and softtabstop:
"   - a tab is composed of tab characters and/or spaces
"   - tabstop is the width of a tab
"   - softtabstop is the width of a tab character
"   - if softtabstop < tabstop, vim will use a mixture of tab characters and
"     spaces
"   - if softtabstop == tabstop, vim will use only tab characters
"   - if softtabstop > tabstop, vim will use only spaces (probably)
"   - if expandtab is set, vim will use only spaces
"   - if expandtab is set and softtabstop is not set, backspace will delete one
"     space at a time
"   - if expandtab is set and softtabstop=2, backspace will delete 2 spaces at
"     a time

" whitespace preference 1: tab/indent width 2, spaces only
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
" whitepsace preference 2: tab/indent width 4, tabs and spaces
" set noexpandtab
" set tabstop=4
" set softtabstop=4
" set shiftwidth=4
" whitespace preference 3: tab/indent width 4, spaces only
" set expandtab
" set tabstop=4
" set softtabstop=4
" set shiftwidth=4

" - help t_Co
" - for some reason, this makes vim display colors properly within screen/tmux
"   in freebsd while logged in through ssh
" - rather than setting t_Co in .vimrc, it is better to let vim set it
"   automatically
"   - if vim is run in a terminal that supports 256 colors, the value of t_Co
"     will be 256
" set t_Co=256

" - help :colorscheme
" - use oozzy colorscheme
colorscheme oozzy

" - help :syntax-enable
" - enable syntax highlighting
syntax enable

" - help 'number'
" - show line numbers
set number

" - help 'showcmd'
" - shows the command typed so far. shows it at the bottom right of vim (the
"   statusline)
" - does not apply to : commands and / commands
set showcmd

" - help 'cursorline'
" - highlight current line (the line the cursor is on)
set cursorline

" - help 'nocursorcolumn'
" - highlight current column (the column the cursor is on)
set nocursorcolumn

" - help 'wildmenu'
" - help 'wildchar'
" - help 'wildmode'
" - enable command completion. invoke completion with tab key (like in shells)
" - applies to : commands
" - wildchar specifies key to invoke completion (default is tab)
" - wildmode specifies completion mode (default is full)
set wildmenu
set wildchar&
set wildmode&

" - help 'lazyredraw'
" - make vim redraw the screen only when needed. use :redraw or :redr to force
"   a redraw
set lazyredraw

" - help 'showmatch'
" - when a paren is inserted, show the matching paren if the match can be seen
"   (if the match is on screen)
set showmatch

" - help 'encoding'
" - set character encoding to utf-8
set encoding=utf-8

" - help 'autoindent'
" - when starting a new line, automatically indent the new line to match the
"   indentation of the previous line
set autoindent

" - help 'backspace'
" - allow vim to backspace over (delete) autoindents, line breaks, and the
"   start of inserts (position of cursor when insert mode was entered)
" - affects backspace key and delete key in normal/command mode
" - affects ctrl-w and ctrl-u in insert mode
set backspace=indent,eol,start

" - help 'wrap'
" - help 'linebreak'
" - help 'breakat
" - wrap text lines that are longer than the width of the window so that
"   displaying continues on the next text-editor line
" - if linebreak is also set, then vim will try to break a text line always at
"   a word boundary and never at the middle of a word
" - characters that indicate a word boundary are specified in breakat
set wrap
set linebreak
set breakat&

" - help 'autoread'
" - automatically re-read files if they are opened in vim and have been changed
"   outside vim
" - autoreading seems to only work in gui vim and not terminal vim
" - to re-read current file manually: use command :edit or :edit!
set autoread

" - help 'ruler'
" - help 'rulerformat'
" - help 'statusline'
" - show the cursor's position (line and column number) in the statusline
" - also show the relative position of the displayed text in the file
" - can specify format with rulerformat
" - if statusline is set, it has precedence over ruler and rulerformat
set ruler
set rulerformat=
set statusline=

" - help 'shiftround'
" - round indent to a multiple of shiftwidth
set shiftround

" - help 'formatexpr'
" - help 'formatprg'
" - help 'textwidth'
" - gq command formats lines
" - use formatexpr or formatprg to customize behavior of gq
" - formatexpr specifies command to use with gq operator
" - formatprg specifies program to use with gq operator
" - formatexpr has higher precedence than formatprg
" - see comments on gq below
set formatexpr=
set formatprg=
set textwidth=0

" - help cpo-$
set cpoptions+=$

" - help 'virtualedit'
" - allow virtual editing in all modes
" - virtual editing means that the cursor can be positioned where there is no
"   actual character
set virtualedit=all

" - help 'nowrapscan'
" - prevent searches from wrapping around the end of the file
set nowrapscan

" - help 'tags'
" - help tags-option
" - help file-searching
" - help +path_extra
" - requires +path_extra
" - the tags option contains a comma separated list of files to look for tags
" - if an entry in the list starts with './', vim will look for the file in the
"   directory of the currently opened file
"   - otherwise, will look for the file in vim's working directory
" - if an entry in the list ends with a ';', does an upward search (will try to
"   find the file in parent directory then grandparent and so on)
set tags+=./tags;

" - help 'shell'
if has("win32")
  set shell=powershell
endif

" - help 'noswapfile'
" - do not create swap files
set noswapfile

" - help g:netrw_liststyle
" - Wide listing. The next style is 3: tree style listing.
let g:netrw_liststyle = 2

" - help g:netrw_browse_split
" - Open in previous window.
let g:netrw_browse_split = 4

" - help g:netrw_winsize
" - Set initial size of new windows to 25%.
" - For :Sexplore, this affects height of new window.
" - For :Vexplore, this affects width of new window.
let g:netrw_winsize = 25

" - help g:netrw_altv
" - Opening file with 'v' opens new vertical split window to the right instead
"   of to the left.
let g:netrw_altv = 1

" - help g:netrw_alto
" - Opening file with 'o' opens new horizontal split window below instead of
"   above.
let g:netrw_alto = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - help :let
" - help mapleader
" - set <leader> to comma (,) rather than the default backslash (\)
let mapleader=","

" - help :nmap
" - help :vmap
" - nmap indicates a normal mode mapping (the mapping only applies in normal
"   mode)
" - vmap indicates a visual mode mapping
" - imap indicates an insert mode mapping

" - help `[
" - help `]
" - visually select the text that was added in the last insert mode
" - marks are basically saved cursor positions
" - `<mark> makes the cursor jump the given mark
" - [ and ] are special marks indicating respectively:
"   - the first character of the previously changed or yanked text
"   - the last character of the previously changed or yanked text
nmap <leader>v `[v`]

" - help gq
" - help v_gq
" - in normal mode, gq reflows/formats the lines that the following motion
"   moves over
" - in visual mode, gq reflows/formats the visually selected text
" - if formatexpr and formatprg is empty, then:
"   - textwidth option controls the length of each formatted line
"   - if textwidth option is 0, the formatted line length is the screen width
"     (with a maximum width of 79)
" - gq takes comments and indentations into account. though, for some reason,
"   doesn't take comments into account in a vimrc/vimscript file
"   - takes comments into account in a vimrc/vimscript if the following is set:
"     filetype plugin indent on
nmap <leader>r gql
vmap <leader>r gq

" - help J
" - in normal mode, J joins the next line onto the current line and separates
"   the two lines with up to two spaces
nmap <leader>j J

" - help registers " section 8
" - help x11-selection
" - help quotestar
" - help quoteplus
" - help x11-cut-buffer
" - by default, yank, delete, and paste commands copy to/from the " register
"   which is the unnamed register
" - to specify which register to use, yank, delete, and paste commands can be
"   preceded by "<register>
" - + is a special register for the cut buffer (the system clipboard)
" - in x11, * refers to the selection and + refers to the cut buffer
"   - selections are owned by an application and disappear when that
"     application exits
"   - cut buffers are stored within the x-server itself and remain until
"     written over or the x-server exits
" - in windows, the * and + registers are synonymous and they refer to the
"   windows clipboard
" - in visual mode, y yanks visually selected text into register
" - in visual mode, x and d do the same thing: deletes visually selected text
"   into register
" - in normal mode, yy yanks current line into register
" - in normal mode, dd deletes current line into register
" - in normal mode, p pastes the text from register after the cursor
" - in normal mode, P pastes the text from register before the cursor
" - gP is just like P, but leaves the cursor just after the new text
" - in insert mode, CTRL-R<register> inserts the contents of the register
vmap <leader>y "+y
vmap <leader>x "+x
vmap <leader>d "+d
nmap <leader>y "+yy
nmap <leader>d "+dd
nmap <leader>p "+gP

" - help :nnoremap
" - help :vnoremap
" - *map <lhs> <rhs> will swap the mappings for <lhs> and <rhs> if both of them
"   already have mappings. it will remap <rhs> to do what <lhs> previously did
" - *noremap <lhs> <rhs> will not do this remapping
" - example:
"   - by default, in normal mode, j goes down and k goes up
"   - nmap j k will make it so that j goes up and k goes down (k remapped)
"   - nnoremap j k will make it so that j goes up and k goes up (k unchanged)

" - help gj
" - help gk
" - one file-line could visually take up multiple screen-lines (if wrap is set)
" - by default, j/k will always go to the next/previous file-line. they will
"   skip screen-lines to do so
" - gj/gk will always go to the next/previous screen-line
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" - help CTRL-F
" - help CTRL-B
" - help CTRL-D
" - help CTRL-U
" - make <c-f> do the same thing as <c-d>
" - make <c-b> do the same thing as <c-u>
" - by default:
"   - <c-f> is like page down
"     - will keep scrolling down until the last line is only one visible
"   - <c-b> is like page up
"   - <c-d> is like half page down
"     - will NOT keep scrolling down until the last line is the only one visible
"     - does nothing when the cursor is on the last line of the buffer
"   - <c-u> is like half page up
" - number of lines scrolled by <c-d> and <c-u> is specified by scroll
"   - scroll specifies the number of screen lines, not the number of file lines
"   - scroll is automatically set depending on the size of the window
nnoremap <c-f> <c-d>
nnoremap <c-b> <c-u>

" - help gt
" - help gT
" - go to next/previous tab
nmap <leader>f gt
nmap <leader>b gT

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - help user-functions
" - help <SID>
" - help registers
" - help line()
" - help col()
" - help :range
" - help :s
" - help :s_flags
" - help cursor()
" - the ! means that the function is to be replaced if it already exists
" - <SID> is essentially an id unique to this script thus making the function
"   unique to this script too
" - vim will replace <SID> with the id
" - <SID> ensures this function doesn't conflict with a function with the same
"   name in another script
function! <SID>StripTrailingWhitespace()
  let spr = @/ " save the contents of / (/ is the search pattern register)
  " save the position of the cursor
  " get line number of "." (the cursor position)
  let lineNum = line(".")
  " get column number of "."
  let colNum = col(".")

  " - perform a search and replace
  " - the % specifies to do the search/replace to all lines (entire file)
  " - \s\+$ is a regex pattern specifying: one or more whitespace characters at
  "   the end of a line
  " - e specifies not to issue an error message if the search fails (finds no
  "   matches)
  %s/\s\+$//e " writes to / register

  let @/ = spr " restore the contents of / register
  " restore the position of the cursor
  call cursor(lineNum, colNum) " position the cursor at the given position
endfunction

" - help last-position-jump
" - help line()
" - help exe
" - help Ex-mode
" - help :normal
" - help `quote
" - help g`
" - help :jumps
" - help jumplist
" - help mark-motions
" - based on implementation from /etc/vim/vimrc and help last-position-jump
function! <SID>JumpToLastKnownPosition()
  " - for line()
  "   - '" is the position of the " mark
  "   - $ is the position of the last line in the current buffer
  " - the " mark is a special mark indicating the last known cursor position
  " - if last known position is > first line or <= last line
  if line("'\"") > 1 && line("'\"") <= line("$")
    " - exe executes the given string as an Ex command
    " - normal executes the given normal command
    "   - with the !, mappings will not be used
    " - `" jumps to the last known cursor position
    " - g`<mark> is like `<mark> but doesn't change the jumplist when jumping
    "   within the current buffer
    exe "normal! g`\""
  endif
endfunction

function! <SID>ApplySettingsForSourceCode()
  " - help 'colorcolumn'
  " - highlight column 81
  set colorcolumn=81

  set textwidth=80
endfunction

function! <SID>ApplySettingsForGo()
  " tab/indent width 8, use tabs and spaces
  set noexpandtab
  set tabstop=8
  set softtabstop=8
  set shiftwidth=8
endfunction

function! <SID>ApplySettingsForGitCommitMessage()
  " - highlight columns 51 and 73
  set colorcolumn=51,73

  set textwidth=72
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocommands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - help has()
" - help feature-list
" - help :filetype
" - help :filetype-plugin-on
" - help :filetype-indent-on
" - help :augroup
" - help :autocmd
" - help autocmd-events
" - help :call

" - have vim load indentation rules and plugins according to the detected
"   filetype
"   - this requires the autocommand feature
if has("autocmd")
  filetype on

  " - this makes indentation behave differently for different file types
  " filetype plugin indent on

  " - place following autocommands in group vimrcgroup
  augroup vimrcgroup

  " - clear autocommands in this group (so that the following autocommands will
  "   be the only autocommands in this group)
  " - this avoids duplication and re-execution of the autocommands
  "   - if this .vimrc file is sourced multiple times, only one copy of the
  "     following autocommands will exist and therefore each command will
  "     execute just once if its event occurs
  "   - without this, if this .vimrc file is sourced multiple times, multiple
  "     copies of the following autocommands will exist, and each copy will run
  "     once if its event occurs, and therefore each command will execute
  "     multiple times if its event occurs
  autocmd!

  " - autocmd <event> <pattern> <command>
  " - BufWritePre specifies that the command executes when starting to write
  "   the whole buffer to a file
  " - * indicates that the command will be executed on files with any filename
  " - instead of pattern *, can use a pattern like the following to indicate
  "   files with specific filenames: *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
  " - the rest is the command to be executed
  autocmd BufWritePre * call <SID>StripTrailingWhitespace()

  " - BufReadPost specifies that the command executes when starting to edit a
  "   new buffer, after reading the file
  autocmd BufReadPost * call <SID>JumpToLastKnownPosition()

  " - The FileType event is triggered when the 'filetype' option has been set.
  " - For the FileType event, the pattern is matched agains the filetype
  "   instead of the filename.
  autocmd FileType c,cmake,cpp,cs,go,java,javascript,python,ruby,sh,vim
    \ call <SID>ApplySettingsForSourceCode()

  autocmd FileType gitconfig,json,markdown,screen,sshconfig
    \ call <SID>ApplySettingsForSourceCode()

  autocmd FileType go call <SID>ApplySettingsForGo()
  autocmd FileType gitcommit call <SID>ApplySettingsForGitCommitMessage()

  augroup END
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gui-specific settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - help reltime()
" - help reltimestr()
" - help matchstr()
" - help /\.
" - help /\d
" - help /\+
" - help str2nr()
" - reltimestr(reltime()) will return a value like "1478508701.565997"
" - matchstr("1478508701.565997", '\.\d\+') will return ".565997"
"   - '\.\d\+' pattern means "a literal dot followed by 1 or more digits"
" - ".565997"[1:] returns "565997"
"   - [1:] means everything from index 1 until the end
" - str2nr("565997") will return 565997
function! s:RandomNumber(max) abort
  let relTimeStr = reltimestr(reltime())
  let microsecondsStr = matchstr(relTimeStr, '\.\d\+')[1:]
  return str2nr(microsecondsStr) % a:max
endfunction

" - help :exe
" - . is string concatenation operator
" - can't set guifont with a variable, so have to instead use the variables to
"   build a command string, then execute the command with :exe
function! s:SetGuiFont(guiFont)
  let command = "set guifont=" . a:guiFont
  exe command
endfunction

" - help 'guifont'
" - help len()
" - help get()
" - help 'guioptions'
if has("gui_running")
  " the following fonts have the same size in vim in ubuntu 16.04.1
  let guiFonts = [
    \ "DejaVu\\ Sans\\ Mono\\ 9.25",
    \ "Inconsolata\\ 9.75",
    \ "Ubuntu\\ Mono\\ 10.75",
    \ "PT\\ Mono\\ 9.25",
    \ "Hack\\ 9.25",
    \ "Fantasque\\ Sans\\ Mono\\ 10",
    \ ]
  let randomIndex = s:RandomNumber(len(guiFonts))
  let defaultFont = "Monospace\\ 9"
  let chosenFont = get(guiFonts, randomIndex, defaultFont)

  if has("gui_gtk2")
    " - following font name format is specific to gtk2
    " - Monospace will be the default monospace font for the system
    " - run `fc-match Monospace` to see what Monospace is the alias of
    " - Monospace is usually an alias of DejaVu Sans Mono
    " set guifont=Monospace\ 9 " Monospace, height: 9
    call s:SetGuiFont(chosenFont)
  elseif has("gui_gtk3")
    " set guifont=Monospace\ 9
    call s:SetGuiFont(chosenFont)
  elseif has("gui_win32")
    " following font name format is specific to win32
    set guifont=Consolas:h9:cANSI " Consolas, height: 9, character set: ANSI
  endif

  " remove menu bar and toolbar
  set guioptions-=m
  set guioptions-=T
endif

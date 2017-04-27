export UBSAN_OPTIONS=print_stacktrace=1
alias svim='TERM=screen-256color vim'
alias xvim='TERM=xterm-256color vim'
export HISTTIMEFORMAT='[%Y-%m-%d %H:%M:%S] '
export HISTCONTROL=ignoreboth
export HISTSIZE=10000

# - --color=auto makes grep emit color codes only when standard output is
#   connected to a terminal
# - behavior with --color=auto is documented in "man ls" but not in "man grep"
# - for some systems, this alias is already set
alias grep='grep --color=auto'

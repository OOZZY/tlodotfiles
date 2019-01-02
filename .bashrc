# make UBSan print symbolized stack trace for each error report
export UBSAN_OPTIONS=print_stacktrace=1

# for some setups, setting the TERM environment variable while running vim
# might make vim display colors properly
alias svim='TERM=screen-256color vim'
alias xvim='TERM=xterm-256color vim'

# - set output format for bash's history builtin command
# - this value is used as a format string for strftime
export HISTTIMEFORMAT='[%Y-%m-%d %H:%M:%S] '

# - ignoreboth is shorthand for ignorespace and ignoredups
# - if ignorespace is set, lines which begin with a space character are not
#   saved in bash's command history list
# - if ignoredups is set, lines matching the previous history entry are not
#   saved
#   - consecutive occurrences of the same command will result in just one entry
export HISTCONTROL=ignoreboth

# set the number of commands to remember in bash's command history list
export HISTSIZE=10000

# - --color=auto makes grep emit color codes only when standard output is
#   connected to a terminal
# - behavior with --color=auto is documented in "man ls" but not in "man grep"
# - for some systems, this alias is already set
alias grep='grep --color=auto'

if [ "$(uname -s)" = "FreeBSD" ]; then
  # activate bash completion
  [[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
    source /usr/local/share/bash-completion/bash_completion.sh

  # let man use the less pager
  alias man='man -P "less -sRi"'

  # for freebsd's ls, -G enables colorized output
  alias ls='ls -G'
fi

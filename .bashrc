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

OS="$(uname -o)"

if [ "${OS}" = "Cygwin" ]; then
  # - for the regular Cygwin terminal after installing Cygwin/X
  #   - after installing Cygwin/X, system tray "X applications menu" icon
  #     -> System Tools -> Cygwin Terminal will have this but the regular Cygwin
  #     terminal will not
  # - DISPLAY is the only mandatory environment variable for X and it should be
  #   set to the display name of an X server
  #   - X server display names have the form hostname:displaynumber.screennumber
  #   - :0.0 means localhost, display 0, screen 0
  export DISPLAY=:0.0
fi

if [ "${OS}" = "Cygwin" -o "${OS}" = "Msys" -o "${OS}" = "FreeBSD" ]; then
  if [ -z "$(ps aux | grep -v grep | grep ssh-agent)" ]; then
    # - "ssh-agent -s" prints to stdout the Bourne shell commands to execute to
    #   setup an agent
    # - "ssh-add" won't work if ssh-agent isn't running, so run ssh-agent
    eval "$(ssh-agent -s)"
    echo ${SSH_AUTH_SOCK} > "${HOME}/.ssh-auth-sock"
    echo ${SSH_AGENT_PID} > "${HOME}/.ssh-agent-pid"
  else
    export SSH_AUTH_SOCK=$(cat "${HOME}/.ssh-auth-sock")
    export SSH_AGENT_PID=$(cat "${HOME}/.ssh-agent-pid")
  fi
fi

if [ "${OS}" = "FreeBSD" ]; then
  # activate bash completion
  [[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
    source /usr/local/share/bash-completion/bash_completion.sh

  # - let man use the less pager
  # - in FreeBSD 13.0, man defaults to `less -sR` (if color support is enabled)
  #   or `less -s`
  alias man='man -P "less -sRi"'

  # for freebsd's ls, -G enables colorized output
  alias ls='ls -G'
fi

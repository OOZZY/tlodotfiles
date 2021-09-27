OS="$(uname -o)"

if [ "${OS}" = "Cygwin" -o "${OS}" = "Msys" -o "${OS}" = "FreeBSD" ]; then
  if [ -z "$(ps aux | grep -v grep | grep ssh-agent)" ]; then
    rm -f "${HOME}/.ssh-auth-sock"
    rm -f "${HOME}/.ssh-agent-pid"
  fi
fi

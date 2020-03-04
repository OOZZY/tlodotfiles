OS="$(uname -o)"

if [ "${OS}" = "Cygwin" -o "${OS}" = "Msys" ]; then
  if [ -z "$(ps aux | grep ssh-agent)" ]; then
    rm "${HOME}/.ssh-auth-sock"
    rm "${HOME}/.ssh-agent-pid"
  fi
fi

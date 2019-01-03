OS="$(uname -o)"

if [ "${OS}" = "Cygwin" -o "${OS}" = "Msys" ]; then
  ssh-agent -k
fi

# - source "${HOME}/.bashrc" if it exists
# - usually, "${HOME}/.profile" already does this
#   - search for "bashrc" in "${HOME}/.profile" to check if it does
[ -f "${HOME}/.bashrc" ] && . "${HOME}/.bashrc"

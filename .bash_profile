# - source "${HOME}/.bashrc" if it exists
# - usually, "${HOME}/.bash_profile" already does this
#   - search for "bashrc" in "${HOME}/.bash_profile" to check if it does
[ -f "${HOME}/.bashrc" ] && . "${HOME}/.bashrc"

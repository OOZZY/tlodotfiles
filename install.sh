#!/usr/bin/env bash
set -euo pipefail

backup_config_file() {
  FILE="${1}"
  ORIGINAL="${FILE}.original"
  NO_ORIGINAL="${FILE}.no-original"

  if [ ! -f "${ORIGINAL}" ] && [ ! -f "${NO_ORIGINAL}" ]; then
    if [ -f "${FILE}" ]; then
      cp -a "${FILE}" "${ORIGINAL}"
    else
      touch "${NO_ORIGINAL}"
    fi
  fi
}

assemble_config_file() {
  SOURCE="${1}"
  DESTINATION="${2}"
  ORIGINAL="${DESTINATION}.original"
  NO_ORIGINAL="${DESTINATION}.no-original"

  if [ -f "${ORIGINAL}" ]; then
    cp "${ORIGINAL}" "${DESTINATION}"
    echo >> "${DESTINATION}"
    cat "${SOURCE}" >> "${DESTINATION}"
  elif [ -f "${NO_ORIGINAL}" ]; then
    cp "${SOURCE}" "${DESTINATION}"
  fi
}

set -x

cp .screenrc "${HOME}"
cp -R .ssh "${HOME}"
cp -R .vimrc .vim .fonts "${HOME}"

backup_config_file "${HOME}/.bashrc"
assemble_config_file .bashrc "${HOME}/.bashrc"

backup_config_file "${HOME}/.gitconfig"
assemble_config_file .gitconfig "${HOME}/.gitconfig"

OS="$(uname -o)"

if [ "${OS}" = "Cygwin" -o "${OS}" = "Msys" ]; then
  backup_config_file "${HOME}/.bash_logout"
  assemble_config_file .bash_logout "${HOME}/.bash_logout"

  cp .vimrc "${USERPROFILE}/_vimrc"

  mkdir -p "${USERPROFILE}/vimfiles"
  cp -R .vim/* "${USERPROFILE}/vimfiles"
fi

if [ "${OS}" = "FreeBSD" ]; then
  cat .gitconfig-freebsd >> "${HOME}/.gitconfig"
fi

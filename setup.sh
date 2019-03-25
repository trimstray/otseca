#!/usr/bin/env bash

readonly _dir="$(dirname "$(readlink -f "$0")")"

# shellcheck disable=SC2034
_arg="$1"

if [[ "$1" == "install" ]] ; then

  printf "%s\\n" "Create symbolic link to /usr/local/bin"

  if [[ -e "${_dir}/bin/otseca" ]] ; then

    if [[ ! -e "/usr/local/bin/otseca" ]] ; then

      ln -s "${_dir}/bin/otseca" /usr/local/bin

    fi

  fi

  printf "%s\\n" "Create man page to /usr/local/man/man8"

  if [[ -e "${_dir}/static/man8/otseca.8" ]] ; then

    if [[ ! -e "/usr/local/man/man8/otseca.8.gz" ]] ; then

      mkdir -p /usr/local/man/man8
      cp "${_dir}/static/man8/otseca.8" /usr/local/man/man8
      gzip /usr/local/man/man8/otseca.8

    fi

  fi

elif [[ "$1" == "uninstall" ]] ; then

  printf "%s\\n" "Remove symbolic link from /usr/local/bin"

  if [[ -L "/usr/local/bin/otseca" ]] ; then

    unlink /usr/local/bin/otseca

  fi

  printf "%s\\n" "Remove man page from /usr/local/man/man8"

  if [[ -e "/usr/local/man/man8/otseca.8.gz" ]] ; then

    rm /usr/local/man/man8/otseca.8.gz

  fi

fi

exit 0

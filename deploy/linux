#!/usr/bin/env bash
#
# dotphiles : https://github.com/dotphiles/dotphiles
#
# Script to bootstrap a linux box
#
# Authors:
#   Ben O'Hara <bohara@gmail.com>
#

if [[ "$OSTYPE" != "linux"* ]]; then
  echo "$0 : Will only run on Linux"
  exit 1
fi

DIR=$(cd $(dirname "$0"); pwd)

###############################################################################
# apt-get
###############################################################################

if [[ -f $DIR/packages/apt ]]; then
  exec<$DIR/packages/apt
  while read line
  do
    if [[ ! "$line" =~ (^#|^$) ]]; then
      packages="$packages $line"
    fi
  done
  sudo apt-get install $packages
fi


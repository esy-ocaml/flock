#!/bin/bash

_do () {
  set -e
  set -o pipefail
  touch Makefile.am aclocal.m4 configure Makefile.in
  ./configure
  make
}

out=$(_do)
if [ $? -ne 0 ]; then
  echo "$out"
  exit 1
fi

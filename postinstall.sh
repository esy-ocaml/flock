#!/bin/bash

_do () {
  set -e
  set -o pipefail
  ./configure
  make
}

out=$(_do)
if [ $? -ne 0 ]; then
  echo "$out"
  exit 1
fi

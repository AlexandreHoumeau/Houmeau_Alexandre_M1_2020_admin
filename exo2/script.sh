#!/bin/bash

function applyArg() {
  case "$2" in
    copy)
      cp -v "$1" /tmp/
      ;;
    delete)
      rm -rf "$1"
      ;;
    read)
      cat "$1"
      ;;
  esac
}

function verifyFile() {
  if [ -f "$1" ]; then
      applyArg  "$1" "$2"
  else 
      echo "$1 does not exist."
  fi
}

verifyFile "$1" "$2"
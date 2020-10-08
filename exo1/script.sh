#!/bin/bash

function verifyFiles() {
  for arg in $@
  do
    if [ -f "$arg" ]; then
        echo "$arg exists."
    else 
        echo "$arg does not exist."
    fi
  done
}


function verifyArguments() {
  if [ $1 -ne 0 ]
  then
    verifyFiles "$2"

  else
      echo "Merci de renseigner des argument"
      exit 2
  fi
}

verifyArguments "$#" "$*"

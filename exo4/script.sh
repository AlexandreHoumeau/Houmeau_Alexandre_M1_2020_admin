#!/bin/bash

cut -d: -f1 /etc/group | while IFS= read -r line
do
  if [ $1 = $line ] 
  then 
    echo "$1 est dans le fichier etc/group"
    fi
done

#!/bin/bash

cut -d: -f1 /etc/passwd | while IFS= read -r line
do
  if [ $1 = $line ] 
  then 
    echo "$1 est dans le fichier etc/passwd"
    fi
done

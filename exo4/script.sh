#!/bin/bash

FOUND="F"
for n in $(cat /etc/group )
do  
  tmp=$( echo $n | cut -d: -f1)
    if [ $1 = $tmp ]
    then
      FOUND="T"
    fi
done

if [ $FOUND = "T" ]
then
  echo "$1 présent dans /etc/group"
else
  echo "$1 n'est pas dans /etc/group"
fi
  
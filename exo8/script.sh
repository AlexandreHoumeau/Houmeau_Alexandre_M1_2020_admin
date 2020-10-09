#!/bin/bash

function verifyFile() {
  if [ -f $3 ]
  then 
    sudo chown $1:$2 $3
    echo "les droits on bien été modifiés pour le fichier $3"
  else
    echo "Le fichier $3 n'existe pas"
  fi
}

echo "Merci de renseigner un utilisateur, un groupe et un nom de fichier"
printf "Utilisateur : "
read user

printf "Groupe : "
read group

printf "Fichier : "
read file

verifyFile $user $group $file

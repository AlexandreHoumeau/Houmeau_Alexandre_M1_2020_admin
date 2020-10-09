#!/bin/bash

FOUND="F"
function checkFile() {
  if [ -f $1 ]; then
    FOUND="T"
  else 
    echo "Le fichier $1 n'existe pas"
    exit 1
  fi
}

function permissions() {
  printf "Merci de renseigner les différents droits [rwx]"
  read permission

  if [ permission ]
  then
    chmod $2=$permission $1
  fi

}
printf "Merci de renseigner un fichier dont il faut changer les droits : "
read fileName
checkFile $fileName
echo "Permission pour les utilisateurs:"
permissions $fileName "u"

echo "Permission pour le groupe:"
permissions $fileName "g"

echo "Permission pour les autres:"
permissions $fileName "o"

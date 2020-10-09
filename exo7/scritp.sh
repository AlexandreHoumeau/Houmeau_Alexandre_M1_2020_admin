#!/bin/bash

function checkFile() {
  if [ -f "$1" ] && [ "$2" == "delete" ]
  then
    rm -rf $1
    echo "$1 est suprimé"

  elif [ -f "$1" ] && [ "$2" == "add" ]
  then
    echo "Fichier $1 est déja existant"
  
  elif [ ! -f "$1" ] && [ "$2" == "add" ]
  then
    touch $1
    echo "Fichier $1 crée"

  elif [ ! -f "$1" ] && [ "$2" == "delete" ]
  then
    echo "Fichier $1 n'existe pas, impossible de le supprimer"
  fi
}

printf "Bonjour voulez-vous supprimer ou ajouter un fichier : "
read option

case $option in 
  delete)
    echo "Merci de renseigner le fichier que vous voulez supprimer: "
    read fileName
    checkFile $fileName "delete"
    ;;
  add)
    echo "Merci de renseigner le fichier que vous voulez ajouter: "
    read fileName 
    checkFile $fileName "add"
    ;;
esac 
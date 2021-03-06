#!/bin/bash
FOUND="F"
function findUsername() {
  for n in $(cat /etc/passwd )
  do  
    tmp=$( echo $n | cut -d: -f1)
      if [ $1 = $tmp ]
      then
        FOUND="T"
      fi
  done
  if [ $FOUND = "T" ] && [ $2 = "delete" ]
  then
    sudo deluser $1
    echo "$1 supprimé de /etc/passwd"
  elif [ $FOUND = "F" ] && [ $2 = "delete" ]
  then
    echo "Impossible de supprimer $1"
  elif [ $FOUND = "T" ] && [ $2 = "add" ]
  then
    echo "$1 est déja présent dans /etc/passwd"
  else 
    sudo useradd -m -p "$1" "$3"
    echo "L'utilisateur a été ajouté"
  fi
}

printf "Que voulez vous faire ? [add, delete] : "
read options

case $options in
  add)
    printf "Merci de renseigner le username à rajouter dans etc/passwd : "
    read userName
    printf "Merci de renseigner le mot de passe à rajouter dans etc/passwd : "
    read password
    findUsername $userName "add" $password
    ;;
  delete)
    printf "Merci de renseigner le username à supprimer dans etc/passwd : "
    read userName
    findUsername $userName "delete"
esac
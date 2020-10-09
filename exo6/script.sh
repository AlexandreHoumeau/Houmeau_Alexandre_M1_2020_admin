#!/bin/bash
FOUND="F"
function findUsername() {
  for n in $(cat /etc/group )
  do  
    tmp=$( echo $n | cut -d: -f1)
      if [ $1 = $tmp ]
      then
        FOUND="T"
      fi
  done
  if [ $FOUND = "T" ] && [ $2 = "delete" ]
  then
    sudo groupdel $1
    echo "$1 supprimé de /etc/passwd"
  elif [ $FOUND = "F" ] && [ $2 = "delete" ]
  then
    echo "Impossible de supprimer $1"
  elif [ $FOUND = "T" ] && [ $2 = "add" ]
  then
    echo "$1 est déja présent dans /etc/group"
  else 
    sudo groupadd "$1"
    echo "L'utilisateur a été ajouté"
  fi
}

printf "Que voulez vous faire ? [add, delete] : "
read options

case $options in
  add)
    printf "Merci de renseigner le groupe à rajouter dans etc/group : "
    read groupName
    findUsername $groupName "add"
    ;;
  delete)
    printf "Merci de renseigner le group à supprimer dans etc/group : "
    read groupName
    findUsername $groupName "delete"
esac
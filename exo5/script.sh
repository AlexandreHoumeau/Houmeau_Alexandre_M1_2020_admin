#!/bin/bash
printf "Merci de renseigner un nom: "
read username

if grep -q $username "/etc/passwd"; then
  echo "$username est déja utilisé"
  printf "Voulez vous supprimer l'utlisateur $username [Y,N]: "
  read delete

  if [ $delete = "Y" ]
  then
    sudo deluser $username
    echo "$username à bien été supprimé"
  else 
    echo "Abandon"
    fi

else
  printf "Merci de renseigner un mot de passe"
  read -s password
  echo "\n"
  sudo useradd -m -p "$password" "$username"
  echo "Action réussie"
fi

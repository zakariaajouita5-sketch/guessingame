#!/usr/bin/env bash
# File: guessinggame.sh

# Retourne le nombre de fichiers dans le répertoire actuel
count_files() {
  ls -A | wc -l | tr -d ' '
}

nb_files=$(count_files)
guess=""

echo "Bienvenue dans le jeu de devinettes !"

while [[ "$guess" != "$nb_files" ]]
do
  echo "Combien de fichiers y a-t-il dans le répertoire actuel ?"
  read guess

  if [[ ! "$guess" =~ ^[0-9]+$ ]]
  then
    echo "Veuillez entrer un nombre entier."
    guess=""
  elif [[ $guess -lt $nb_files ]]
  then
    echo "Trop bas ! Essayez à nouveau."
  elif [[ $guess -gt $nb_files ]]
  then
    echo "Trop haut ! Essayez à nouveau."
  fi
done

echo "Félicitations ! Il y a bien $nb_files fichiers dans ce répertoire."

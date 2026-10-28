#!/bin/bash

notes=(12 8 15 10 17 14)
	echo "notes : ${notes[*]}"

meilleure=${notes[0]}

somme=0

for n in "${notes[@]}"; do
   	(( somme += n ))
	if (( n > meilleure )); then
	meilleure=$n
	fi	

done

	echo "Somme : $somme"

nb=${#notes[@]}
	echo "Nombre de notes : $nb"

moyenne=$(($somme/$nb))
	echo "Moyenne : $moyenne"

moyenneexacte=$(awk -v s="$somme" -v n="$nb" 'BEGIN { printf "%.2f", s / n }')
	echo "Moyenne exacte : $moyenneexacte"
	

	echo "Meilleure note : $meilleure"	
	


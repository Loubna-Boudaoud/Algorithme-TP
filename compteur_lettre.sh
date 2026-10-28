#!/bin/bash

compter_lettre() {
	mot=$1
	lettre=$2
	compteur=0
	
	
	for (( i = 0; i < ${#mot}; i++ )); do
	
	if [[ ${mot:i:1} == "$lettre" ]]; then
	(( compteur++ ))
	fi
		
	done
	echo "$compteur"  #on peut remplacer echo par return voir compteur_lettre_2.sh
}
nb=$(compter_lettre "$1" "$2")
echo "<<"$2">> apparaît $nb fois dans <<"$1">>"




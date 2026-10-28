#!/bin/bash

prenoms=(alice bob chloe david emma)
cible=$1
trouve=0
comparaison=0

for i in "${!prenoms[@]}"; do
	(( comparaison +=1 ))	
if [[ "${prenoms[i]}" == "$cible" ]]; then
	(( trouve += 1 ))	
	position=$1
	 
		
	break
	fi
done
if (( $trouve == 1 )); then
	echo "$1 est dans la liste, à l'indice $i "
else
	echo "$1 n'est pas dans la liste"
fi
 echo "Comparaison : $comparaison"

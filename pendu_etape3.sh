#!/bin/bash

mot="boucle"

trouvees=""

while true; do

affichage=""

for ((i = 0; i < ${#mot}; i++)); do
    lettre=${mot:$i:1}

    if [[ "$trouvees" == *"$lettre"* ]]; then
        affichage+="$lettre"
    else
        affichage+="_ "
    fi
done

echo "Mot : $affichage"

if [[ $affichage != *_* ]]; then
	echo "gagné!"
	break
fi

read -p "donnez une lettre : " lettre
trouvees+="$lettre"
done

#!/bin/bash

mot="boucle"
trouvees=""
erreurs=0
max_erreurs=7

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

echo "Mot : $affichage(erreurs : $erreurs/$max_erreurs)"



if [[ "$affichage" != *_* ]]; then
	echo "gagné!"
	exit
fi

read -p "donnez une lettre : " lettre
trouvees+="$lettre"

if [[ $mot == *$lettre* ]]; then
echo "bien vu!"
else
echo "raté!"
((erreurs++))
fi
if (( erreurs >= max_erreurs )); then
        echo "Perdu ! Le mot était : $mot"
fi


done

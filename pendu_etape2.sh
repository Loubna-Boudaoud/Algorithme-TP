#!/bin/bash

mot="boucle"

trouvees="bo"

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


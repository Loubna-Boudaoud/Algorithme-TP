#!/bin/bash
n=$1
somme=0

for (( i = 1; i <= n; i++ )); do
	(( somme += i ))
done
formule=$(( n * (n + 1) / 2 ))


echo "Somme de 1 à $n : $somme"
echo "Avec la formule : "$formule""

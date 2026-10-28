#!/bin/bash

temperatures=(12 15 9 21 18 7 14)
max=${temperatures[0]}
min=${temperatures[0]}

echo "temperatures : ${temperatures[*]}"
echo "nombre de jours : ${#temperatures[@]}"

for t in "${temperatures[@]}"; do
	if (( t > max )); then
		max=$t
	elif (( t < min )); then
		min=$t
	fi
ecart=$(( max - min ))	
done
echo "plus chaud : $max"
echo "plus froid : $min"
echo "ecart : $ecart"

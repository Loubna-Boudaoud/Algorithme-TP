#!/bin/bash
nombre=( 3 8 12 5 7 10 14 )
nb=0

for n in "${nombre[@]}"; do

	if (( n % 2 == 0 )); then
	(( nb += 1 ))
	
	fi
done
echo "$nb nombres pairs"

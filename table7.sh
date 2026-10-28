#!/bin/bash

for (( i=1; i<=10; i++ )) ; do
resultat=$((n*i))
		printf "%2d x %2d = %3d\n" "$1" "$i" "$(( $1 * i ))"
done
echo "Bonjour $1"
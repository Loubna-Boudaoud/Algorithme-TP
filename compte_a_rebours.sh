#!/bin/bash
depart=$1
for (( i = depart; i >= 1; i-- )); do
	
	echo "$i"
	sleep 1
done
echo "décolage !"

#!/bin/bash

notes=(12 8 15 10 17 6 11)
admis=0

for n in "${notes[@]}"; do
	
	if (( n >= 16 )); then
		(( admis += 1))
		printf "%2d : trés bien\n" "$n"
	elif (( n >= 12 )); then
		printf "%2d : bien\n" "$n"
	elif (( n >= 10 )); then
		printf "%2d : passable\n" "$n"
	else
		printf "%2d : recalé\n" "$n"
	fi
done


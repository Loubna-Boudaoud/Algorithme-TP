#!/bin/bash

if (( ($1 % 4 == 0 ) && ($1 % 100 != 0 ) || ( $1 %  400 == 0 ) )); then
	echo "$1 est bissextile"
else 
	echo "$1 n'est pas bissextile"
fi

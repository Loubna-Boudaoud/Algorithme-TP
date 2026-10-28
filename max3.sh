#!/bin/bash
if (( $1 >= $2 && $1 >=$3 )) ; then
	echo " le plus grand est $1"
elif (( $2 >= $1 && $2 >= $3 )) ; then
	echo "le plus grand est $2"
else
	echo "le plus grand est $3"
fi

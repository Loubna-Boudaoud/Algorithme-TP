#!/bin/bash
#Ce script permet de vérifier l'age"

read -p "votre age : " age
Age=$age
if (( $age < 12 )); then
        echo " enfant "

elif (( $age >= 12 && $age <= 17 )); then
        echo "adolescent"
else
        echo "adulte"
fi

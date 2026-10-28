#!/bin/bash

compter_lettre() {
         mot=$1
         lettre=$2
         compteur=0
         for (( i = 0; i < ${#mot}; i++ )); do

         if [[ ${mot:i:1} == "$lettre" ]]; then
         (( compteur++ ))
         fi

         done

         echo "$compteur"
 }

 compter_lettre "banane" "a"
 compter_lettre "algorithme" "o"
 compter_lettre "bash" "z"

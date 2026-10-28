#!/bin/bash

read -p "votre prenom :" prenom
read -p "votre année de naissance :" annee
age=$((2026-annee))
echo " bonjour $prenom, vous avez $age ans cette année"

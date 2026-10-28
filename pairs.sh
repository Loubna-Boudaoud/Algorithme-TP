#!/bin/bash
nombres=(4 7 10 13 22 35)
pair=0
impair=0
for n in "${nombres[@]}"; do
	if (( n % 2 == 0 )); then
		(( pair+= 1 ))
		echo "$n : pair"
	else
		echo "$n : impair"
		(( impair += 1 ))
	fi
done
echo ""$pair" pairs, "$impair" impairs" 

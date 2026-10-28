#!/bin/bash

secret=${1:-$(( RANDOM % 100 + 1 ))}
essais=0

max_essais=7
while (( essais < max_essais )); do

read -rp "Votre proposition : " proposition
((essais++))

if (( proposition < secret )); then
        echo "C'est plus"
elif (( proposition > secret )); then
        echo "C'est moins"
else 

	echo "Trouvé en $essais essais !"

exit 0
fi
done


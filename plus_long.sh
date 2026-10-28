#!/bin/bash
mot=(chat elephant souris ane hippopotame girafe)
plus_long=${mot[0]}
plus_court=${mot[0]}
for mot in "${mot[@]}"; do

if (( ${#mot} > ${#plus_long} )); then
	plus_long=$mot

	
fi
done
echo "Le mot le plus long est $plus_long (${#plus_long} lettres)"

for mot in "${mot[@]}"; do

if (( ${#mot} < ${#plus_court} )); then
         plus_court=$mot
fi
done


echo "Le mot le plus court est $plut_court (${#plus_court} lettres)"

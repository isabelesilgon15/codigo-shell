#!/bin/bash
min=1
max=10

echo "Numeros primos entre $min e ${max}:"

for ((x = min; x <= max - 1; x++)); do
	v=0
	for ((y = 2; y <= x - 1; y++)); do
		if ((x % y == 0)); then
			v=1
			break
		fi
	done
	((v == 0)) && echo $x
done 

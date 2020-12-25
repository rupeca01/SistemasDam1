#!/bin/bash
maxlineas=`cat nombres.txt | wc -l`
linea=1

while [ $linea -le $maxlineas ]
do
	nombre=`cat nombres.txt | head -$linea | tail -1`
	mkdir "$nombre"
	cd "$nombre"
	for i in `seq 1  $1`
	do	
		mkdir personal$i
	done
	cd ..
	linea=$((linea+1))
done

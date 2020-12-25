#!/bin/bash

maxlineas=`cat listado.txt | wc -l`
numlinea=1

win=0
lin=0
prowin=0
prolin=0

while [ $numlinea -le $maxlineas ]
do
	linea=`cat listado.txt | head -$numlinea | tail -1`
	user=`echo $linea | awk '{print $1}'`
	os=`echo $linea | awk '{print $2}'`
	pro=`echo $linea | awk '{print $3]'`

	if [ $os = "Windows" ]
	then
		win=$((win+1))
		prowin=$((prowin+pro))
	fi

	if [ $os = "Linux" ]
	then
		lin=$((lin+1))
		prolin=$((prolin+pro))
	fi
	numlinea=$((numlinea+1))
done
echo "Windows: $win $prowin"
echo "Linux: $lin $prolin"

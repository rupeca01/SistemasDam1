#!/bin/bash
maxlineas=`cat precipitaciones.txt | wc -l`
acum=0
cont=0
media=0

while [ $cont -le $maxlineas ]
do
	dia=`cat precipitaciones.txt | head -$cont | tail -1 | awk '{print $1}'`
	litros=`cat precipitaciones.txt | head -$cont | tail -1 | awk '{print $2}'`
	if [ $litros -eq 0 ]
	then 
		echo "El $dia(`./calculaDia.sh $dia`) no lllovio"
	fi

	cont=$((cont+1))
done

#!/bin/bash
echo "Introduce un dia del 1 al 30"
read dia
while [[ $dia -lt 1 || $dia -gt 30 ]]
do
	echo "Introduce un dia del 1 al 30"
	read dia
done
cont=0
while [ $cont -le 30 ]
do
	for i in lunes martes miercoles jueves viernes sabado domingo
	do 
	cont=$((cont+1))
	if [ $cont = $dia ]
	then 
		echo "El dia es $i"
		exit
	fi
done
done


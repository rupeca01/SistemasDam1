#!/bin/bash
echo "Introduce un valor: "
read v1
suma=0
cont=0
while [ $v1 -ne 0 ]
do 
suma=$((suma+v1))
cont=$((cont+1))
echo "Introduce un valor: "
read v1
done
echo "La suma es $suma"
media=`echo "scale=2; $suma/$cont" | bc`
echo "La media es $media"

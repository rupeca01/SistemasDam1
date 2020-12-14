#!/bin/bash
echo "Introduce un valor mayor que 0"
read num
while [ $num -lt 0 ]
do
echo "El numero tiene que ser mayor que 0"
read num
done
let resto=$num%2
if [ $resto -eq 0 ]
then 
echo "El numero es par"
else 
echo "El numero es impar"
fi


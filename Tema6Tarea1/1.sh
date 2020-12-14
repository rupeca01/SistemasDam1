#!/bin/bash
echo "Introduzca un valor para num1: "
read num1
echo "Introduzca un valor para num2: "
read num2
if [ $num1 -gt $num2 ]
then 
	echo "$num1 es mayor que $num2"
fi
if [ $num2 -gt $num1 ]
then 
	echo "$num2 es mayor que $num1"
fi
if [ $num1 -eq $num2 ]
then 
	echo "Los numeros son iguales"
fi

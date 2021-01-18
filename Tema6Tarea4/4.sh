#!/bin/bash

random=`echo $(($RANDOM%100))`
numero=0
intentos=0

read -p "Introduce un número entre 0 y 100" numero

while [ $numero -ne $random ]; do
  	multiplo=$numero%$random
  	divisor=$random%$numero
  if [ $multiplo -eq 0 ]; then
    echo "El numero es multiplo del numero random"
  else
    if [ $divisor -eq 0 ]; then
      echo "El numero es divisor del numero random"
    else
      echo "El numero no es multiplo ni divisor"
    fi
  fi

  intentos=$((intentos+1))
  read -p "Introduce un número entre 0 y 100" numero
done

puntos=$((100-intentos))
echo "Has acertado en $intentos intentos, y has conseguido $puntos puntos"
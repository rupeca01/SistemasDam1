#!/bin/bash

cont=1
i=1

read -p "Introduce un número" numero
echo "El factorial de $numero es:"
while [ $numero -gt 1 ]; do
  cont=$((cont*numero))
  numero=$((numero-1))
done
echo $acum
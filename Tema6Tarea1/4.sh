#!/bin/bash
echo "Introduce un valor"
read valor
while [ $valor -le 0 ]
do 
echo "El valor tiene que ser mayor que 0"
read valor
done
for i in `seq 0 $valor`
do
echo "$i"
done

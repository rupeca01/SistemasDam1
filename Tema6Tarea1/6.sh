#!/bin/bash
echo "¿Cuantos litros de agua?"
read litros
while [ $litros -le 0 ]
do 
echo "¿Cuantos litros de agua?"
read litros
done
if [ $litros -le 50 ]
then 
coste = 20
else 
if [ $litros -le 200 ]
then 
resto=$((litros-50))
coste=`echo "scale=2; $resto*0.2+50" | bc`
else
resto=$((litros-200))
coste=`echo "scale=2; $resto*0.1+50" | bc`
fi
fi
echo "El coste total es $coste"

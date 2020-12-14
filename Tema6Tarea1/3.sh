#!/bin/bash
echo "Introduce la nota"
read nota
while [[ $nota -lt 0 || $nota -gt 10 ]]
do 
echo "La nota no es correcta"
read nota
done
if [[ $nota -ge 0 && $nota -lt 5 ]]
then 
echo "Tienes un suspenso"
fi
if [[ $nota -ge 5 && $nota -lt 6 ]]
then 
echo "Tienes un suficiente"
fi
if [[ $nota -ge 6 && $nota -lt 7 ]]
then 
echo "Tienes un bien"
fi
if [[ $nota -ge 7 && $nota -lt 9 ]]
then 
echo "Tienes un notable"
fi
if [[ $nota -ge 9 && $nota -le 10 ]]
then 
echo "Tienes un sobresaliente"
fi

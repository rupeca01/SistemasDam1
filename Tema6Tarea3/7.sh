#!/bin/bash

if [ -d $1 ]
then 
	echo `./6.sh $1`
else
	echo "El directorio no existe"
fi

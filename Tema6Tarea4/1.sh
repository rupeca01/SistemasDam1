#!/bin/bash

i=1
while [[ $resultado -lt 105 ]]; do 
	resultado=$((i*5))
	echo $resultado
	i=$((i+1))
done

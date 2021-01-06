#!/bin/bash
if [[ $1 -lt 1 || $1 -gt 4 ]]; then
	echo "La opción introducida no existe"
else
	if [ $1 -eq 1 ]; then
		read -p "Introduce el nombre del usuario: " nombre
		contadorLogs=0
		cont=0
		maxLineas=`cat usuarios.txt | wc -l`
		maxLineas=$((maxLineas+1))
			while [ $cont -le $maxLineas ]; do
				linea=`cat usuarios.txt | head -$cont | tail -1` 
				user=`echo $linea | awk '{print $1}'`
				cont=$((cont+1))
				if [[ $nombre = $user ]]; then #Si el nombre es igual al del usuario suma 1 log
					contadorLogs=$((contadorLogs+1))
				fi
			done
			if [[ $contadorLogs -eq 0 ]]; then
				echo "El usuario no se ha logueado"
			else
				echo "El usuario $nombre se ha logueado $contadorLogs veces."
			fi
	fi
	if [[ $1 -eq 2 ]]; then
		read -p "Introduce un mes: " inputMes
		contadorLogs=0
		cont=0
		contArray=0
		dias=()
		maxLineas=`cat usuarios.txt | wc -l`
		
			while [ $cont -le $maxLineas ]; do
				linea=`cat usuarios.txt | head -$cont | tail -1`
				mes=`echo $linea | awk '{print $3}'`
				mes=${mes%?}
				cont=$((cont+1))
				if [[ $mes = $inputMes ]]; then
					contadorLogs=$((contadorLogs+1))
					dia=`echo $linea | awk '{print $2}'`
					dias[$contArray]=$dia
					contArray=$((contArray+1))
				fi
			done
			echo "En $inputMes se han logueado $contadorLogs veces en los dias ${dias[*]}"
	fi
	if [[ $1 -eq 3 ]]; then
		read -p "Introduce un dia: " inputDia
		read -p "Introduce un mes: " inputMes
		cont=0
		contArray=0
		nombres=()
		maxLineas=`cat usuarios.txt | wc -l`
		
			while [ $cont -le $maxLineas ]; do
				linea=`cat usuarios.txt | head -$cont | tail -1`
				mes=`echo $linea | awk '{print $3}'`
				mes=${mes%?}
				cont=$((cont+1))
				if [[ $mes = $inputMes ]]; then
					dia=`echo $linea | awk '{print $2}'`
					if [[ $inputDia -eq $dia ]]; then
					nombre=`echo $linea | awk '{print $1}'`
					nombres[$contArray]=$nombre
					contArray=$((contArray+1))
					fi
				fi
			done
	echo "El $inputDia de $inputMes se conectaron ${nombres[*]}"
	fi
	if [[ $1 -eq 4 ]]; then
		read -p "Introduce un nombre: " inputUsuario
		ultimoMes=-1
		ultimoDia=-1
		cont=0
		meses=('enero' 'febrero' 'marzo' 'abril' 'mayo' 'junio' 'julio' 'agosto' 'septiembre' 'octubre' 'noviembre' 'diciembre')
		maxLineas=`cat usuarios.txt | wc -l`
		while [ $cont -le $maxLineas ]; do
			linea=`cat usuarios.txt | head -$cont | tail -1`
			user=`echo $linea | awk '{print $1}'` 
			cont=$((cont+1))
			if [[ $inputUsuario = $user ]]; then
				mes=`echo $linea | awk '{print $3}'`
				mes=${mes%?}
				for h in $(seq 0 11); do
					if [[ $mes = ${meses[$h]} ]]; then
						if [[ $ultimoMes -lt $h ]]; then
							ultimoMes=$h
							ultimoDia=`echo $linea | awk '{print $2}'`
						elif [[ $ultimoMes -eq $h ]]; then
							tempDia=`echo $linea | awk '{print $2}'`
							if [[ $ultimoDia -lt $tempDia ]]; then
								ultimoDia=$tempDia
							fi
						fi
					fi
				done
			fi
		done	
		if [[ $ultimoMes -eq -1 ]]; then
			echo "$inputUsuario nunca se ha logueado."
		else
			echo "$inputUsuario se logueó por ultima vez el $ultimoDia de ${meses[$ultimoMes]}."
		fi
	fi
fi

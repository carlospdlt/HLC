#!/bin/bash
#Titulo: tamaño2
#Descripción: Modificar el script que calcula el tamaño de un fichero de manera que sume el total ocupado de la lista de parámetros recibida en la que pueden aparecer ficheros y directorios.
#Fecha:18/nov/20
#Autor: Carlos Piña

tamanod=0
tamanoa=0
#Calculamos el tamaño de cada archivo y lo vamos sumando a la variable tamaño
for i in $@
do
	if [ -d $i ]
	then
	   tamd=$(du -sm $i | cut -f 1)
	   echo "El directorio $i ocupa: $tamd MB"
	   tamanod=$(($tamanod + $tamd))
	elif [ -f $i ]
	then
	   tama=$(du -sm $i | cut -f 1)
	   echo "El fichero $i ocupa: $tama MB"
	   tamanoa=$(($tamano + $tama))
	else
	 echo "$i no exite o no es un tipo de argumento valido"
	fi
done
#Mostrar el tamaño total
echo ' '
if [[ $tamanod -gt 0 ]]
  then
	echo "Tamaño total directorios: $tamanod MB"
fi

if [[ $tamanoa -gt 0 ]]
  then
echo "Tamaño total archivos: $tamanoa MB"
fi

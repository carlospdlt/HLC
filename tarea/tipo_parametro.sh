#!/bin/bash
#Titulo: tipo_parametro
#Descripción: Determina si es arcchivo, directorio o no existe
#Fecha:24/nov/20
#Autor: Carlos Piña

if [ "$#" = 1 ]
 then
   if [ -d $1 ]
	then
	   echo "$1 es un directorio"

	elif [ -f $1 ]
	then
	   echo "$1 es un fichero"
	else
	 echo "$1 no exite"
	fi
else 
  echo "Numero de argumentos no valido"
fi

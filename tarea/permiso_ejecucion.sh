#!/bin/bash
#Titulo: permiso_ejecucion
#Descripción: asigne el permiso de ejecución a los ficheros regulares o directorios pasados como argumento
#Fecha:12/nov/20
#Autor: Carlos Piña


if [ -d $1 ]
then
   echo "El directorio $1 ha conseguido permisos de ejecucion"
   chmod +x $1
elif [ -f $1 ]
then
   echo "El fichero $1 ha conseguido permisos de ejecucion"
   chmod +x $1
else
 echo "$1 No exite o no es un tipo de argumento valido"
fi

#!/bin/bash
#Titulo: tamaño
#Descripción: saber tamaño archivo o fichero
#Fecha:18/nov/20
#Autor: Carlos Piña

if [ -d $1 ]
then
   tam=$(du -sm $1 | cut -f 1)
   echo "El directorio $i ocupa: $tam MB"

elif [ -f $1 ]
then
   tam=$(du -sm $1 | cut -f 1)
   echo "El fichero $i ocupa: $tam MB"

else
 echo "$i No exite o no es un tipo de argumento valido"
fi

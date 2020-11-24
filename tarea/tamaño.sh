#!/bin/bash
#Titulo: tamaño
#Descripción: saber tamaño archivo o fichero
#Fecha:18/nov/20
#Autor: Carlos Piña

for i in $@
do
     if [ -d $i ]
      then
	tam=$(du -sm $i | cut -f 1)
	echo "El directorio $i ocupa: $tam MB"

      elif [ -f $i ]
	then
	tam=$(du -sm $i | cut -f 1)
	echo "El fichero $i ocupa: $tam MB"

      else
	echo "$i no exite o no es un tipo de argumento valido"
    fi
done

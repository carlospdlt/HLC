#!/bin/bash
#Titulo: subir_git
#Descripción: sube al git los ficheros
#Fecha:17/nov/20
#Autor: Carlos Piña

#si introducimos argumento se subira el fichero como argumento si no se subiran todos
if [ $# != 0 ]
   then
	echo "se subira el fichero $1"
	fichero=$1
else
	fichero=.
fi

#Seleccionamos los ficheros
git add $fichero

#Nombre del commit
git commit -m "$(date +%d/%b/%y)"

#Subirlo a git
git push -u origin master | carlospdlt

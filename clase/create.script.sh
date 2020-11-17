#!/bin/bash

#Titulo: crear scrpit
#Descripción: Crea la plantilla para los demas scripts
#Fecha: 06/10/2020
#Autor: Carlos Piña

#Variables
ruta="$HOME/scripting"
file="$ruta/$1.sh"

#Comprobamos que tenga argumenro
if [ $# != {1..2} ]
	then
	echo "Falta argumento"
	exit 1
fi

#Comprobamos si exite
if [ -e $file ];
	then
	echo "El archivo ya existes"
	echo "Deseas sobre escribirlo (Y/n)"
	read existe
		if [ $existe != Y ]
			then
			echo "se cancelo la operacion"
			exit 1
		fi

fi

#añadimos informacion
echo -e '#!/bin/bash' > $file
echo '#Titulo:' $1 >> $file
echo '#Descripción:' $2 >> $file
echo '#Fecha:'$(date +%d/%b/%y) >> $file
echo '#Autor: Carlos Piña' >> $file

#le damos permisos
chmod +x $file

#abrimos el fichero
nano $file

#!/bin/bash
#Titulo: existe_usuario
#Descripción: Comprueba si existe el usuario el usuario pasado como argumento, si no recibe argumento indica que falta argumento
#Fecha:27/oct/20
#Autor: Carlos Piña

#!/bin/bash

if [[ $# -ne 1 ]]
 then
	echo "Numero de argumentos incorrecto"
	echo "Uso: $0 nombre_usuario"
exit 1
fi
#grep permite encontrar texto en el terminal
#parámetro q, modo silencioso para no mostrar nada en la salida estándar
#^ Indica en grep el comienzo de linea
#grep devuelve verdad cuando almenos encuentra una linea
if grep -q "^$1:" /etc/passwd
  then
	echo "El usuario $1 existe en el sistema"
  else
	echo "El usuario $1 no existe en el sistema"
fi
exit 0

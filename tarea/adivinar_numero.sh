#!/bin/bash
#Titulo: advinar_numero.sh
#Descripción: Crea un script que permita al usuario adivinar un número aleatorio. El script recibirá como argumento un número, que será el límite superior del rango de valores permitidos. 
#	      Al finalizar el script indicará el número de intentos realizados para acertar el número.
#Fecha:13/nov/20
#Autor: Carlos Piña

#Comprobamos que $1 es un numero
esnumero=^[0-9]+$

if ! [[ $1 =~ $esnumero ]]
then
        echo "argumento no valido"
	exit 1
fi
#Declaramos las variables, numero de intentos y aleatorio que generara el numero
intentos=1
aleatorio=$(($RANDOM%$1 + 1))

#Introducimos el numero con un read
echo "Intenta adivinar el numero entre el 1 y $1"
read -p "Intenta advinar el numero: " numero

#Creamos el bucle para que en caso de fallar se repita
while [ $numero != $aleatorio ]
  do
     intentos=$(($intentos +1))

#Nos aseguramos que se introduce un numero
     if [[ $numero =~ $esnumero ]]
        then

#Indicamos si el numero introducido es mayor o menor que el numero
	    if [[ $numero -gt $aleatorio ]]
	      then
		echo "Tu estimacion es alta"
		read -p "Prueba de nuevo: " numero
            else
		echo "Tu estimacion es baja"
		read -p "Prueba de nuevo: " numero
    	    fi

else
	   echo "argumento no valido"
           read -p "Prueba de nuevo: " numero
fi
done

#Mostramos el numero de intentos
echo "Numero de intentos: $intentos"

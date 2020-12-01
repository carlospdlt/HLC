#!/bin/bash
#Titulo: advinar_numero2.sh
#Descripción: Modificar el script de adivina un número para que permita participar a dos jugadores en el intento de averiguar el número.
#Fecha:27/nov/20
#Autor: Carlos Piña

#Comprobamos que $1 es un numero
esnumero=^[0-9]+$
max=$1
if ! [[ $1 =~ $esnumero ]]
then
        echo "argumento no valido"
        read -p "introduce valor maximo para adivinar: " max
fi
#Declaramos las variables, numero de intentos y aleatorio que generara el numero
intentos1=0
intentos2=0
aleatorio=$(($RANDOM%max + 1))

#Introducimos el numero con un read
echo "Intenta adivinar el numero entre el 1 y $max"
jugador=1
#Creamos el bucle para que en caso de fallar se repita
while [[ $numero != $aleatorio ]]
  do
  echo ' '
 #Creamos un if para cambiar a quien se le suman los puntos de jugador
   if [[ $jugador -eq 1 ]]
     then
       echo "Turno jugador 1:"
       intentos1=$(($intentos1 +1))
       jugador=2
     else
         echo "Turno jugador 2:"
         intentos2=$(($intentos2 +1))
         jugador=1
   fi
   read -p "Introduce un numero: " numero
#Nos aseguramos que se introduce un numero
    if [[ $numero =~ $esnumero ]]
      then
#Indicamos si el numero introducido es mayor o menor que el numero
            if [[ $numero -gt $aleatorio ]]
              then
                echo "Tu estimacion es alta"
            elif [[ $numero -eq $aleatorio ]]
            	then
            	echo "Tu estimacion es correcta"
            else
                echo "Tu estimacion es baja"
            fi
    else
#Reinicia el bucle si se introduce un argumento invalido
            echo "argumento no valido"
		    if [[ $jugador -eq 1 ]]
		     then
		       intentos2=$(($intentos2 -1))
		       jugador=2
		     else
		       intentos1=$(($intentos1 -1))
		       jugador=1
		    fi
    fi
done
echo ' '
#Muestra quien gana
 if [[ $jugador -eq 2 ]]
   then
     echo "El jugador 1 gana!!!"
   else
     echo "El jugador 2 gana!!!"
 fi

#Mostramos el numero de intentos
echo ' '
echo "Numero de intentos jugador 1: $intentos1"
echo "Numero de intentos jugador 2: $intentos2"

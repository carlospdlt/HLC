#! /bin/bash
#Titulo: Nota_academica
#Descripción: Introducimos una nota y la pasa a letra
#Fecha:17/nov/20
#Autor: Carlos Piña

#Nos aseguramos que el numero de argumentos sea valido
if [ $# != 1 ]
  then
      echo "Argumento invalido"
      read -p "introduce la nota: " nota
else
      nota=$1
fi

if [ $nota -lt 5 ]
	then
		echo "Insuficiente"

	elif [ $nota -lt 6 ]
	then
		echo "Suficiente"

	elif [ $nota -lt 7 ]
	then
		echo "Bien"

	elif [ $nota -lt 9 ]
	then
		echo "Notable"

	elif [ $nota -le 10 ]
	then
		echo "Sobresaliente"

	else
		echo "Argumento invalido"
fi

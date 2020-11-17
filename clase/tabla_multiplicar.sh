#!/bin/bash
#Titulo: tabla_multiplicar
#Descripción: Tabla multiplicar del numero introducido por el usuario
#Fecha:03/nov/20
#Autor: Carlos Piña

clear
echo "Introducir numero de tabla"
read -p "numero: " numero

#Con una tabla de valores, no tiene mucho sentido
echo "tabla de multiplicar version-1"
for n in 0 1 2 3 4 5 6 7 8 9 10
do
	#comando (())
	echo "$numero x $n=" $(( n * numero))
done

#Con rango
echo "tabla de multiplicar version-2"
for n in {1..10}
do
	 echo "$numero x $n=" $(( n * numero))
done

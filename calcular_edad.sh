#!/bin/bash
#Titulo: calcular_edad
#Descripción:Calcular edad al introducir fecha y avisar si hay errores al introducir los datos
#Fecha:11/nov/20
#Autor: Carlos Piña

#Introducimos variables
echo "Ingrese su fecha de nacimiento: "
read -p "dia: " dia

#Comprobamos que los datos son correctamente introducidos
#if [ $dia != {1..31} ]
#	exit 1
#    then
#        echo "argumento dia invalido, formato valido dia: 01)"
#else

read -p "mes: " mes

#if [ $mes != {1..12} ]
#    then
#        echo "argumento dia invalido, formato valido mes: 01)"
#        exit 1
#else
#fi

read -p "año: " anio

#if [ $anio != {????} ]
#    then
#       echo "argumento dia invalido, formato valido dia: 1999)"
#        exit 1
#fi

#Declaramos dis mes y año actual como variables independientes
dact=$(date +%d)
mact=$(date +%m)
aact=$(date +%Y)

actual=$dact-$mact-$aact

echo "La fecha actual es:" $actual

#Calculamos los años
aedad=$(($aact - $anio))

#En caso de haber pasado el cumpleaños se suma uno al año
if [[ $dia -le $dact ]] && [[ $mes -le $mact ]]
    then
	edad=$(($aedad + 1))
else
	edad=$aedad
fi

#Mostramos la edad
echo "Su edad es:" $edad

fi

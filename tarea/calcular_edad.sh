#!/bin/bash
#Titulo: calcular_edad
#Descripción:Calcular edad al introducir fecha y avisar si hay errores al introducir los datos
#Fecha:11/nov/20
#Autor: Carlos Piña

#Introducimos variables
echo "Ingrese su fecha de nacimiento: "
read -p "dia: " dia

#Comprobamos que los datos son correctamente introducidos


read -p "mes: " mes


read -p "año: " anio

if [[ $ ]]

#Declaramos dis mes y año actual como variables independientes
dact=$(date +%d)
mact=$(date +%m)
aact=$(date +%Y)

actual=$dact-$mact-$aact

echo "La fecha actual es:" $actual

#Calculamos los años
aedad=$(($aact - $anio))

#En caso de haber no pasado el cumpleaños se le resta uno al año
if [[ $dia -le $dact ]] && [[ $mes -le $mact ]]
    then
	edad=$aedad
else
	edad=$(($aedad -1))
fi

#Mostramos la edad
echo "Su edad es:" $edad

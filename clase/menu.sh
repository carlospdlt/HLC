#!/bin/bash
#Titulo: menu
#Descripción: Crea un script que muestre un menu con 3 opciones
#Fecha:03/nov/20
#Autor: Carlos Piña

while :
    do
	clear
	echo "-1 - Copia de seguridad"
	echo "-2 - Restaurar"
	echo "-3 - Fin"
	echo "Su eleccion: "
read respuesta
case "$respuesta" in
        1) echo "Su eleccion ha sido copia de seguridad"
        #ejecucion de la restauracion
        ;;
        2) echo "Su eleccion ha sido restaurar"
        #ejecucion de la restauracion
        ;;
        3) echo "Fin del tratamiento"
        #ejecucion de la restauracion
        break
        ;;
        *) echo "opcion incorrecta"
        #ejecucion de la restauracion
        exit 1
        ;;
esac
read -p "Presione enter"
done

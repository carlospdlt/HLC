#!/bin/bash
#Titulo: subir_git
#Descripción: sube al git los ficheros
#Fecha:17/nov/20
#Autor: Carlos Piña

#Seleccionamos todo
git add .

#Nombre del commit
read -e "nombre del coomit" nombre_commit
git commit -m "$nombre_commit"

#Subirlo a git
git push -u origin master

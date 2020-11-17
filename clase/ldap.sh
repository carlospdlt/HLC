#!/bin/bash
#Titulo: ldap
#Descripción: Creación de usuarios en ldap
#Fecha:17/nov/20
#Autor: Carlos Piña

grep "x:[1-9][0-9][0-9] /etc/passwd | (while read TARGET_USER
do
  read $TARGET_USER
done
)

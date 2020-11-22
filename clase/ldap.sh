#!/bin/bash
#Titulo: ldap
#Descripción: Creación de usuarios en ldap
#Fecha:17/nov/20
#Autor: Carlos Piña

grep "x:[1-9][0-9][0-9][0-9]:" /etc/passwd | (while read TARGET_USER
do
USER_ID="$(echo "$TARGET_USER" | cut -d':' -f1)"

    USER_NAME="$(echo "$TARGET_USER" | cut -d':' -f5 | cut -d',' -f1 )"
    [ ! "$USER_NAME" ] && USER_NAME="$USER_ID"
done
)

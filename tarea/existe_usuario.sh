#! /bin/bash
#Titulo: existe_usuario
#Descripción: Introducimos un usuario como argumento y compramos si existe
#Fecha:16/nov/20
#Autor: Carlos Piña

#Nos aseguramos que el numero de argumentos sea valido
if [ $# != 1 ]
  then
      echo "Argumento invalido"
      read -p "introduce nombre de usuario: " usuario
else
     usuario=$1
fi

#Con id -u $1 vemos si el usuario tiene id, en caso de tener existe. /dev/null es como un agujero negro donde mandar esa informacion para que no se pueda recuperar.
#2>&1redirige el error estándar (2) a la salida estándar (1), que luego lo descarta también, ya que la salida estándar ya ha sido redirigida.
if id -u "$usuario" >/dev/null 2>&1
then
echo "El usuario $usuario existe"
else
echo "El usuario $usuario no existe"
fi

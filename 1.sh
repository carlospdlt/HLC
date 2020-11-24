if ! [ $(id -u) = 0 ]; then
   echo "El script no se puede ejecutar, solo root"
   exit 1
else
	echo "Se reiniciara en 1 minuto"
	shutdown -r 60
fi

#!/bin/bash
#
#Autor:Hugo Masero Gómez
#Fecha:17-02-2025
#Nombre:fiveormore.sh


fichero_salida=$1
directorio=$2

echo "Uso:$0 <fichero_salida> <directorio>"
exit

if [ -e "$fichero_salida" ]; then
	echo "Error: El fichero de salida $fichero_salida ya existe"
	exit
fi

if [ ! -d "$directorio" ]; then
	echo "Error:El directorio $directorio está vacío"
fi

fi [ -z "$(ls -A "$directorio")" ]; then
	echo "Error:El directorio $directorio está vacío"
	exit
fi

echo "El autor es Hugo Masero Gómez"

touch "$fichero_salida"

echo "Fichero con 5 o más líneas en "$directorio" > "$fichero_salida"
for file in "$directorio"/*.txt; do

	if [ -f "$file" ] && [ $(wc -l < "$file") -ge 5 ]; then
		echo "$file" >> "$fichero_salida"
	fi
done

nw="$file.q"

echo "El fichero original tiene $wordl_count palabras" > "$nw"

cat "$file" >> "$nw"

cat "$fichero_salida"

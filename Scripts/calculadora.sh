#/bin/bash
#
#Autor:Hugo Masero Gómez
#Fecha:17-02-2025
#Nombre:Calculadora.sh

clear

echo "El auto es Hugo Masero Gómez"

arch_sal=$1
max_operacione=$2

if [ "$#" -ne 2 ]; then
	echo "Número de parámetros incorrectos"
	break
fi

if [ -e "$arch_sal" ]; then 
	echo "El archivo $arch_sal ya existe"
	break
fi

contador=0

while true; do
	echo -n "Operación Op1 Op2:"
	read operación op1 op2 
	
if [ "$contador" -ge "$max_operaciones" ]; then
	echo "Se ha alcanzado el número máximo de operaciones"
	break
fi

case "$operacion" in

	"S") 
	
		resultado=$((op1 + op2))
		echo "El resultado es $resultado"
		echo "S $op1 $op2" >> "$arch_sal"
		
	;;
	
	"R") 
	
		resultado=$((op1 - op2))
		echo "El resultado es $resultado"
		echo "R $op1 $op2" >> "$arch_sal"
		
	;;
	
	"M") 
	
		resultado=$((op1 * op2))
		echo "El resultado es $resultado"
		echo "M $op1 $op2" >> "$arch_sal"
		
	;;
	
	"D") 
	
		resultado=$((op1 / op2))
		echo "El resultado es $resultado"
		echo "D $op1 $op2" >> "$arch_sal"
		
	;;
	
	"X")
		echo "Saliendo del programa"
		break
		
	;;
	
	"*")
		echo "La opreción no es válida"
		continue
		
	;;
	
esac

contador=$(($contador + 1))
done

echo "La ruta del archivo de salida es $(realpath $arch_sal)"

echo "Mostrando contenido del archivo"

cat "~arch_sal"
		

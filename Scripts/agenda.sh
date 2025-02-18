#!/bin/bash
#
#Fecha:18-02-2025
#Autor:Hugo Masero Gómez

clear

while true; do

    echo "a- Añadir una entrada"
    echo "b- Buscar por DNI"
    echo "c- Ver la agenda completa"
    echo "d- Eliminar todas las entradas de la agenda"
    echo "e- Finalizar"

    read -p "Introduzca opción: " op
    
    case $op in
    
        a)
            read -p "Introduzca un DNI: " DNI

            if [ grep -q "^$DNI:" agenda.txt ]; then
                echo "La persona ya ha sido dada de alta"
            else
                read -p "Escriba un nombre: " nom
                read -p "Escriba los apellidos: " ape
                read -p "Escriba la localidad: " loc
                
                echo "$DNI:$nom:$ape:$loc" >> agenda.txt
                echo "Contacto añadido correctamente."
            fi
            ;;
        
        b) 
            read -p "Escriba un DNI para buscarlo: " DNI

            if [ grep -q "^$DNI:" agenda.txt ]; then
            
                nombre=$(grep "^$DNI:" agenda.txt | cut -d ":" -f 2)
                apellidos=$(grep "^$DNI:" agenda.txt | cut -d ":" -f 3)
                localidad=$(grep "^$DNI:" agenda.txt | cut -d ":" -f 4)

                echo "La persona con DNI número $DNI es $nombre $apellidos, y vive en $localidad."
            else
                echo "No se encontró el DNI en la agenda."
            fi
            ;;
        
        c)
            echo "Mostrando contenido de la agenda..."

            if [ ! -s agenda.txt ]; then
                echo "Agenda vacía."
            else
                cat agenda.txt
            fi
            ;;

        d) 
            echo "Eliminando contenido del archivo..."
            > agenda.txt
            echo "Agenda vacía."
            ;;

        e)
            echo "Finalizando..."
            break
            ;;
        
        *)
            echo "Opción no válida, intente de nuevo."
            ;;
    esac
done

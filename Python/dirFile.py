"""
# Nombre: dirFile.py
# Autor: Hugo Masero Gómez
# Fecha: 26-03-2025
# Descripción: Este script clasifica el contenido en ficheros y directorios desde un archivo 'rutas.txt',
# almacenándolos en listas separadas. Luego, muestra un menú con opciones para gestionar estos archivos.
"""

import shutil
import os

list_ficheros = []
list_directorios = []

with open("rutas.txt", "r") as fich1:
    contenido = fich1.readlines()
    
 for ruta in contenido:
    r = ruta.strip() 
 if os.path.isfile(r):
    list_ficheros.append(r)
  elif os.path.isdir(r):
    list_directorios.append(r)

print("Carpetas:", list_directorios)
print("Ficheros:", list_ficheros)

while True:
    print("A - Eliminar un fichero")
    print("B - Mostrar información de un directorio")
    print("C - Copiar un fichero a un destino")
    print("D - Mostrar listas de ficheros o directorios")
    print("E - Salir")

    opcion = input("Escoja una opción de A - E: ").strip().upper()

    match opcion:
        case "A":
            fich = input("Escriba el nombre de un fichero: ").strip()
            if fich in list_ficheros:
                os.remove(fich)
                list_ficheros.remove(fich)
                print("Archivo eliminado correctamente.")
            else:
                print("Error: El fichero no existe.")

        case "B":
            dire = input("Escriba el nombre de un directorio: ").strip()
            if dire in list_directorios:
                print(f"Contenido de {dire}:")
                os.system(f"ls {dire}")
            else:
                print("Error: El directorio no existe.")

        case "C":
            fichero = input("Escriba el nombre de un fichero: ").strip()
            destino = input("Escriba el destino: ").strip()
            if fichero in list_ficheros:
                if os.path.exists(destino):  
                    shutil.copy(fichero, destino)
                    print("Fichero copiado con éxito.")
                else:
                    print("Error: El destino no existe.")
            else:
                print("Error: El fichero no existe.")

        case "D":
            tipo_lista = input("¿Qué desea ver? (F para ficheros o D para directorios): ").strip().upper()
            if tipo_lista == "F":
                print("Lista de ficheros:", list_ficheros)
            elif tipo_lista == "D":
                print("Lista de directorios:", list_directorios)
            else:
                print("Opción no válida.")

        case "E":
            print("Saliendo del programa...")
            break

        case _:
            print("ERROR")


"""
#Nonmbre:dirFile.py
#Autor:Hugo Masero Gómez
#Fecha:26-03-2025
#Descripción:Este script calisifica el contenido en rutas y diretcorios, luego los mete en listas. Tras ello iniciarrá un menú
en el que dependiendo de las opciones podrás eliminar archivos, ver información de directorios, etc
"""
import shutil

import os

list_ficheros=[]
list_directorios=[]

fich1=open("rutas.txt","r")

contenido=fich1.readlines()

for i in contenido:
    r=i.strip()
    if os.path.isfile(r):
        list_ficheros.append(r)
    elif os.path.isdir(r):
        list_directorios.append(r)

print("Carpetas",list_directorios)
print("Ficheros",list_ficheros)

menu = int(input("Escoga una opción de la A - E "))

match menu:

    case "A":
        fich=input("Escriba el nombre de un fichero ")
        os.system("rm -r"+fich)
        print("Archivo eliminado correctamente")

    case "B":
        dire=input("Escriba el nombre de un directorio ")
        show_content=os.system("ls"+dire)
        print(show_content)

    case "C":
        fichero=input("Escriba el nombre de un fichero ")
        destino=input("Escriba el nombre del destino ")

        shutil.copy(fichero,destino)
        print("Copiado con éxito")

    case "D":

    case "E":
        print("Has escogido salir")
    case _:
        print("ERROR")

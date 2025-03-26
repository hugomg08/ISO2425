"""
#Autor:Hugo Masero Gómez
#Fecha:26-03-2025
"""

import os
import cpuinfo as cpu

if os.getuid()==0:
    while True:
        menu = int(input("Escribame un número del 1 - 4 " ))

        match menu:
                case 1:
                    ssoo = os.uname()
                    CPU = cpu.get_cpu_info()["brand_raw"]

                    print("La información del sistema es", ssoo)
                    print("La información de la CPU es", CPU)

                case 2:

                    user=input("Escriba el nombre de un usuario ")

                    fich=open("/etc/passwd","r")
                    contenido=fich.readlines()
                    enc=0

                    for i in contenido:
                        if i.split(":")[0] == user:
                            enc=1
                            final=i
                            break
                    if enc == 1:
                        print(final)
                    else:
                        print("Usuario no encontrado, creando usuario")
                        usuario = os.system("sudo useradd "+user)


                case 3:

                    dir = input("Escriba el nombre de un directorio ")

                    if os.path.isdir(dir):
                        print("El directorio existe")
                    else:
                        print("Creando archivo")
                        os.mkdir(dir)

                case 4:
                    print("Has escogido salir")

                case _:
                    print("ERROR")


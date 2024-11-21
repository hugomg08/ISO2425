@echo off
rem createFiles
rem autor Hugo Masero Gómez
rem fecha: 20-11-2024

echo Presiona 1 para crear un archivo txt
echo Presiona 2 para crear un archivo bat
set /P press=
if %press% == 1 goto txt
if %press% == 2 goto bat

:txt
echo Archivo.txt
set /P name1="Introduzca el nombre del archivo "
echo > %name1%.txt
pause
exit

:bat
echo Archivo.bat
set /P name2="Introduzca el nombre del archivo "
echo > %name2%.bat
pause
exit
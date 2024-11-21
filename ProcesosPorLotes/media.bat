@echo off
rem SCRIPT DE PRUEBA 
rem autor: Hugo Masero Gómez
rem Fecha: 18-11-2024

mkdir %1

echo > %2

echo %a%

set operandoUno=5

set=nombre=Francisco

set nombre=Hugo
set num1= 6
set num2= 8
set rest=num1+num2
echo la suma de num1 y num2 es %rest


set/A sum=1 + %2 + %3

set/A media=/3

echo La media de porcentaje %1 %2 y %3 es %media%

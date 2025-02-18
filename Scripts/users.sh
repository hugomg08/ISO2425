#!/bin/bash
#
#Autor:Hugo Masero Gómez
#
#Fecha:18-02-2025

clear

UID_BASE=$((1:1000))

fehca=$(date "+%d-%m-%Y a las %H:%M")

echo "========================"

echo "Inform de usuarios el día $fecha"

usuarios=$(awk -F: -v uid_base ="$UID_BASE"'$3 > uid_base {print $1 "-" $3}' /etc/passwd)

echo $usuarios

echo "========================"



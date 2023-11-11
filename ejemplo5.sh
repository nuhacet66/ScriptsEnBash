#!/bin/bash

while true
do
select campo in nombre calve uid gecos directorios shell salir
do
 case $campo in
  nombre) cut -d : -f 1 /etc/passwd;;
  clave) echo" es una equis";;
  uid) cut -d : -f 3 /etc/passwd | sort -n; echo "fin";;
  salir) exit;;
  *) echo "ya es todo"
  esac
  break
 done
done
 

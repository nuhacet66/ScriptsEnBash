#!/bin/bash

error()
{
	echo $1 >&2
	exit $2
}


(( $# != 1 )) && error "Debe indicar un nivel de copia en 0 o 1" 1
#ruta de direcciones
dir="$HOME/bin"
backup="$HOME/backup"
sufijo="nivel$1_$(date +%Y%m%d_%H%M)"
testigo="$backup/testigo.nivel0"
#tipos de casos para tener versiones
case $1 in
#copia de nivel 0
0)
touch $testigo
find $dir -print0 | \
tar zcvf "$backup/backup_$sufijo.tgz" \
--null --no-recursion -T- \
> "$backup/catalogo_$sufijo.txt" \
2> "$backup/errores_$sufijo.txt"
;;
#copia de nivel 1
1)
if [ -e $testigo ] ; then
	find $dir -newer $testigo -print0 | \
	tar zcvf "$backup/backup_$sufijo.tgz" \
	--null --no-recursion -T- \
	> "$backup/catalogo_$sufijo.txt" \
	2> "$backup/errores_$sufijo.txt"
else /home/bin/backup.sh 0	
fi
;;
*) error "El nivel de copia debe ser 0 o 1" 2
esac
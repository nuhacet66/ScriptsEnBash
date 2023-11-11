#!/bin/bash

IFS=:
i=0

error()
{
echo $1 >&2
exit $2
}

[ $# -lt 1 ] && error "numero de parametros incorrectos" 1

exec 3<"/etc/passwd"
while read -u3 -a vector
do
 (( i++ ))
texto="Registro $i -"
 for campo in $@
do
texto="$texto ${vector[$(( campo-1 ))]}"
done
 echo "$texto"
done

echo "total de registros $i"

exec 3<&-

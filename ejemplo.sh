#!/bin/bash



error()

{
 echo $1 >&2
 exit $2
}

[ $# -ne 1 ] && error "uso: $0 directorio" 1
[ -d "$1" ] || mkdir "$1"
for fichero in *.txt
do
 cp "$fichero" "$1/$fichero.backup"
 
done


exit 0

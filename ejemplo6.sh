#!/bin/bash

error()
{
echo $1 >&2
exit $2
}


var=$(grep UID /etc/login.defs)
IFS=:
while read -a $var
do

if [[ $s1 -ge 100 || $s2 -gt 200 ]] 
then
	echo "los parametros se salen de los rangos"
	exit
fi

done
 
 

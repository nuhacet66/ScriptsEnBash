#!/bin/bash

error()
{
echo $1
exit $2
}


if [[ $1 -eq 0 ]] && [[ $2 -eq 0 ]] 

then
	echo "error con parametros inferiores a 1" 
	exit
fi

if [[ $1 > 7  ]] && [[ $2 > 7 ]] 

then
	echo "error con parametros mayores a 8" 
	exit
fi

cut -d ":" -f $1,$2 /etc/passwd


exit 0




#!/bin/bash

error()
{
 echo $1>&2
 exit $2

}


(( $# < 1 )) && error "el parametro es erroneo" 1


for user in $@

do
	existe=$(grep -E user: /etc/passwd)
	if [ $exite -eq 0 ]
		then
			echo "el usuario $user no existe" >2&
	fi
done

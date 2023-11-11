#!/bin/bash


error(){
echo $1 >&2
exit $2
}

fichero=./bin/barcode.txt

(( $# < 1 )) && error "el tamaño de los parametros es incorrecto" 1
 
 for valor in $@
 do
 	cuenta=$(grep -cE  ^$valor ./barcode.txt)
 	echo " el codigo $valor sale $cuenta veces"
done
 exit 0

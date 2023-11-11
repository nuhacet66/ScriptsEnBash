#!/bin/bash


error(){
echo $1 >2&
exit $2
}
home_dir="$HOME"
 exec 3<$(basename $HOME/bin/datos.txt)

 (( $# < 1 )) && error "el paramametro es inferior a 1" 1
 
 
while read -u3 fila
do
	
	echo "La ruta sera $home_dir y los datos $fila"
done	

exec 3<&-


exit 0

 

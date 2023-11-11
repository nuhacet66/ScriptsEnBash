#!/bin/bash

IFS=:
exec 3<"/etc/passwd"
exec 4>>"./salida.txt"
i=0
while read -u3 nombre calve uid resto
do
[ ! $uid -gt 500 ] && continue
(( i++ ))

echo "$i :$nombre (UID $uid)">&4
 
done

echo "total de usuarios $i"

exec 3<&-

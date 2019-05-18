#!/usr/bin/bash
echo "$@"
pwd
#cat >/tmp/res.txt
if [ "$1" = "foo" ];then
	for i in 1 2 3
	do 
		echo 'Π'
		sleep 3
	done
	exit 0
fi
exec "$@"


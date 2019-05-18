#!/usr/bin/bash

if [ "$#" -eq 0 ];then
	/usr/sbin/sshd -D	
else
 	exec "$@"	
fi

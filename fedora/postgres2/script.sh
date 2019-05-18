#!/usr/bin/bash

if [ "$#" -eq 0 ];then
	su - postgres <<-BASH
		pg_ctl start	
	BASH
  /usr/sbin/sshd -D
else
  exec "$@"
fi


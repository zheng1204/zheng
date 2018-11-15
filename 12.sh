#!/bin/bash
for i in {1..254}
do
	ping -c1 -i0.1 -W1 192.168.4.$i >/dev/null
	if [ $? -eq 0 ];then
		echo "host 192.168.4.$i is up."
	else
		echo "host 192.168.4.$i is down."
	fi
done

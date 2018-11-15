#!/bin/bash
rm -rf /root/.ssh/known_hosts 

expect << EOF
spawn ssh 192.168.4.7
expect "yes/no"		{send "yes\r"}
expect "password"	{send "123456\r"}
expect "#"		{send "yum -y install httpd\r"}
expect "#"		{send "exit\r"}
EOF	

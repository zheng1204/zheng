#!/bin/bash
if [ $UID -eq 0 ];then
	yum -y install vsftpd
else
	echo "您不是管理员,请联系管理员"
fi

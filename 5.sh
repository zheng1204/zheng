#!/bin/bash
#本机剩余内存
mem_size=$(free | awk '/Mem/{print $4}')
#硬盘剩余空间
disk_size=$(df | awk  '/\/$/{print $4}')
while :
do
	if  [ $mem_size -lt 500000 ] && [ $disk_size -lt 1000000 ];then
		echo "警报,资源不足,请及时查看" | mail -s "Warning" root
	fi
done		

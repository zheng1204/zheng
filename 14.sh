#!/bin/bash
#定义一个函数,ping主机的存活率
myping(){
	ping -c1 -i0.2 -W1 $1 &>/dev/null
	if [ $? -eq 0 ];then
		echo "host $1 is up."
	else
		echo "host $1 is down."
	fi
}

for i in {1..254}
do
	myping 192.168.4.$i &  #使用&,将函数放入后台执行
done

#!/bin/bash
#定义100内的随机数
num=$[RANDOM%100+1]

while :
do
	read -p "请输入你所猜的数字:" n1
	[ "$n1" == "" ] && exit
	[ $n1 -gt 100 ] && echo "请输入100以内的数." && continue
	if [ $num -lt $n1 ];then
		echo "你猜大了"
	elif [ $num -gt $n1 ];then
		echo "你猜小了"
	else
		echo "恭喜你,猜对了"
		exit
	fi
done

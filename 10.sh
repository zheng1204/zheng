#!/bin/bash
read -p "请输入第一个整数:" num1
read -p "请输入第二个整数:" num2
read -p "请输入第三个整数:" num3
if [ $num1 -gt $num2 ];then
	temp=$num1
	num1=$num2
	num2=$temp
fi
if [ $num1 -gt $num3 ];then
	temp=$num1
	num1=$num3
	num3=$temp
fi
if [ $num2 -gt $num3 ];then
	temp=$num2
	num2=$num3
	num3=$temp
fi
echo "$num1<$num2<$num3"

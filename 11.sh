#!/bin/bash
num=$[RANDOM%3+1]
echo "出拳方式:石头  剪刀  布"
echo "1.石头"
echo "2.剪刀"
echo "3.布"
read -p "请选择(1~3)出拳方式:" x
case $x in
1)
	if [ $num  -eq 1 ];then
		echo "平局"
	elif [ $num -eq 2 ];then
		echo "你赢了"
	else
		echo "计算机赢了"
	fi;;
2)
	if [ $num  -eq 1 ];then
                echo "计算机赢了"
        elif [ $num -eq 2 ];then
                echo "平局"
        else
                echo "你赢了"
        fi;;
3)
	if [ $num  -eq 1 ];then
                echo "你赢了"
        elif [ $num -eq 2 ];then
                echo "计算机赢了"
        else
                echo "平局"
        fi;;
*)
	echo "必须输入1-3的数"
esac

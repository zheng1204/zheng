#!/bin/bash
#定义一个显示进度的函数,屏幕快速显示| / - \
rotate_line(){
utime=0.1
COUNT="0"
while :
do
	COUNT=`expr $COUNT + 1`
	case $COUNT in
	"1")
		echo -e '-'"\b\c"
		sleep $utime;;
	"2")
		echo -e '\\'"\b\c"
		sleep $utime;;
	"3")
		echo -e '|'"\b\c"
		sleep $utime;;
	"4")
		echo -e '/'"\b\c"
		sleep $utime;;
	*)
		COUNT="0";;
	esac
done
}
rotate_line

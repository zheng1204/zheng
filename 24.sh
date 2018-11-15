#!/bin/bash
while :
do
	i=`cat $1 | wc -l`
	num=$[RANDOM%i+1]
		clear
	sed -n "${num}p" $1
	#for name in `cat $1`
	#do
	#	echo $name
		sleep 0.1
	#done
done

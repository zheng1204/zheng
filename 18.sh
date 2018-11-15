#!/bin/bash
while :
do
	ifconfig p8p1 | awk '/RX p/{print $5}'
	ifconfig p8p1 | awk '/TX p/{print $5}'
	sleep 3
done

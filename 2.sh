#!/bin/bash
useradd $1			#$1第一个参数,表示用户
echo $2 | passwd --stdin $1	#$2第二个参数,表示密码

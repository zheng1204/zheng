#!/bin/bash
read -p "请输入你的用户名:" user
# -z 判断变量是否为空
[ -z $user ] && exit
stty -echo
read -p "请输入你的密码:" pass
stty echo
pass=${pass:-123456}
useradd $user
echo $pass | passwd --stdin $user

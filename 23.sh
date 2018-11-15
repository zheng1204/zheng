#!/bin/bash
read -p "输入 VM 数:" vm
if [ $vm -ne 9 ];then
vm=0$vm
echo $vm
fi

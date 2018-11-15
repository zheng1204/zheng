#!/bin/bash
for name in `cat user.txt`
do
useradd $name
echo "123456" | passwd --stdin $name
done

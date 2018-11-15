#!/bin/bash
n=`yum repolist | awk /repolist/{print $2} |sed s/,//`
if [ $n -eq 0 ];then
	echo "YUM源不可用"
fi
tar -xf lnmp_sort.tar.gz
cd lnmp_sort
#安装nginx服务
tar -xf nginx-1.12.2.tar.gz
cd nginx-1.12.2
useradd -s /sbin/nologin nginx &>/dev/null
yum -y install gcc pcre-devel openssl-devel zlib-devel &>/dev/null
./configure --user=nginx --group=nginx
make && make install &>/dev/null
#安装数据库和php解释器
yum -y install mariadb-server mariadb-devel php php-mysql &>/dev/null
yum -y install php-fpm-5.4.16-42.e17.x86_64.rpm &>/dev/null
#启动php解释器及数据库服务
systemctl restart php-fpm mariadb

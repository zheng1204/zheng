#!/bin/bash
menu(){
echo " ###################----Menu----###################"
echo "# 1. Install Nginx"
echo "# 2. Install MySQL"
echo "# 3. Install PHP"
echo "# 4. Exit Program"
echo " ##################################################"
}
choice(){
	read -p "Please choice a menu[1-9]:" select
}
install_nginx(){
	id nginx &>/dev/null
	if [ $? -ne 0 ];then
		useradd -s /sbin/nologin nginx
	fi
	if [ -f nginx-1.12.2.tar.gz ];then
		tar -xf nginx-1.12.2.tar.gz
		cd nginx-1.12.2
		yum -y install gcc make pcre-devel openssl-devel zlib-devel
		./configure --user=nginx --group=nginx 
		make
		make install
	else
		echo "没有Nginx源码包"
	fi
	}
install_mariadb(){
	yum -y install mariadb mariadb-server mariadb-devel &>/dev/null
}
install_php(){
	yum -y install php php-mysql php-fpm-5.4.16-42.e17.x86_64.rpm &>/dev/null
}


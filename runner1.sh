#!/bin/bash
opkg update
opkg install php7 php7-cgi php7-cli php7-fpm php7-mod-bcmath php7-mod-calendar php7-mod-ctype php7-mod-curl
opkg install php7-mod-dom php7-mod-exif php7-mod-fileinfo php7-mod-ftp php7-mod-gd php7-mod-gettext php7-mod-gmp
opkg install php7-mod-iconv php7-mod-imap php7-mod-intl php7-mod-json php7-mod-ldap php7-mod-mbstring php7-mod-mysqli
opkg install php7-mod-mysqlnd php7-mod-opcache php7-mod-openssl php7-mod-pcntl php7-mod-pdo php7-mod-pdo-mysql
opkg install php7-mod-pdo-pgsql php7-mod-pdo-sqlite php7-mod-pgsql php7-mod-phar php7-mod-session
opkg install php7-mod-shmop php7-mod-simplexml php7-mod-soap php7-mod-sockets php7-mod-sqlite3 php7-mod-sysvmsg
opkg install php7-mod-sysvsem php7-mod-sysvshm php7-mod-tokenizer php7-mod-xml php7-mod-xmlreader php7-mod-xmlwriter
opkg install php7-mod-zip php7-pecl-dio php7-pecl-http php7-pecl-libevent php7-pecl-mcrypt php7-pecl-propro php7-pecl-raphf
opkg install php7-pecl-redis mariadb-client mariadb-server mariadb-server-base
opkg install libmariadb nano
opkg install freeradius3 freeradius3-common freeradius3-default freeradius3-mod-always freeradius3-mod-attr-filter
opkg install freeradius3-mod-chap freeradius3-mod-detail freeradius3-mod-digest freeradius3-mod-eap freeradius3-mod-eap-gtc
opkg install freeradius3-mod-eap-leap freeradius3-mod-eap-md5 freeradius3-mod-eap-mschapv2 freeradius3-mod-eap-peap
opkg install freeradius3-mod-eap-pwd freeradius3-mod-eap-tls freeradius3-mod-eap-ttls freeradius3-mod-exec
opkg install  freeradius3-mod-expiration freeradius3-mod-expr freeradius3-mod-files freeradius3-mod-logintime
opkg install freeradius3-mod-mschap freeradius3-mod-pap freeradius3-mod-preprocess freeradius3-mod-radutmp
opkg install freeradius3-mod-realm freeradius3-mod-sql freeradius3-mod-sql-mysql freeradius3-mod-sqlcounter
opkg install freeradius3-mod-unix freeradius3-utils libfreetype wget-ssl curl unzip tar zoneinfo-asia
opkg install mariadb-server-base mariadb-server mariadb-client mariadb-server-extra mariadb-client-extra
eval $(opkg find php7* | sed 's/ - .*//' | sed 's/^/opkg install /')
eval $(opkg find freeradius3* | sed 's/ - .*//' | sed 's/^/opkg install /')
cd /www && mkdir push && cd /www/push
wget https://pear.php.net/go-pear.phar -O go-pera.php
php-cli go-pera.php /dev/null 2>&1

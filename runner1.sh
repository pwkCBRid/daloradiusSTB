opkg update
sleep 3
opkg install php7 php7-cgi php7-cli php7-fpm php7-mod-bcmath php7-mod-calendar php7-mod-ctype php7-mod-curl
sleep 3
opkg install php7-mod-dom php7-mod-exif php7-mod-fileinfo php7-mod-ftp php7-mod-gd php7-mod-gettext php7-mod-gmp
sleep 3
opkg install php7-mod-iconv php7-mod-imap php7-mod-intl php7-mod-json php7-mod-ldap php7-mod-mbstring php7-mod-mysqli
sleep 3
opkg install php7-mod-mysqlnd php7-mod-opcache php7-mod-openssl php7-mod-pcntl php7-mod-pdo php7-mod-pdo-mysql
sleep 3
opkg install php7-mod-pdo-pgsql php7-mod-pdo-sqlite php7-mod-pgsql php7-mod-phar php7-mod-session
sleep 3
opkg install php7-mod-shmop php7-mod-simplexml php7-mod-soap php7-mod-sockets php7-mod-sqlite3 php7-mod-sysvmsg
sleep 3
opkg install php7-mod-sysvsem php7-mod-sysvshm php7-mod-tokenizer php7-mod-xml php7-mod-xmlreader php7-mod-xmlwriter
sleep 3
opkg install php7-mod-zip php7-pecl-dio php7-pecl-http php7-pecl-libevent php7-pecl-mcrypt php7-pecl-propro php7-pecl-raphf
sleep 3
opkg install php7-pecl-redis mariadb-client mariadb-server mariadb-server-base
sleep 3
opkg install libmariadb nano
sleep 3
opkg install freeradius3 freeradius3-common freeradius3-default freeradius3-mod-always freeradius3-mod-attr-filter
sleep 3
opkg install freeradius3-mod-chap freeradius3-mod-detail freeradius3-mod-digest freeradius3-mod-eap freeradius3-mod-eap-gtc
sleep 3
opkg install freeradius3-mod-eap-leap freeradius3-mod-eap-md5 freeradius3-mod-eap-mschapv2 freeradius3-mod-eap-peap
sleep 3
opkg install freeradius3-mod-eap-pwd freeradius3-mod-eap-tls freeradius3-mod-eap-ttls freeradius3-mod-exec
sleep 3
opkg install  freeradius3-mod-expiration freeradius3-mod-expr freeradius3-mod-files freeradius3-mod-logintime
sleep 3
opkg install freeradius3-mod-mschap freeradius3-mod-pap freeradius3-mod-preprocess freeradius3-mod-radutmp
sleep 3
opkg install freeradius3-mod-realm freeradius3-mod-sql freeradius3-mod-sql-mysql freeradius3-mod-sqlcounter
sleep 3
opkg install freeradius3-mod-unix freeradius3-utils libfreetype wget-ssl curl unzip tar zoneinfo-asia
sleep 3
opkg install mariadb-server-base mariadb-server mariadb-client mariadb-server-extra mariadb-client-extra
sleep 3
eval $(opkg find php7* | sed 's/ - .*//' | sed 's/^/opkg install /')
sleep 3
eval $(opkg find freeradius3* | sed 's/ - .*//' | sed 's/^/opkg install /')
sleep 1
cd /www && mkdir push && cd /www/push
wget https://pear.php.net/go-pear.phar -O go-pera.php
sleep 1
php-cli go-pera.php /dev/null 2>&1
sleep 1

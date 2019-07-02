#!/bin/bash

if [ -z $SYSLOG_USERNAME ];then
    export SYSLOG_USERNAME=admin
fi
if [ -z $SYSLOG_PASSWORD ];then
    export SYSLOG_PASSWORD=password
fi

htpasswd -c -b /etc/nginx/.htpasswd $SYSLOG_USERNAME $SYSLOG_PASSWORD

cd /var/www
php7.2 -f create-user.php
chown www-data:www-data config.auth.user.php
#rm -f create-user.php
cd
service php7.2-fpm start
service supervisor start
sleep 9999
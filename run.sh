#!/bin/bash

service php7.2-fpm start
service supervisor start

/bin/bash -c "/usr/sbin/nginx -c /etc/nginx/nginx.conf"

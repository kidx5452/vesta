#!/bin/bash
export PATH=$PATH:/sbin

#Install git + phalcon
yum install git -y
yum install epel-release yum-utils -y
yum-config-manager --enable remi-php73
yum install php-devel -y
git clone https://github.com/phalcon/cphalcon.git -b 3.4.x /tmp/cphalcon
cd /tmp/cphalcon/build/
./install >> log
echo "extension=phalcon.so" > /etc/php.d/phalcon.ini
service php-fpm restart
service nginx restart

cd /tmp
git clone https://github.com/kidx5452/vesta.git vesta_tpl
cp /tmp/vesta_tpl/templates/* /usr/local/vesta/data/templates/web/nginx/php-fpm

#Install nodejs
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
yum install nodejs -y

#Install redis
yum install redis -y
yum install php-redis -y
service php-fpm restart
service nginx restart

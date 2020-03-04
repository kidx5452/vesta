#!/bin/bash
export PATH=$PATH:/sbin

#Install git
yum install git -y
yum update -y
yum install yum-utils -y
yum-config-manager --enable remi-php73
yum install php-devel -y
git clone https://github.com/phalcon/cphalcon.git -b 3.4.x /tmp/cphalcon
cd /tmp/cphalcon/build/
./install >> log
echo "extension=phalcon.so" > /etc/php.d/phalcon.ini
service php-fpm restart
service nginx restart

cd /tmp


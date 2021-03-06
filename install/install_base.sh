#!/bin/bash
export PATH=$PATH:/sbin

#Install git + phalcon
yum install git -y
yum install epel-release yum-utils -y
yum-config-manager --enable remi-php73
yum install php-devel -y
yum --enablerepo=remi-php73 install -y php-phalcon3 php-redis
#git clone https://github.com/phalcon/cphalcon.git -b 3.4.x /tmp/cphalcon
#cd /tmp/cphalcon/build/
#./install >> log
#echo "extension=phalcon.so" > /etc/php.d/phalcon.ini


git clone https://github.com/kidx5452/vesta.git /tmp/vesta_tpl
\cp /tmp/vesta_tpl/templates/* /usr/local/vesta/data/templates/web/nginx/php-fpm
rm -rf /tmp/vesta_tpl

#Install nodejs
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
yum install nodejs -y
#Install pm2
npm install -g pm2

#Install redis
yum install redis -y
service redis start
systemctl enable redis
service php-fpm restart
service nginx restart


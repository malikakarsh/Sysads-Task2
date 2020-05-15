#!/usr/bin/bash

a2dissite soldiers.io.conf
rm -r /var/www/soldiers.io/.htaccess

mkdir /var/www/complaints
cp /logo.png /index3.php /var/www/complaints
cp /logo.png /index3.php /commander.png /var/www
cp -r /var/www/soldiers.io/ChiefCommander/. /var/www/complaints
rm -r /var/www/soldiers.io/ChiefCommander


cp /complaints.conf /etc/apache2/sites-available

cat /htaccess2 > /var/www/.htaccess

a2ensite complaints.conf
service apache2 restart

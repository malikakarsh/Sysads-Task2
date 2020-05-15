#!/usr/bin/bash

service apache2 stop
a2dissite 000-default.conf
mkdir -p /var/www/soldiers.io/{ArmyGeneral,NavyMarshal,AirForceChief,ChiefCommander}
cp /soldiers.io.conf /etc/apache2/sites-available
echo "127.0.0.1 soldiers.io" >> /etc/hosts
a2enmod rewrite
cat /htaccess1 > /var/www/soldiers.io/.htaccess
cp /commander.png /logo.png /var/www/soldiers.io/ChiefCommander
cat /index2.html > /var/www/soldiers.io/ChiefCommander/index.html

sed 's/USERNAME/ArmyGeneral/; s/DIVISION/Army/; s/COMMANDO/ChiefCommander/' /index.html > /var/www/soldiers.io/ArmyGeneral/index.html
cp /logo.png /soldier.png /var/www/soldiers.io/ArmyGeneral

sed 's/USERNAME/NavyMarshal/; s/DIVISION/Navy/; s/COMMANDO/ChiefCommander/' /index.html > /var/www/soldiers.io/NavyMarshal/index.html
cp /logo.png /soldier.png /var/www/soldiers.io/NavyMarshal

sed 's/USERNAME/AirForceChief/; s/DIVISION/AirForce/; s/COMMANDO/ChiefCommander/' /index.html > /var/www/soldiers.io/AirForceChief/index.html
cp /logo.png /soldier.png /var/www/soldiers.io/AirForceChief

for i in {1..50}
do
    mkdir -p /var/www/soldiers.io/{Army$i,Navy$i,AirForce$i}
    sed "s/USERNAME/Army$i/; s/DIVISION/Army/; s/COMMANDO/ArmyGeneral/;" /index.html > /var/www/soldiers.io/Army$i/index.html
    cp /logo.png /soldier.png /var/www/soldiers.io/Army$i
    
    sed "s/USERNAME/Navy$i/; s/DIVISION/Navy/; s/COMMANDO/NavyMarshal/;" /index.html > /var/www/soldiers.io/Navy$i/index.html
    cp /logo.png /soldier.png /var/www/soldiers.io/Navy$i
    
    sed "s/USERNAME/AirForce$i/; s/DIVISION/AirForce/; s/COMMANDO/AirForceChief/;" /index.html > /var/www/soldiers.io/AirForce$i/index.html
    cp /logo.png /soldier.png /var/www/soldiers.io/AirForce$i
done

a2ensite soldiers.io.conf
service apache2 restart

echo "Sites ACTIVE!"
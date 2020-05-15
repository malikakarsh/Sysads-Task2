#!/usr/bin/bash

mysql -uroot -pPASSWORD -e "create user 'ChiefCommander'@'localhost' identified by 'ChiefCommander';"
mysql -uroot -pPASSWORD -e "create database DATA;"
mysql -uroot -pPASSWORD -e "grant all on DATA.* to 'ChiefCommander'@'localhost';"
mysql -uroot -pPASSWORD -e "exit;"
mysql -uChiefCommander -pChiefCommander -e "use DATA; create table complaint( id int(255) auto_increment not null primary key, name varchar(255) not null, complain varchar(500) not null, time varchar(255) not null );"
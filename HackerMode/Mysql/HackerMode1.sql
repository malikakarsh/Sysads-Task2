CREATE DATABASE DATA;
GRANT ALL ON DATA.* TO 'ChiefCommander'@'db';
USE DATA;
CREATE TABLE complaint ( 
id int(255) auto_increment not null primary key, 
name varchar(255) not null, complain varchar(500) not null, 
time varchar(255) not null 
);
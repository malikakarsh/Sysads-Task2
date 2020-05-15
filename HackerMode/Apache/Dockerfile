FROM php:7.4.5-apache

RUN apt-get update && apt-get upgrade -y

RUN docker-php-ext-install mysqli

COPY . /

RUN chmod 770 /SubTask1.sh /ReverseProxy.sh

RUN cd / && bash SubTask1.sh


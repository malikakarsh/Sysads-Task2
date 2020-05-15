FROM ubuntu

RUN apt-get update

RUN apt-get install -y nano && \
	apt-get install -y man-db && \
	apt-get install -y cron

COPY . /

RUN chmod 770 /Bashrc.sh /cronalias.sh

RUN ./Bashrc.sh && ./Task1.sh && ./Task2.sh && ./cronalias.sh




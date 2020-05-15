#!/usr/bin/bash


#NOTE RUN ALL THE TASKS IN AS 'root' USER
echo "alias userGenerate='/./Task1.sh'" >> ~/.bashrc
echo "alias permit='/./Task2.sh'" >> ~/.bashrc
echo "alias autoSchedule='/./Task3.sh'" >> ~/.bashrc
echo "alias attendance='/./Task4.sh'" >> ~/.bashrc
echo "alias record='/./Task5.sh'" >> ~/.bashrc
echo "alias finalattendance='/./Task6.sh'" >> ~/.bashrc
echo "alias nearest='/./Task7.sh'" >> ~/.bashrc

#Making the scripts executable!
chmod 770 /Task1.sh /Task2.sh /Task3.sh /Task4.sh /Task5.sh /Task6.sh /Task7.sh
#!/usr/bin/bash

#creating the user -ChiefCommander
useradd -m -s /usr/bin/bash ChiefCommander
echo "ChiefCommander:ChiefCommander" | chpasswd
chmod 700 /home/ChiefCommander

groupadd Navy
groupadd Army
groupadd AirForce

#creating the user -NavyMarshal,ArmyGeneral,AirForceChief
useradd -m -s /usr/bin/bash NavyMarshal -g Navy
echo "NavyMarshal:NavyMarshal" | chpasswd
chmod 770 /home/NavyMarshal
useradd -m -s /usr/bin/bash ArmyGeneral -g Army
echo "ArmyGeneral:ArmyGeneral" | chpasswd
chmod 770 /home/ArmyGeneral
useradd -m -s /usr/bin/bash AirForceChief -g AirForce
echo "AirForceChief:AirForceChief" | chpasswd
chmod 770 /home/AirForceChief

#Creating users soldiers
for i in {1..50}
do
    name1="Army$i"
    name2="Navy$i"
    name3="AirForce$i"
    useradd -m -s /usr/bin/bash $name1
    echo "$name1:$name1" | chpasswd
    chmod 770 /home/$name1
    useradd -m -s /usr/bin/bash $name2
    echo "$name2:$name2" | chpasswd
    chmod 770 /home/$name2
    useradd -m -s /usr/bin/bash $name3
    echo "$name3:$name3" | chpasswd
    chmod 770 /home/$name3
done    

echo "User accounts generated"
#!/usr/bin/bash

#appending the permissions to ChiefCommander
usermod -a -G Army,Navy,AirForce ChiefCommander

#changing the group of soldiers so that the repective sub-chiefs and the chiefcommander can only view it
for i in {1..50}
do
    name1="Army$i"
    name2="Navy$i"
    name3="AirForce$i"
    chgrp Army /home/$name1
    chgrp Navy /home/$name2
    chgrp AirForce /home/$name3
done

echo "Permissions Changed"

#adding the alias record to the respective troop chiefs .bashrc file
echo "alias record='/./Task5.sh'" >> /home/ArmyGeneral/.bashrc
echo "alias record='/./Task5.sh'" >> /home/NavyMarshal/.bashrc
echo "alias record='/./Task5.sh'" >> /home/AirForceChief/.bashrc
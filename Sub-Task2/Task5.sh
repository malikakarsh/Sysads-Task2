#!/usr/bin/bash

days=$(date --date="$1 day ago" "+%Y-%m-%d")
day=$(date --date="$1 day ago" "+%a")
if [ $1 -gt 7 ]
then
	echo "Invalid Choice"
else
	self=$(whoami)
	sed 's/+//; s/-06.00.00//' /attendance.log | awk -v days=$days -v day=$day -v self=$self '
    BEGIN {print "Day="day,"Date="days }
	{
		if (days==$1 && self == "ArmyGeneral" && $2 ~ "Army") { print $2"\t"$3; }
		else if (days==$1 && self == "NavyMarshal" && $2 ~ "Navy") { print $2"\t"$3; }
		else if (days==$1 && self == "AirForceChief" && $2 ~ "AirForce") { print $2"\t"$3; }
	}'
fi
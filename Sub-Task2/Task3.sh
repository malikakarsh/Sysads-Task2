#!/usr/bin/bash

month=$(date --date="today" "+%m")
day=$(date --date="today" "+%d")

if [ -f /home/Army1/post_allotted.txt ]
then
	sed 's/+//; s/-00.00.00//; s/-/ /g' /position.log | awk -v month=$month -v day=$day '
	{
        if ( month == $2 && day == $3 ) {print $1"-"$2"-"$3,$5" "$6 >> "/home/"$4"/post_allotted.txt"}	
	} '
else
	sed 's/+//; s/-00.00.00//; s/-/ /g' /position.log | awk -v month=$month -v day=$day '
	{
        if ( $2 < month ){print $1"-"$2"-"$3,$5" "$6 >> "/home/"$4"/post_allotted.txt"}
        else if ( $2 == month && $3 <= day ){print $1"-"$2"-"$3,$5" "$6 >> "/home/"$4"/post_allotted.txt"}
	} '
fi
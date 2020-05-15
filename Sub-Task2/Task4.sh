#!/usr/bin/bash

month=$(date --date="today" "+%m")
day=$(date --date="today" "+%d")

if [ -f /home/ArmyGeneral/attendance_record.txt ]
then
    sed 's/+//; s/-06.00.00//; s/-/ /g' /attendance.log | awk -v month=$month -v day=$day '
    {
        if ( $2 == month && $3 == day && $5=="YES" && $4 ~ "Army"){print $1"-"$2"-"$3"\t"$4 >> "/home/ArmyGeneral/attendance_record.txt"}
        else if ( $2 == month && $3 == day && $5=="YES" && $4 ~ "Navy"){print $1"-"$2"-"$3"\t"$4 >> "/home/NavyMarshal/attendance_record.txt"}
        else if ( $2 == month && $3 == day && $5=="YES" && $4 ~ "AirForce"){print $1"-"$2"-"$3"\t"$4 >> "/home/AirForceChief/attendance_record.txt"}
    }'
else
    sed 's/+//; s/-06.00.00//; s/-/ /g' /attendance.log | awk -v month=$month -v day=$day '
    {
        if ( $2 < month && $5=="YES" && $4 ~ "Army"){print $1"-"$2"-"$3"\t"$4 >> "/home/ArmyGeneral/attendance_record.txt"}
        else if ( $2 == month && $3 <= day && $5 == "YES" && $4 ~ "Army"){print $1"-"$2"-"$3"\t"$4 >> "/home/ArmyGeneral/attendance_record.txt"}
        else if ( $2 < month && $5=="YES" && $4 ~ "Navy"){print $1"-"$2"-"$3"\t"$4 >> "/home/NavyMarshal/attendance_record.txt"}
        else if ( $2 == month && $3 <= day && $5 == "YES" && $4 ~ "Navy" ){print $1"-"$2"-"$3"\t"$4 >> "/home/NavyMarshal/attendance_record.txt"}
        else if ( $2 < month && $5=="YES" && $4 ~ "AirForce"){print $1"-"$2"-"$3"\t"$4 >> "/home/AirForceChief/attendance_record.txt"}
        else if ( $2 == month && $3 <= day && $5 == "YES" && $4 ~ "AirForce"){print $1"-"$2"-"$3"\t"$4 >> "/home/AirForceChief/attendance_record.txt"}
    }'
fi
#!/usr/bin/bash

month=$(date --date="today" "+%m")
day=$(date --date="today" "+%d")

if [ -f /home/ChiefCommander/attendance_report.txt ]
then
    sed 's/+//; s/-06.00.00//; s/-/ /g' /attendance.log | awk -v month=$month -v day=$day '
    {
    if ( month == $2 && day == $3 ){ print $1"-"$2"-"$3,$4,$5 >> "/home/ChiefCommander/attendance_report.txt"}
    }'
else
    sed 's/+//; s/-06.00.00//; s/-/ /g' /attendance.log | awk -v month=$month -v day=$day '
    {
    if ( $2 < month ){ print $1"-"$2"-"$3,$4,$5 >> "/home/ChiefCommander/attendance_report.txt"}
    else if ( $2 == month && $3 <= day ){ print $1"-"$2"-"$3,$4,$5 >> "/home/ChiefCommander/attendance_report.txt"}
    }'
fi
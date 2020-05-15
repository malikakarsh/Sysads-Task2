#!/usr/bin/bash

crontab -l >crontask
#Running the alias autoSchedule at 12 am everyday
echo "0 0 * * * bash -ic "autoSchedule"" >> crontask
#Running the alias attendance at 6 am everyday
echo "0 6 * * * bash -ic "attendance"" >> crontask
#Running the alias finalattendance at 12 am everyday
echo "0 0 * * * bash -ic "finalattendance"" >> crontask
#Running the alias nearest at 12 am everyday
echo "0 0 * * * bash -ic "nearest"" >> crontask

crontab crontask
rm crontask

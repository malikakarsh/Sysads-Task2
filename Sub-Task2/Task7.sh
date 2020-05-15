#!/usr/bin/bash

day=$(date --date="today" "+%d")
month=$(date --date="today" "+%m")
today=$(date --date="today" "+%Y-%m-%d")

sed 's/+//; s/-00.00.00//; s/-/ /g; s/N°//; s/E°//' /position.log | awk -v day=$day -v month=$month '
{
cn=28.7041
ce=77.1025
if (month == $2 && day == $3){
square=((cn - $5)*(cn - $5) + (ce - $6)*(ce - $6))
root=sqrt(square)
print root,$4,"°"$5,"°"$6 >> "/home/ChiefCommander/nearest.txt";
}
} '
    
sort -n /home/ChiefCommander/nearest.txt  >> /home/ChiefCommander/nearest1.txt
awk -v today=$today 'BEGIN {i=0}
{
if (i < 10) {print today,$2,$3,$4 >> "/home/ChiefCommander/nearest10.txt";
i++}
else {
print "--x--x--x--x--x--x--x--x--x--x--x--x--" >> "/home/ChiefCommander/nearest10.txt";
exit;}
} ' /home/ChiefCommander/nearest1.txt

rm -r /home/ChiefCommander/nearest.txt
rm -r /home/ChiefCommander/nearest1.txt
#you need to initially remove header line from csv file to function properly
#usage: bash question2script.sh filename

echo "highest earner in $1"
sort -k4,4n -t , $1 | tail -n 1 | cut -d , -f 1,2,4
echo "lowest earner in $1"
sort -k4,4n -t , $1 | head -n 1 | cut -d , -f 1,2,4
echo "number females in top 10 earners"
sort -k4,4n -t , $1 | tail -n 10 >temporarYfile.csv
grep fe temporarYfile.csv | wc -l
rm temporarYfile.csv


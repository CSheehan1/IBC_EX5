#you need to intially remove header line from csv file to function properly
#usage: bash question3script.sh filename years_of_education1 years_of_education2

echo "difference between $3 and $2 years of education upon salary"
sort -k3,3n -t , $1 | cut -d , -f 3,4 > newwagesfile.csv
VAR2=$(grep $3, newwagesfile.csv | sort -k2,2n -t , | head -n 1 | cut -d , -f 2)
VAR3=$(grep $2, newwagesfile.csv | sort -k2,2n -t , | head -n 1 | cut -d , -f 2)
echo "$VAR2-$VAR3" | bc
rm newwagesfile.csv

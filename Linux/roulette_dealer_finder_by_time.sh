#!/bin/bash
date=$1
time=$2
dealerFileName="${date}_Dealer_schedule"
FILE="$dealerFileName"
if [ ! -f "$FILE" ]; then
    echo "$FILE does not exist."
else
sed -i -e '$a\' "$dealerFileName"
while read -r line; do
	timeFromLine=$(echo "$line" | awk '{print $1" "$2}')
	if [[  "$timeFromLine" == "$time"  ]]
	then 
		echo The dealers working on "$date" at "$time" are :::  " $(echo "$line" | awk '{print $3" "$4";" $5" "$6";" $7" "$8}')"
	fi	
done < "$dealerFileName"
fi

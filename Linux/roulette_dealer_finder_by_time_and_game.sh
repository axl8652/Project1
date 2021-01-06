#!/bin/bash
date=$1
time=$2
game=$3
dealerFileName="${date}_Dealer_schedule"
FILE="$dealerFileName"
if [ ! -f "$FILE" ]; then
    echo "$FILE does not exist."
else
sed -i -e '$a\' "$dealerFileName"
while read -r line; do
        timeFromLine=$(echo "$line" | awk '{print $1 " "$2}')
        if [[  "$timeFromLine" == "$time"  ]]
        then
               if [[ "$game" == "BlackJack" ]]
               then
                        echo The dealer working at this time :::  "$(echo "$line" | awk '{print $3" "$4}')"
                elif [[ "$game" == "Roullete" ]]
                then
                        echo The dealer working at this time :::  "$(echo "$line" | awk '{print $5" "$6}')"
                elif  [[ "$game" == "Texas_Hold_EM" ]]
                then
                        echo The dealer working at this time :::  "$(echo "$line" | awk '{print $7" "$8}')"
                fi
        fi
done < "$dealerFileName"
fi


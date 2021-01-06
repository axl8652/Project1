#!/bin/bash
fileWithTimeOfLosses=$1
dealerFileName=$2
sed -i -e '$a\' "$dealerFileName"
sed -i -e '$a\' "$fileWithTimeOfLosses"
while read -r line; do
	timeOfTheLoss=$( echo "$line" | awk '{print $1 $2}')
	while read -r dealerLine; do
		timeFromDealerFile=$(echo "$dealerLine" | awk '{print $1 $2}')
		if [[ "$timeOfTheLoss" == "$timeFromDealerFile" ]]
		then 
		echo "$dealerLine" | awk '{print $1" "$2" " $5" "$6}'  >> "${dealerFileName}_dealerInvolved"
		fi	
	done < "$dealerFileName"
done < "$fileWithTimeOfLosses"	



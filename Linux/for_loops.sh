#!/bin/bash
myCountries=('India' 'Canada' 'USA'  'Thailand' 'Germany')
for country in ${myCountries[@]}
do
	if [ $country = India ]
	then 
		echo $country is debatebly the best in Asia
	else 
		echo $country is supposedly the best in their continent
	fi
done
num=$(echo{0..9})
for number in ${num[@]}
do
	if [ $number = 3 ] || [ $number = 5 ] || [ $number = 7  ]
	then
		echo $number
	else
		echo no match	
	fi
done



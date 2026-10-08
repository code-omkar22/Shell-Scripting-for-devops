#!/bin/bash

#This is  a function 
check_result()
{
read -p "Enter yours Marks  :   " marks

if [[ $marks -ge 90 && $marks -le 100 ]]
then 
	echo " You got distinction"
elif [[ $marks -ge 80 && $marks -le 90 ]]
then 
	echo " you got first class "
elif [[ $marks -ge 65 && $marks -le 80 ]]
then 
	echo " you got secoond class"
elif [[ $marks -ge 35 && $marks -le 65 ]]
then 
	echo " You are pass "
else 
	echo " You are Failed and Study hard and again give the paper"
fi
}
check_result

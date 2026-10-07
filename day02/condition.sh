#!/bin/bash


<< identification
This is for voting purpose
identification

read -p " Check the age validity: " age
read -p " Above 18 age category you try to motivated people to vote best leader : " teenagers 
if [[ $age -ge 18 ]]
then 
	echo "you are eligible to voting"
elif [[ $teenagers -ge 100 ]]
then
	echo "you are best teenages abd resposible person from india"
else
	echo "you are Not eligible for voting because your age is under 18"
fi

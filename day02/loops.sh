#!/bin/bash

# This is while loop

<< task
$1 isargument 1 which is folder name
$2 is start range
$3is end range
task
for((num=$2 ; num<=$3; num++))
do
	mkdir "$1$num"
done

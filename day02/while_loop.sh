#!/bin/bash

num=0

while (( num <= 20 ))
do
    if (( num % 2 == 0 ))
    then
        echo "$num"
    fi

    ((num++))
done

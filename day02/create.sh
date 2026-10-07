#!/bin/bash

read -p "Enter username" username
echo "you Entered $username"

sudo useradd -m $username
echo " New User added"

read username 

echo "you enterred $username"
 echo "the character in $0 are :  $1"

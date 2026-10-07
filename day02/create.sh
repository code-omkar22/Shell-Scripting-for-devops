#!/bin/bash

read -p "Enter username" username
echo "you Entered $username"

sudo useradd -m $username
echo " New User added"

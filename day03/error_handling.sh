#!/bin/bash

create_directory(){
	mkdir demo1
}
if ! create_directory;
then
	echo " The code is being exited as the directory already exists"
	exit 1
fi
echo " This Should not work because the code is interrupted"
<< comment
error handling kaise karana he first me directory create second me (The code is being exited as the directory already exist)
ye print hoga lekin error nahi ayega that's called error handling
comment

#!/bin/bash

uid=$(awk '/^UID_MIN/{print $2}' /etc/login.defs)

if [ $uid == 1000 ]
   then
	users=$(awk '/10[0-9][0-9]/' /etc/passwd | awk -F':' '{print $1}')
	echo $users
elif [ $uid == 500 ]
    then
   	users=$(awk '/50[0-9]/' /etc/passwd | awk -F':' '{print $1}')
	echo $users
else
	echo "didn't work"
fi
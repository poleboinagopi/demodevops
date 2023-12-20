#!/bin/bash

USERNAME="testuser"
#echo "welcome to new user" > $USERNAME
if [ ! -f $USERNAME ]
then       	
  touch $USERNAME
  echo "welcome to new user " $USERNAME

else
  echo "user con't created" $USERNAME
fi
ls -l

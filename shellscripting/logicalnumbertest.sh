#!/bin/bash
###############################
#Purpose  : This program is for numbertest using passing by arguments and logical checks as well
#Version  : 1.0
#Owner	  : tk@keerthinag.com
#Input 	  : none 
#Output   : Displaying message on screen
###############################

NAME=$1
MARKS=$2
#Checking whethe user passed arguments or not
if [ "!$NAME" ]; then 
echo "Please enter the student name"
echo "Usage: $0 <Name>"
exit
fi

if [ "!$MARKS" ]; then 
echo "Please enter the student marks"
echo "Usage: $0 <Name> <Marks>"
exit
fi

if [ "$MARKS" -gt 65 ]; then
echo "Student Result : FIRST CLASS"
elif [ "$MARKS" -gt 55 ]; then
echo "Student Result : SECOND CLASS"
elif [ "$MARKS" -gt 45 ]; then
echo "Student Result : THIRD CLASS"
else
echo "Student Result : FAIL !!!!"
fi


#!/bin/bash
###############################
#Purpose  : This is the template to be used
#Version  : 1.0
#Owner	  : tk@keerthinag.com
#Input 	  : none 
#Output   : Displaying message on screen
###############################

MARKS=64

if [ "$MARKS" -gt 65 ]; then
echo "Student Result : FIRST CLASS"
elif [ "$MARKS" -gt 55 ]; then
echo "Student Result : SECOND CLASS"
elif [ "$MARKS" -gt 45 ]; then
echo "Student Result : THIRD CLASS"
else
echo "Student Result : FAIL !!!!"
fi


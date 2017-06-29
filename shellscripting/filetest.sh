#!/bin/bash
###############################
#Purpose  : This is to practice file test
#Version  : 1.0
#Owner	  : tk@keerthinag.com
#Input 	  : none 
#Output   : Printing a message on screen
###############################

#Clearing the screen
clear

#Checking whether file exists or not
if [ -f "/etc/passwd" ] ; then
echo "Yes, the file /etc/password exists"
fi

echo "" #Printing a blank line

#Checking whether user has read persmission on the given file
if [ -r "/etc/shadow" ] ; then
echo "Yes, the user has read permission on /etc/shadow"
else
echo "No, the user doesn't has read permission on /etc/shadow"
fi

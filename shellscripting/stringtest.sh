#!/bin/bash
###############################
#Purpose  : Priting you are on the root user or not
#Version  : 1.0
#Owner	  : tk@keerthinag.com
#Input 	  : none 
#Output   : Displaying message on screen
###############################

#The below will execute the command and assign the value to the variable
WHOAMI=`/usr/bin/whoami`

if [ "$WHOAMI" == "root" ]; then
echo "Yes, you are the root user"
else
echo "No, you are not the root user you are $WHOAMI user"
fi


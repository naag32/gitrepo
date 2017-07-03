#!/bin/bash
###############################
#Purpose  : To practice while as for loop 
#Version  : 1.0
#Owner	  : tk@keerthinag.com
#Input 	  : none 
#Output   : Displaying message on screen
###############################

COUNT=1
while [ "$COUNT" -le 10 ]
do
echo "The number count is "$COUNT""
COUNT=`expr "$COUNT" + 1`
done


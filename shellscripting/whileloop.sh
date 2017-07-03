#!/bin/bash
###############################
#Purpose  : To practice while loop 
#Version  : 1.0
#Owner	  : tk@keerthinag.com
#Input 	  : Asking user to add user  and exiting the script on user control
#Output   : Displaying message on screen
###############################

ANS="Y" #initialising condition

while [ "$ANS" == "Y" -o "$ANS" == "y" ]  #True logic block
do
echo "Please enter the username you wish to add: "
read OURUSER
./createuser.sh "$OURUSER"  
echo "Do you wish to add another user (y/n): "
read ANS
done



#!/bin/bash
###############################
#Purpose  : To create Users using shell scripting
#Version  : 1.0
#Owner	  : tk@keerthinag.com
#Input 	  : username should be your input
#Output   : Displaying successful user creation message on screen
###############################

MYUSER=$1

#To check whether user passing any value as argument
if [ ! "$MYUSER" ]; then
echo "Please enter the username to create"
echo "Usage: $0 <username>"
exit
fi

#To check whether user is on root to create user or not
WAI=`/usr/bin/whoami`
if [ "$WAI" != "root" ]; then
echo "You MUST MUST MUST be on superuser to create the user"
echo "Please try again with root user"
exit
fi

#To set the default password
MYPASS="redhat"

#To check whether the adding user exists or not
/usr/bin/id "$MYUSER"
if [ "$?" -eq "0" ]; then 
echo "Username:$MYUSER you are trying to add is already an existing user"
echo "Please try again with new username"
exit
fi

#Creating the user if the user is not available
/sbin/useradd "$MYUSER"
if [ "$?" -ne "0" ]; then
echo "User creation with Username:$MYUSER had a problem"
echo "UNSUCCESSFUL USER CREATION !!!!"
echo "Please try again"
exit 
fi

#Setting/Assigning MYPASS="redhat" variable to the newly created user
echo "$MYPASS" | /usr/bin/passwd --stdin "$MYUSER"
if [ "$?" -ne "0" ]; then 
echo "Setting Default Password Failed !!!!"
echo "Please try again"
else
echo "User created with $MYUSER and the default password set"
echo "Please login with $MYUSER and change your password"
echo "--------------END--------------"
exit
fi 


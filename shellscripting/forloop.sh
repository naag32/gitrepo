#!/bin/bash
###############################
#Purpose  : To practice for loops 
#Version  : 1.0
#Owner	  : tk@keerthinag.com
#Input 	  : taking usernames from file user_list and creating users
#Output   : messages to be printed accordingly
###############################

FILE_NAME=$1
#already created a file user_list with usernames
#we need to pass that file as argument value to this program
if [ ! -f "$FILE_NAME" ]; then
echo "Please give correct file name !!"
echo "Usage: $0 <filename>"
exit
fi

#creating users from file using createuser.sh program in this script
for OURUSER in `cat $FILE_NAME`
do 
./createuser.sh "$OURUSER"
done



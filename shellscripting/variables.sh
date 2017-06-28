#!/bin/bash
###############################
#Purpose  : This is to define variables
#Version  : 1.0
#Owner	  : tk@keerthinag.com
#Input 	  : none
#Output   : none
###############################

#Clearing the screen
clear

#Reading the variable value from command line
echo " The value of COMPNAME from command line is $COMPNAME"

#Reading the variable value from the shell script
COMPNAME=ibm
echo " The value of COMPNAME from shell script is $COMPNAME"

#Reading the variable value as user defined ones
echo "Please enter a value for COMPNAME:"
read COMPNAME
echo " The value of COMPNAME as defined by user is $COMPNAME"

#Learning/Understanding the difference between '(SingleQuote),"(DoubleQuote), `(Backtick) and \(Escape Character)
COMMAND1=date
echo "The value of \$COMMAND1 in SingleQuote is \$COMMAND1"
echo "The value of \$COMMAND1 in DoubleQuote is $COMMAND1"
echo "The value of \$COMMAND1 in BackTick is `$COMMAND1`"

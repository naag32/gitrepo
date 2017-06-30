#!/bin/bash
############################
#Purpose        : To learn Shell Scripting
#Version        : 1.0
#Owner          : tk
#Input          : None
#Output         : None
#############################

STNAME=$1
STMARKS=$2

#To check whether user passed any value as argument
if [ ! "$STNAME" ]; then
echo "Please enter a student name and student marks"
echo "Usage: $0 <studentname> <studentmarks>"
exit
fi

#To check whether user passed both the arguments or not
if [ ! "$STMARKS" ]; then
echo "You didn't enter studentmarks"
echo "Usage: $0 <studentname> <studentmarks>"
exit
fi

#Checking if the user passed valid marks or not
if [ "$STMARKS" -lt 0 -o "$STMARKS" -gt 100 ]; then
echo "Please enter marks between 0 to 100"
echo " -- Ending here --"
exit
fi

#Checking the grade of the student
if [ "$STMARKS" -ge 70 -a "$STMARKS" -le 100 ]; then
echo "Congratulations, You are awarded Distinction !!!!"
elif [ "$STMARKS" -ge 60 -a "$STMARKS" -lt 70 ]; then
echo "Congratulations, First Class"
elif [ "$STMARKS" -ge 50 -a "$STMARKS" -lt 60 ]; then
echo "Congratulations, Second Class"
elif [ "$STMARKS" -ge 40 -a "$STMARKS" -lt 50 ]; then
echo "Congratulations, Third Class"
else
echo "FAIL FAIL FAIL !!!!!"
exit
fi

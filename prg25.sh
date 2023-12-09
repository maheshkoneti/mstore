#!/bin/bash
#Demonistrate ! (not) logical operator
echo "0 --> true
1--> false"
read ch #read choice from keyboard. input either 0 or 1
#print 1 if 0 id entered
if [ $ch -eq 0 ]
then
    echo "you entered 0"
fi
if [ $ch -eq 1 ]
then
    echo "you entered 1"
fi
#end

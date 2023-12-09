#!/bin/bash
#demonstrate logical operators
# -a for and operator. you can also use && instead
# -o for or operator. you can also use || instead
# ! for Not
#obtain three numbers from command line. else read from the keyboard
if [ $# -ne 3 ]
then
    read -p "enter num1 value: " num1
    read -p "enter num2 value: " num2
    read -p "enter num3 value: " num3
else
    num1=$1
    num2=$2
    num3=$3
fi
#       if [ $num1 -gt $num2 -a $num1 -gt $num3 ]
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
    echo "$num1 is big"
else
    if [ $num2 -gt $num3 ]
    then
        echo  "$num2 is big"
    else
        echo "$num3 is big"
    fi
fi
#end of the comparison

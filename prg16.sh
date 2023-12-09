#!/bin/bash
echo "compare two numbers"
read -p "enter value of num1: " num1
read -p "enter value of num2: " num2
#
if [ $num1 -gt $num2 ]
 then
        echo "$num1 is grater than $num2"
else
        echo "$num1 is not greater than $num2"
fi
if test $num1 -lt $num2
 then
        echo "$num1 is less than $num2"
else
        echo "$num1 is not less than $num2"
fi

#end of the script

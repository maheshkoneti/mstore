#!/bin/bash
#
#comparing three numbers which one is greater than other numbers
read -p "enter first number: " num1
read -p "enter second number: " num2
read -p "enter third  number: " num3
#
if [ $num1 -gt $num2 ]
 then
        if [ $num1 -gt $num3 ]
        then
                echo "$num1 is grater than other numbers"
        fi
fi
 if [ $num2 -gt $num3 ]
   then
        echo "$num2 is greater than other numbers"
 else
        if [ $num3 -gt $num2 ]
         then
                echo "$num3 is greater than other numbers"
        fi
 fi
#end of the script

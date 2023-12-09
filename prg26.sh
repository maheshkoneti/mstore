#!/bin/bash
#
#Demonstrate and operator is "-a"
#if both conditions are true then the operator will results to true, else flse
#lets demonstrate this with three numbers comparison
echo "enter three numbers one after another"
read num1
read num2
read num3
if [ $num1 -gt $num2 -a $num1 -gt $num3 ]
then
    echo "$num1 is big"
elif [ $num2 -gt $num3 ]
then
    echo  "$num2 is big"
else
    echo "$num3 is big"
fi
#end of the comparison

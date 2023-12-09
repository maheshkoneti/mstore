#!/bin/bash
echo "compare two numbers"
read -p "enter value od num1: " num1
read -p "enterr value of num2: " num2
if test $num1 -gt $num2
then
  echo "$num1 is greater than $num2"
fi

if test $num1 -lt $num2
then
  echo "$num1 is less than $num2"
fi

if test $num1 -ge $num2
then
  echo "$num1 is greater than or equal to  $num2"
fi

if [ $num1 -le $num2 ]
then
  echo "$num1 is less than or equal to $num2"
fi

if [ $num1 -eq $num2 ]
then
  echo "both number are equal"
fi

if [ $num1 -ne $num2 ]
then
  echo "both are not equal"
fi
#end of the script

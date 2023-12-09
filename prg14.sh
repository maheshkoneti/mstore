#!/bin/bash
echo "compare two numbers"
read -p "enter value od num1: " num1
read -p "enterr value of num2: " num2
[ $num1 -gt $num2 ]
res=$?
echo "the result is $res"
#end

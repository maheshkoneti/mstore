#!/bin/bash
#Arithematic operations
#
read -p "enter value of num1: " num1
read -p "enter value of num2: " num2
#addition
echo "addition od num1 and num2 is"
expr $num1 + $num2
#res=$(expr $num1 + $num2)
#echo "addition of num1 and num2 is: $res"
#res=$[num1+num2]
#echo "addition of num1 and num2 is: $res"
#subtraction
echo "subtraction of num1 and num2 is: "
expr $num1  - $num2
#res=$(expr $num1 - $num2)
#echo "subtraction of num1 and num2 is: $res"
#res=$[num1-num2]
#echo "subtraction of num1 and num2 is: $res"
#multiplication
echo "multiplication of num1 and num2 is"
expr $num1 \* $num2
#res=$(expr $num1 \* num2)
#echo "multiplication of num1 and num2 is: $res"
#res=$[num1*num2]
#echo "multiplication of num1 and num2 is: $res"
#division
echo "division of num1 and num2 is"
expr $num1 / $num2
#res=$(expr $num1 / num2)
#echo "division of num1 and num2 is: $res"
#res=$[num1/num2]
#echo "division of num1 and num2 is: $res"
#module
echo "module of num1 and num2 is"
expr $num1 % $num2
#res=$(expr $num1 % num2)
#echo "module of num1 and num2 is: $res"
#res=$[num1%num2]
#echo "module of num1 and num2 is: $res"

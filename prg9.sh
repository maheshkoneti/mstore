#!/bin/bash
read -p "enter first numner: " num1
read -p "enter second numner: " num2
#here are arithematic operations
#addition
res=$[num1+num2]
#res=$($num1 + $num2)
#res=`$num1 + $num2`
echo "the addition is: $res"
#subtraction
res=$[num1-num2]
#res=$($num1 - $num2)
#res=`$num1 - $num2`
echo "the subtraction is: $res"
#multiplication
res=$[num1*num2]
#res=$($num1 \* $num2)
#res=`$num1 \* $num2`
echo "the multiplication is: $res"
#division
res=$[num1/num2]
#res=$($num1 / $num2)
#res=`$num1 / $num2`
echo "the division is: $res"
#module
res=$[num1%num2]
#res=$($num1 % $num2)
#res=`$num1 % $num2`
echo "the module is: $res"
#end

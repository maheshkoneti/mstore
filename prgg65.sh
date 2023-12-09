#!/bin/bash
#demonstrate arithmetic operations using functions
function add {
res=`expr $1 + $2`
echo $res
}
function sub {
res=`expr $1 - $2`
echo $res
}
function mul {
res=`expr $1 \* $2`
echo $res
}
function div {
res=`expr "scale=2;$1/$2"|bc`
echo $res
}
function modulus {
res=`expr $1 % $2`
echo $res
}
#main program begins here
echo "arithmetic operations"
if [ $# -eq 0 ]
then
    echo "provide first number:"
    read num1
    echo "provide second number:"
    read num2
else
    num=$1
    num=$2
fi
echo "the addition is :"
add $num1 $num2
echo "the substraction is :"
sub $num1 $num2
echo "the multiplication is :"
mul $num1 $num2
echo "the division is :"
div $num1 $num2
echo "the modulus is :"
modulus $num1 $num2
#end

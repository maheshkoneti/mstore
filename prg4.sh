#!/bin/bash
#perform aruthematic operations using expr keyword
#obtain operands from cmd line
#
echo "the given operands are : $@"
result=`expr $1 + $2`
echo "addition of $1 and $2 is: $result "
result=$(expr $1 - $2) #this is another way of working with cmd subtraction
echo "subtraction of $1 from $2 is: $result "
result=`expr $1 \* $2`
echo "multiplication of $1 and $2 is: $result "
result=`expr $1 / $2`
echo "division of $1 and $2 is: $expr $result"
result=`expr $1 % $2`
echo "module value  of $1 and $2 is: $result"
#end

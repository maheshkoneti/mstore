#!/bin/bash
#comparing two intergers
echo "enter three numbers one after an one in one line"
read a
read b
read c
if ((a>b)) && ((a>>c))
then
    echo "$a is large among $a $b $c"
elif ((b>c))
then
    echo "$b is large among $a $b $c"
else
    echo "$c is large among $a $b $c"
fi
#end

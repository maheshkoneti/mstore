#!/bin/bash
#
echo "color Numbers
  1 for Red
  2 for Blue
  3 for White
  4 for Green"
read -p "enter color number: " cn
if [ $cn -eq 1 ]
  then
     echo "1 for red"
#else + if is elif
elif [ $cn -eq 2 ]
  then
     echo " 2 for blue"
elif [ $cn -eq 3 ]
  then
     echo " 3 for White"
elif [ $cn -eq 4 ]
  then
     echo " 4 for Green"
elif [ $cn -gt 4 ]
  then
     echo "no color for this number"
fi

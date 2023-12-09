#!/bin/bash
#
echo "you are testing pre and post increment and decrement operators:-)"
echo -n "enter a number - value of x: "
read -p "enter value of x for post increment:" x #where x is a variable obtained its value from keyboard
echo "value after post increment of x by executing x++  is $[x++]" #((x++))
read -p "enter value of x for pre increment:" x
echo "value after pre increment of x by executing ++x  is $[++x]" #((++x))
read -p "enter value of x for post decrement:" x
echo "value after post decrement of x by executing x--  is $[x--]" #((x--))
read -p "enter value of x for pre decrement:" x
echo "value after pre decrement of x by executing --x  is $[--x]" #((--x))

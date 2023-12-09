#!/bin/bash
echo "enter var1 and var2"
read v1;read v2
opt=""
echo "enter arthimetci operator: +,-,* ; type e for exit"
read opt
case $opt in
1) echo `echo $v1 + $v2 | bc ` ;;
2) echo `echo $v1 - $v2 | bc ` ;;
3) echo `echo $v1 \* $v2 | bc ` ;;
4) exit ;;
*) echo "$opt is invalid operator.."
esac

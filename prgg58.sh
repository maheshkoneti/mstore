#!/bin/bash
#script to perform arthimetic operations
echo "enter var1 and var2:"
read v1;read v2
opt=""
select opt in + - \* e
do
#echo "you selected $opt"
case $opt in
 +) echo `echo $v1 + $v2|bc` ;;
 -) echo `echo $v1 - $v2|bc` ;;
 \*) echo `echo $v1 \* $v2|bc` ;;
 e) break ;;
 *) echo "$opt is invalid operator"
esac
done
#end

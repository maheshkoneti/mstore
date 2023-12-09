#!/bin/bash
if [ $# -eq 1 ]
then
    fname=$1
else
    read -p "provide the file name(absolute path):" fname
fi 
if [ -e $fname -a -f $fname ]
then
exec < $fname
c=0
while read myvar
do
  echo $myvar
  ((c++))
done
echo "there are $c lines in the given file"
else
echo "cant read the file $fname. the file $fname is invalid"
fi
#end

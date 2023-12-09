#!/bin/bash
if [ $# -eq 1 ]
then
    fname=$1
else
    read -p "provide the file name(absolute path):" fname
fi
exec < $fname
c=0
while read myvar
do
  echo $myvar
  ((c++))
done
echo "There are $c lines in the given file"
#end

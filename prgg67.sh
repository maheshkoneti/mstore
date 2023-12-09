#!/bin/bash
#read the file
function rfile() {
exec <$1
while read val
do
  echo $val
done
} #end of the rfile function
#main
read -p "enter the filename:" fname
if [ -e $fname ] && [ -f $fname ]
then
   rfile $fname
else
   echo "given file $fname is invalid"
fi
#end

#!/bin/bash
#for loop
count=0
for i in `ls /dev/sd?`
do
        echo $1
        ((count++))
done
echo "you have $count of sd blocks"
#end

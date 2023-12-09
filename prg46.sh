#!/bin/bash
#printing file content using for loop
for i in `cat /root/names.txt`
do
        echo $i
done

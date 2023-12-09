#!/bin/bash
#searching a file exists in this server or not
read -p "enter a file name: " fname
ls $fname >/dev/null 2>&1
res=$?
if [ $res -eq 0 ]
then
        echo "file $fname exists in this $(hostname) server"
else
        echo "file $fname dose not exist in this $(hostname) server"
fi
#end of the script

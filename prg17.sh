#!/bin/bash
#searching a user in /etc/passwords
read -p "enter user name: " uname
grep -w ^$uname /etc/passwd >/dev/null
res=$?
if [ $res -eq 0 ]
then
        echo "$uname is in this server $(hostname)"
else
        echo "$uname is not in this server $(hostname)"
fi

#end of the script

#!/bin/bash
#searching a user and finding that the user is locked or not
read -p "enter user name: " uname
grep -w ^$uname /etc/passwd >/dev/null
res=$?
if [ $res -eq 0 ]
then
        echo "the user is present in $(hostname) server"
        #grep -w ^$uname /etc/shadow | cut -f2 -d: | grep ^! > /dev/null 2>&1
        passwd -S $uname|grep locked >/dev/null 2>&1
        res=$?
        if [ $res -eq 0 ]
        then
            echo "$uname is locked"
        else
            echo "$uname is not locked"
        fi #inner if ends here
else
        echo "user is not present in the $(hostname) server"
fi #outer if ends here
#end of the script

#!/bin/bash
#searching a user in /etc/passwords
read -p "enter user name: " uname
grep -w ^$uname /etc/passwd >/dev/null
res=$?
if [ $res -eq 0 ]
then
        echo "$uname is in this server $(hostname)"
        echo "locking the user $uname"
        passwd -l $uname >/dev/null 2>&1
        res=$?
        if [ $res -eq 0 ]
        then
                echo "locking the user $uname is successful"
        else
                echo "locking the user $uname was unsuccessful....please contact the L2 team"
        fi #inner if ends here
else
        echo "$uname is not in this server $(hostname)"
fi #outer if ends here

#end of the script

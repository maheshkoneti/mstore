#!/bin/bash
#create a user and set the password from the keyboard. read user from command line
if [ $# -ne 1 ]
then
        echo " you entered invalid number of arguments.. usage $0 username"
else
        grep -w ^$1 /etc/passwd >/dev/null 2>&1
        if  (( $? != 0 ))
        then
                useradd $1
                echo "provide the passwd"
                read -sp pass
                echo "$pass" | passwd --stdin $1 > /dev/null 2>&1
        else
                echo "cant create user .... it exists .. Existing .."
        fi
fi
#end

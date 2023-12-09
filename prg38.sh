#!/bin/bash
if [ $# -ne 1 ]
then
        echo " you entered invalid number of arguments.. usage $0 Username"
else
        echo "Menu
        1. Add uer
        2. delete user
        3. List User Attributes
        4. exit
        Read you choice 1-4:"

read num
case $num in
1)
   grep -w ^$1 /etc/passwd >/dev/null 2>&1
        if [ $? -ne 0 ]
        then
                useradd $1
                echo "Provide the passwd:"
                read -sp pass
                echo "$pass" | passwd --stdin $1 > /dev/null 2>&1
        else
                echo "cant create user ... it exists....existing"
        fi
;;
2)
    grep -w ^$1 /etc/passwd >/dev/null 2>&1
        if [ $? -eq 0 ]
           then
                userdel -r $1
        else
                echo "cant delete a user ... it doesnot exists"
        fi
;;
3)
    grep -w ^$1 /etc/passwd >/dev/null 2>&1
        if [ $? -eq 0 ]
         then
                grep -w ^$1 /etc/passwd
                chage -l $1
        else
         echo "cant list user details....it doesnot exists..existing"
        fi
;;
4)
   echo "you have choosen exit opting...exiting.."
;;
*)
   echo "you have choosen invalid option.. exiting"
;;
esac
fi

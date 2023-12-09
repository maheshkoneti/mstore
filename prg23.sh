#!/bin/bash
#Find the fiven vg existing in the system. Read vg name from the cmd line
if [ $# -eq 0 ]
 then
        echo "you have not entered any arguments"
        echo "usage is $0 VGNAME"
        echo "try Again.... Exiting..."
else
   vgs|grep -w $1 > /dev/null 2>&1
   if [ $? -eq 0 ]
    then
        echo "the given vg $1 is existing in this system"
   else
        echo "this given $1 does not exist in this system"
   fi
fi

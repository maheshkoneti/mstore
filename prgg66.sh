#!/bin/bash
#check if the user is locked or not
function check {
   str=`grep $1 /etc/shadow | cut -d: -f2`
   echo $str | grep ^'!\$' > /dev/null
  if [ $? -eq 0 ]
    then
  echo "user $1 is locked"
    else
  echo "user $1 is not locked"
    fi
}
#end of the function check
#main shell script starts here
if [ $# -eq 0 ]
  then
  echo -n enter the username:
  read name
else
  name=$1
fi
grep -w ^$name /etc/shadow > /dev/null
if [ $? -eq 0 ]
then
  check $name
else
  echo "user $name not found in the system try with another user"
fi
#end

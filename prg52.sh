#!/bin/bash
#string comparisions in bash shell
# string1 = string2 : Test if both strings are equal
# string1 != string2 : Test if both strings are not w=equal
# string : will return true if string is not null
#-n string : returns true if string is not NULL and exists
#-z string : true if string is of zero length
echo "Enter your pass phrase:" $pass1
read -s pass1
echo "Enter your pass phrase again:" $pass2
read -s pass2
#now do the comparision
if [ $pass1 = $pass2 ]
then
  echo "Your pass phrase is success"
elif [ $pass1 != $pass2 ]
then
  echo "Your pass phrase doesnt match Try again"
fi
echo "The entered pass phrases are 1) $pass1 2) $pass2"
#End

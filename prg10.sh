#!/bin/bash
#Test given integegers which is greater.
#this is a new line one
#The following is a read statement.
read -p "Enater first number:" num1
read -p "Enter second number:" num2
echo "Given numbers are $num1 and $num2"
if test $num1 -gt $num2
then
   echo "$num1 is greater"
fi

if test $num1 -lt $num2
then
   echo "$num2 is greater"
fi

if test $num1 -eq $num2
then
  echo "Both the numebers are equal"
fi

if test $num1 -ne $num2
then
  echo "$num1 is not equal to $num2"
fi

if test $num1 -ge $num2
then
  echo "$num1 is greater or equal to $num2"
fi

if test $num1 -le $num2
then
  echo "$num1 is less than or equal to $num2"
fi
#End

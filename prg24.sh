#Demonstrate Arithematic expression with compound perenthesis
#!/bin/bash
read -p "enter num1 value: " num1
read -p "enter num2 value: " num2
## -gt >
## -lt <
## -ge >=
## -le <=
## -ne !=
## these symbols can be used in the compound style ((operaand operator operand))
#if ((num1>num2)) #if [ $num1 -gt $num2 ]
if ((num1>num2))
then
  echo "$num1 is big"
fi
if ((num1<num2))
then
  echo "$num1 is lower"
fi
if ((num1==num2))
then
  echo "both are equal"
fi
if ((num1>=num2))
then
  echo "$num1 is greater than or equal to $num2"
fi
if ((num1<=num2))
then
  echo "$num1 is less than or equal to $num2"
fi
if ((num1!=num2))
then
  echo "$num1 is not equal to $num2"
fi
#end

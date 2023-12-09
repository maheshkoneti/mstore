#!/bin/bash
#reading number from keyboard
read -p "enter the number:" n
i=1
while [ $i -le $n ]
 do
  echo $i
  ((i++)) #i is incremented by 1 for each iteration
done
#end

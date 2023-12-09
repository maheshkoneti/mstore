#!/bin/bash
#demonstrate until loop
#till condition becomes true, the loop will be execute.
count=1
until [ $count -gt 9 ]
do
  echo $count
  ((count++))
done
#end

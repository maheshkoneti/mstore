#!/bin/bash
#read variable till you hit enter key ie blank variable
v=1
while [ -n "$v" ]
do
  echo "enter the text. end with enter key"
  read v
  echo "you entered $v"
done
#End

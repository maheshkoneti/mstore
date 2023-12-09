#!/bin/bash
#read array value
#
read -p "enter value for x[0]:" x[0]
read -p "enter value for x[1]:" x[1]
read -p "enter value for x[2]:" x[2]
read -p "enter value for x[3]:" x[3]
read -p "enter value for x[4]:" x[4]
read -p "enter value for x[5]:" x[5]
read -p "enter value for x[6]:" x[6]
echo "give array x values are: ${x[@]}"
echo "the first value x[0] is: ${x[0]}"
echo "the last value x[6] is: ${x[6]}"
#end

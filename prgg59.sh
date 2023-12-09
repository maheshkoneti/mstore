#!/bin/bash
#demonstrating arrays in bash shell
declare -a a
a=(prudvi issac sarath arif sreenivas)
#print array values
#print the first value
echo "the first value of the array:"
echo ${a[0]}
echo "the fifth value of array:"
echo ${a[4]}
#to print the values
echo "the array is:"
echo ${a[@]}
#echo ${a[*]} #same as above line
#print number of values in the array
echo "the number of values in the array is:"
echo ${#a[@]}
#end

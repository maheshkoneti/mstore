#!/bin/bash
echo "you have entered $# number of arguments"
echo "the arguments are $*"
echo "the first argument is : $1"
echo "shifting by one"
shift 1
echo "no the positional parameters after shift: ${*}"
echo "the program name is: $0"
#end

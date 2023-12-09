#!/bin/bash
#demonstrate shell functions
#below is the function definition
function mycolor()
{
  echo "i am in mycolor function"
}
#end of function mycolor
#main script begins here
echo "this script using function.. calling function now.."
#call function by using its name
mycolor
mycolor
mycolor
mycolor
mycolor
echo "after calling function"
#end

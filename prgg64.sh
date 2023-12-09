#!/bin/bash
function colorme
{
 echo "in colorme function"
 echo $1
 return 55
}
#main program
echo "in main program"
colorme red
colorme blue 
colorme green
echo $? #this prints the function returned value.
echo "again in the program"
#end

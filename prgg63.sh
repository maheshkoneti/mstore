#!/bin/bash
#define the function
function colorme()
{
  echo "the color is $1"
}

#main function
echo "before calling the function"
#send positional parameters to colorme function
colorme red
colorme blue
colorme green
echo "after calling function"
#end

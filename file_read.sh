#!/bin/bash
c=0
exec < /etc/passwd
while read myvar
do
	echo $myvar
	((c++))
done
echo "there are $c lines in the given file"
#end

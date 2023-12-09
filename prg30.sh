#!/bin/bash
#read marks in 5 sybjects and calculate its average using bc cmnd"
#if not given inputs via cmnd line; program should exit prompting relavant message"
if [ $# -ne 5 ]
 then
        echo " invalid inputs
        usage is $0 marks1 marks2 marks3 marls4 marks5
        try again"
else
        echo "obtained marks are
        subject1: $1
        subject2: $2
        subject3: $3
        subject4: $4
        subject5: $5

        total Marks: `echo $1+$2+$3+$4+$5 | bc`
        Average is: `echo "scale=3;($1+$2+$3+$4+$5)/5" | bc`"
fi
#end of the script

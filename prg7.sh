#!/bin/bash
#demonstrating cmd substitution
echo "i am `whoami`"
echo "my login name is `logname`"
#or you can use below statement
echo "my login name is $(logname)"
echo " i am using $(uname) operating system"
#end of the program

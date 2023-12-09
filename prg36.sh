#!/bin/bash

echo -e "\t syatem info"
echo -e "\t-------"
echo "
        1. Dispaly your working kernel name
        2. display your shell name
        3. Login name
        4. Today date
        5. current working directory path"
echo -e " \t********** "
echo -n "enter your option:"
read n
case $n in
1) echo "working kernel name is $(uname)
        version is $(uname -r)"
        ;;
2) echo "working shell is $SHELL
        version is $BASH_VERSION"
        ;;
3) echo "my login name is $LOGNAME and loginid is $UID" ;;
4) echo "Today: `date +%D `" ;;
5) echo " `pwd` " ;;
6) echo "Sorry $n is invalid option..select from [1..5]"
esac

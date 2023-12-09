#!/bin/bash
#
echo "
1. solaris
2. aix
3. linux
4. unix
5. windows
6. macos
"
read -p "enter the os name: " os

case $os in
solaris)
        echo "you have solaris os"
        ;;
aix)
        echo "you have aix os"
        ;;
linux)
        echo "you have linux os"
        ;;
unix)
        echo "you have unix os"
        ;;
windows)
        echo "you have windows os"
        ;;
macos)
        echo "you have macos os"
        ;;
*)
        echo " you entered other than solaris,aix,linux,unix,windows,macos"
         ;;
esac

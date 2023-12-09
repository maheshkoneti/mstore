#!/bin/bash

echo "enter your name"
read name
case $name in
Sanjeevi|SANJEEVI|sanjeevi)
        echo "Entered was $name"
        ;;
*)
        echo " invalid name "
;;
esac

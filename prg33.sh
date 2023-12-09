#!/bin/bash
if [ $# -ne 2 ]
then
        echo "usage $0 num1 num2
        try again... "
else
        echo "
          ----------------
          MENU
          ----------------
          1. AND
          2. SUB
          3. MUL
          4. DIV
          5. MODULUS
          ----------------
          Choose choice: [1..5]:"
        read -p "enter the number:" num
        case $num in
        1)
          echo " `echo $1+$2 | bc `"
          ;;
        2)
          echo " `echo $1-$2 | bc `"
          ;;
        3)
          echo " `echo $1*$2 | bc `"
          ;;
        4)
          echo " `echo $1/$2 | bc `"
          ;;
        5)
          echo " `echo $1%$2 | bc `"
          ;;
        *)
          echo "invalid option"
          ;;
        esac #case ends here
fi

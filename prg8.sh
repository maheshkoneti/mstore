#!/bin/bash
#
read -p "enter a username to create:" user
useradd $user
read -sp "enter the password for the user $user: " pass
echo "$pass"|passwd --stdin $user >/dev/null 2>&1
#end

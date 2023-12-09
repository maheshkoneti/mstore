#!/bin/bash
#demonstrate shell script using file tests
read -p "Enter file name with absolute path:" fname
if [ -e $fname ] #outer if starts
then
echo "File exists"
#check if it is a file
if [ -f $fname ]
then
  echo "it is a file"
fi
#check if it is a directory
if [ -d $fname ]
then
  echo "its a directory"
fi
#check if its a softlink or symbolic link
if [ -L $fname ]
then
  echo "its symlink file"
fi 
#check it is having read permission
if [ -r $fname ]
then
  echo "read permission is enabled for owner"
fi
#check if it having write permission
if [ -w $fname ]
then
   echo "write permission is enabled for owner"
fi 
#check if its having execute permission
if [ -x $fname ]
then
   echo "execute permission is enabled for owner"
fi
#if SUID enabled ?
if [ -u $fname ]
then
   echo "set uid permission is enabled"
fi
#if SGID enabled ?
if [ -g $fname ]
then
   echo "set gid permission is enabled"
fi
#if sticky bit enbabled ?
if [ -k $fname ]
then
  echo "sticky bit permission is enabled"
fi
#if block special file
if [ -b $fname ]
then
  echo "its a block special file"
fi
#if character special file
if [ -c $fname ]
then
   echo "its a character special file"
fi
#if its a named pipe special device file?
if [ -p $fname ]
then
   echo "its a named pipe file"
fi
#if file size is greater than zero
if [ -s $fname ]
then
  echo "file exists and its size is greater than zero"
fi
else #This else belongs to outer if
echo "file not found"
fi #outer if closed
#End of the program

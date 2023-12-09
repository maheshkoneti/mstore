#!/bin/bash
#Creating multiple lvs in system with mkfs and mounting
for i in `seq 1 20`
do
  lvcreate -y -n imageslv0$i -L 64M images >/dev/null 2>&1
  if [ $? -eq 0 ]
   then
    mkdir -p /imagedir$i >/dev/null 2>&1
     if [ $? -eq 0 ]
      then
      mkfs.xfs /dev/images/imageslv0$i >/dev/null 2>&1
       if [ $? -eq 0 ]
        then
        echo "/dev/images/imageslv0$i   /imagedir$i     xfs     defaults        0 0" >> /etc/fstab
         if [ $? -eq 0 ]
          then
          mount /imagedir$i
           if [ $? -eq 0 ]
            then
             echo " filesystem /imagedir$i is mounted on /dev/images/imageslv0$i"
           fi
            else
                echo "cound not add entry in /etc/fstab for /imagedir$i"
           fi
          else
                echo "count not make mkfs on /dev/images/imageslv0$i"
          fi
         else
                echo "could not create direcotry /imagedir$i"
          fi
        else
                echo "could not  create logical volume imageslv0$i"
        fi
done
echo "the current state of filesystems are: "
df -h
#end

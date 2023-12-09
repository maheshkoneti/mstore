#!/bin/bash
#program to create vg
read -p "enter the disk you want to use(do not prefix with /dev. just provide disk name:" disk
if [ -e /dev/$disk -a -b /dev/$disk ]
then
	lsblk /dev/$disk
	read -p "choose the device from above list(do not include /dev in the disk name):" part
	if [ -b /dev/$part ]
	then 
	     echo "below are the volume group exists:"
	     vgs
	     read -p "enter a new volume group named to be created:" vgname
	     vgs|grep -w $vgname>/dev/null 2>&1
 	     if [ $? -ne 0 ]
	     then
             getvg=`pvs -o +vgname /dev/$part --no-heading --separator :| cut -f2 -d: `
	     if [ -z $getvg ]
	     then
	     	  pvcreate -f /dev/$part
		  if [ $? -ne 0 ]
		  then
		      echo "could not create a pv"
		      exit
		  fi
		  vgcreate -f $vgname /dev/$part > /dev/null 2>&1
		  if [ $? -ne 0 ]
		  then
		      echo "could not create vg"
		      exit
		  fi
	     else
	     echo "the given disk/partition is in used by other volume group $getvg"
	     exit
	     fi
	     fi #end of creation of pv and vg
	     read -p "enter lv name...:" lv
	     if [ -z $lv ]
	     then
	         echo "can not create lv .. please provide valid lv name"
		 exit
             fi
	     read -p "enter filesystem size in mb:" size
	     if [ -z $size ]
	     then 
	         echo "you have not provided lv size.. proceeding with 256MB"
		 size=256
	     fi
	     read -p "enter filesystem mount point:" mp
	     if [ -d $mp ]
	     then
	         echo "mounting point exists"
             else
	         mkdir -p $mp >/dev/null 2>&1
             fi
	     lvcreate -y -n $lv -L ${size}M $vgname /dev/$part > /dev/null 2>&1
	     if [ $? -eq 0 ]
	     then
	         mkfs.ext4 /dev/$vgname/$lv > /dev/null 2>&1
		 
             fi
	     grep $mp /etc/fstab > /dev/null 2>&1
	     if [ $? -eq 0 ]
	     then
	         echo "entry exists in /etc/fstab for $mp mount point .. skipping the mount"
		 mount -a
	     else
	         echo "/dev/$vgname/$lv 	$mp	ext4	defaults	0 0">>/etc/fstab
		 mount -a
	     fi	 
         else
	     echo "invalid device or partition selected.. return the program.. exiting"
         fi
      else
      echo "the disk is invalid.. exiting.."
fi

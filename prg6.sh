#!/bin/bash
#command subtitution
#
hname=$(hostname)
echo "host name is $hname"
usid=$(id -u db01)
echo "id of a user"
ndisk=$(ls -l /dev/sd?)
echo "number of disks $ndisk"

#!/bin/bash
echo "below are the volume group in the system - `hostname`"
vgs -o VG_NAME --noheading
read -p "enter an vg name from the above list to print lvs in it: " vgname
echo "logical volume in the sgiven $vgname are below:"
lvs $vgname --noheading -o LV_NAME
#end of the script

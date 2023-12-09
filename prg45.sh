#!/bin/bash
#counting vgs and lvs in this system
count=0 #vgcount sent to sero as initial value
for i in `vgs -o vgname --noheading`
do
        ((count++))
done
echo "there are $count volume groups in this system $(hostname)"
#print number of logical volumes. for every vg, get the lvs count
t=0 #total lv counts set to zero
for i in `vgs -o vgname --noheading`
do
  lcount=0 #lcount is to count number of lvs. set its initial value to zero
  for j in `lvs $i -o lvname --noheading` #for every vg, count number of lvs
  do
        ((lcount++))
done #inner loop ends here
echo "Found $lcount lvs in $i volume group"
t=`expr $t + $lcount`
#t=$lcount
done #outer loop ends here
echo "the number of total logical vlumes are $t"
#end of the script

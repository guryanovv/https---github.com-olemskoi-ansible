#! /bin/sh
dight=`sed -n /last_vm_number/p ~/ansible/host_vars/$1 | sed -e 's/^.\{16\}//'` 
let "next=dight+1" 
sed -i "s/last_vm_number: $dight/last_vm_number: $next/g" /home/ansible/selectel/ansibl_emg/host_vars/$1

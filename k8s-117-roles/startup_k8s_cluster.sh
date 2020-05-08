#!/bin/bash
if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi
for i in $(virsh list --all|grep ubuntu-lab-k8s-116 |gawk '{print $2}')
do 
  echo "Starting $i"
  virsh start $i
done

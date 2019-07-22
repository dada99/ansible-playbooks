#!/bin/bash
if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi
for i in $(virsh list --all|grep ubuntu-k8s|gawk '{print $2}')
do 
  echo "Starting $i"
  virsh start $i
done

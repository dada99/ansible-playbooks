awk '{ if($1 !~ /^\[/ && $1 !~ /^ansible/ ) {split($2,res,"="); print $1}}' inventory-k8s-new|xargs -n1 sudo virsh undefine
awk '{ if($1 !~ /^\[/ && $1 !~ /^ansible/ ) {split($2,res,"="); print $1" "res[2]"\n"}}' inventory-k8s-new|xargs -n2 sudo /home/dada99/workplace/kvm-install-vm/kvm-install-vm-1.sh 

awk '{ if($1 !~ /^\[/ ) {split($2,res,"="); print $1" "res[2]"\n"}}' inventory-k8s-new|xargs -n2 sudo ./kvm-install-vm-1.sh 

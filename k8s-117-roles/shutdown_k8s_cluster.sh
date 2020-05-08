#!/bin/bash
ansible -i inventory-k8s-116-3 all -m shell -a "poweroff" -b

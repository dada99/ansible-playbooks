#!/bin/bash
ansible -i inventory-k8s-20 all -m shell -a "poweroff" -b

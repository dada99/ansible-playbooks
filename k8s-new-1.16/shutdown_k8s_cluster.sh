#!/bin/bash
ansible -i inventory-k8s-new all -m shell -a "poweroff" -b

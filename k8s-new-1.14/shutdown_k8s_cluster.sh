#!/bin/bash
ansible -i inventory-k8s-new k8s-new -m shell -a "poweroff" -b

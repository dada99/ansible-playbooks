#!/bin/bash
ansible -i inventory-ceph all -m shell -a "poweroff" -b

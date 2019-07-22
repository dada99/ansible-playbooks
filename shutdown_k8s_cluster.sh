#!/bin/bash
ansible -i inventory k8s -m shell -a "poweroff" -b

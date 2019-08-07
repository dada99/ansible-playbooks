#!/bin/bash
ansible -i inventory all -m shell -a "poweroff" -b

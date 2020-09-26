#!/bin/bash
ansible-playbook overssh.yml  --extra-vars "host=elk"  --extra-vars "@vars/vars/config.json"
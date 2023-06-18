#!/bin/bash
# Needs: python3, pip, virtualenv
# git clone https://github.com/tbasset/ansible-role-mirror.git
cd ansible-role-mirror
git config pull.rebase false
git pull
virtualenv -p python3 .venv
.venv/bin/pip3 install -r requirement.txt
.venv/bin/ansible-playbook site.yml -K -v
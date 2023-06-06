# Ansible playbook to create mirrors
A collection of roles and a playbook that will create mirrors for various Linux distributions.
## Usage
Do all mirrors:
```bash
ansible-playbook site.yml 
```
```
## Initial setup
Create a virtualenv:
```bash
virtualenv -p python3 /tmp/venv
```

Install ansible and requirements:
```bash
# Either
/tmp/venv/bin/activate
pip install -r requirements.txt
# or
/tmp/venv/bin/pip install -r requirements.txt
```
Either activate the virtualenv or run `/tmp/venv/bin/ansible-playbook` directory to use.

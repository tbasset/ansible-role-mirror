# Ansible playbook to create mirrors
A collection of roles and a playbook that will create mirrors for various Linux distributions.

| /var/repos | mirrored repo |
|---|---|
| /var/repos/centos-7-os       | CentOS 7 OS |
| /var/repos/centos-7-updates  | CentOS 7 updates |
| /var/repos/centos-7-extras   | CentOS 7 extras |
| /var/repos/rocky-8-baseos    | Rocky Linux 8 BaseOS |
| /var/repos/rocky-8-appstream | Rocky Linux 8 AppStream |
| /var/repos/rocky-8-extras    | Rocky Linux 8 extras |
| /var/repos/debian            | Debian 11 (bullseye,bullseye-updates) |
| /var/repos/debian-security   | Debian 11 (bullseye-security) |
| /var/repos/hpelinux          | HPE Software Delivery Repository (Debian apt repo) |
| /var/repos/hwraid            | HWraid for GNU/Linux (Debian apt repo) (https://hwraid.le-vert.net/) |
| /var/repos/puppetlabs        | Puppetlabs (Debian apt repo) |
| /var/repos/foreman           | TheForeman (Debian apt repo) |

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

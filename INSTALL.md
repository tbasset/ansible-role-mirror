# Debian 11 (bullseye) install :
to install you need python3, pip, virtualenv

```bash
apt-get -qy install python3-pip virtualenv
```

create virtualenv

```bash
virtualenv -p python3 .venv
.venv/bin/pip3 install -r requirement.txt
```

run

```bash
.venv/bin/ansible-playbook site.yml -v
```

you'll need some APT Pinning for yum-utils to install (package broken since buster/oldstable)

```bash
cat > /etc/apt/sources.list <EOF
deb <http://ftp.fr.debian.org:80/debian> bullseye main
deb <http://ftp.fr.debian.org:80/debian> bullseye-updates main
deb <http://ftp.fr.debian.org:80/debian> buster main
deb <http://ftp.fr.debian.org:80/debian> buster-updates main
EOF
```

```bash
cat > /etc/apt/preferences <EOF
Package: *
Pin: release o=Debian,a=bullseye
Pin-Priority: 900
Package:*
Pin: release o=Debian,a=bullseye-updates
Pin-Priority: 900
Package: *
Pin: release o=Debian,a=buster
Pin-Priority: 890
Package:*
Pin: release o=Debian,a=buster-updates
Pin-Priority: 890
EOF
```

```bash
apt-get -qy update
apt-get -qy install debmirror
```

```bash
apt-get -qy install yum-utils createrepo rpm-common=4.14.2.1+dfsg1-1 rpm=4.14.2.1+dfsg1-1 rpm2cpio=4.14.2.1+dfsg1-1 debugedit=4.14.2.1+dfsg1-1
```

# to install you need python3, pip, virtualenv

```bash
apt-get -qy install python3-pip virtualenv
```

Create a virtualenv

```bash
virtualenv -p python3 .venv
.venv/bin/pip3 install -r requirement.txt
```

# to enable http_proxy

```bash
export http_proxy=<http://127.0.0.1:3128/>
export https_proxy=<http://127.0.0.1:3128/>
export HTTP_PROXY=<http://127.0.0.1:3128/>
export HTTPS_PROXY=<http://127.0.0.1:3128/>
```

# to run

```bash
.venv/bin/ansible-playbook site.yml -K -v
```

# for Debian 11 (bullseye) deployement :

some APT Pinning to fix yum-utils package broken since oldstable

```bash
cat > /etc/apt/sources.list <EOF
deb <http://ftp.fr.debian.org:80/debian> bullseye main
deb <http://ftp.fr.debian.org:80/debian> bullseye-updates main
deb <http://ftp.fr.debian.org:80/debian> buster main
deb <http://ftp.fr.debian.org:80/debian> buster-updates main
EOF
```

# you'll need some apt pinning for yum-utils to install
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
apt-get -qy update
apt-get -qy install debmirror
```

# then some version pinning for rpm rpm-common etc

```bash
apt-get -qy install yum-utils rpm-common=4.14.2.1+dfsg1-1 rpm=4.14.2.1+dfsg1-1 rpm2cpio=4.14.2.1+dfsg1-1 debugedit=4.14.2.1+dfsg1-1
```

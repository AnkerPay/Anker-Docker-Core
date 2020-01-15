# Anker-Docker-Core

## Quick Start (daemon/AnkerNode)
Connect to VPS 
if you don't have git on your VPS, install it first

##Ubuntu && Debian
```text
apt update
apt install git docker.io
```
##CentOS
```text
yum check-update
yum install -y git containerd.io yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install --nobest docker-ce -y
systemctl start docker
systemctl enable docker
firewall-cmd --permanent --zone=public --add-rich-rule='rule family=ipv4 source address=172.17.0.0/16 accept' && firewall-cmd --reload
```

Clone code to your VPS
```text
git clone https://github.com/AnkerPay/Anker-Docker-Core.git
cd Anker-Docker-Core
```
copy your anker.conf file
or edit exist

```text
nano anker.conf
```
`CTRL-o` - save file

`CTRL-x` - exit from nano

Node should be runing in NON-DAEMON mode. If in your config have line `daemon=1` you should delete it.

Build image and run container

##Ubuntu && Debian
```text
./build.sh
./run.sh
```

##CentOS
```text
./build-centos.sh
./run-centos.sh
```

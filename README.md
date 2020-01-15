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
yum install git
curl -fsSL https://get.docker.com/ | sh
systemctl start docker
systemctl enable docker
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
```text
./build.sh
./run.sh

./anker-cli.sh getinfo
```

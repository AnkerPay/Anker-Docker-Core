# Anker-Docker-Core

## Quick Start (daemon/AnkerNode)
Connect to VPS 
if you don't have git on your VPS, install it first
```text
apt install git docker.io
```

```text
git clone https://github.com/AnkerPay/Anker-Docker-Core.git
cd Anker-Docker-Core
```
copy your anker.conf file
or edit exist

```text
nano anker.conf
```
Build image and run container
```text
./build.sh
./run.sh

./anker-cli.sh getinfo
```

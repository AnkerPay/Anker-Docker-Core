#!/bin/bash

# Lets go for takeoff
ulimit -m unlimited
ulimit -v unlimited
ulimit -n 65536

cp /opt/anker/anker.conf /root/.anker/anker.conf
exec /opt/anker/ankerd

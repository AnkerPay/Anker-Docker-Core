#!/bin/bash

docker stop anker-core;
docker rm anker-core;

docker run \
  --name anker-core \
  --restart=always \
  -p 12365:12365 \
  -v ~/.anker:/root/.anker \
  -d \
  AnkerPay/anker-core:latest

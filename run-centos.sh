#!/bin/bash

docker stop anker-core;
docker rm anker-core;

docker run \
  --name anker-core \
  --restart=always \
  --network=host \
  -p 12365:12365 \
  -v ~/.anker:/root/.anker \
  -d \
  ankerpay/anker-core:latest

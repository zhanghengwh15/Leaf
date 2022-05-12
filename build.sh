#!/bin/bash
# 本地构建时可以使用该脚本
docker rmi leaf_server
docker build -t leaf_server .
docker image prune -f
echo build success!

# java
docker run -d --restart=always --name leaf-server -p 18801:8080 --net alibaba --ip 172.19.0.11  -e "JAVA_OPTS=-Xms256m -Xmx256m"  leaf_server:latest



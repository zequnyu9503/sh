#!/bin/bash
slaves=("node1" "node3" "node7" "node8" "node9" "node11")
path="/opt/service/zookeeper-3.5.5/bin/"

for slave in ${slaves[@]}
do
ssh root@${slave} "cd ${path} && sh zkServer.sh stop"
done
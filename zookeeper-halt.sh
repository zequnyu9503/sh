#!/bin/bash
slaves=("node6" "node7" "node8" "node9" "node10" "node11" )
path="/opt/service/zookeeper-3.5.8/bin/"

for slave in ${slaves[@]}
do
ssh root@${slave} "cd ${path} && sh zkServer.sh stop && rm -rf /opt/service/zookeeper-3.5.8/data/version-2"
done
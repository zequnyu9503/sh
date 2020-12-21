#!/bin/bash
slaves=("node1" "node7" "node8" "node9" "node10" "node11" "node12" "node13" "node14" "node15" )
path="/opt/service/zookeeper-3.4.14/bin/"

for slave in ${slaves[@]}
do
ssh root@${slave} "cd ${path} && sh zkServer.sh stop && rm -rf /opt/service/zoodir/version-2"
done
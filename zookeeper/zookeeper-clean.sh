#!/bin/bash
slaves=("node5" "node6" "node7" "node8" "node9" "node10")
path="/opt/service/zookeeper-3.5.5/zoodir"

for slave in ${slaves[@]}
do
ssh root@${slave} "cd ${path} && rm -rf version-2"
done
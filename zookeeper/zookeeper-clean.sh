#!/bin/bash
slaves=("node1" "node3" "node7" "node8" "node9" "node11")
path="/opt/service/zoodir/"

for slave in ${slaves[@]}
do
ssh root@${slave} "cd ${path} && rm -rf version-2"
done
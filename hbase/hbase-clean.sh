#!/bin/bash
slaves=("node1" "node6" "node7" "node8" "node9" "node11")
path="/opt/service/zookeeper-3.5.5/bin/"

for slave in ${slaves[@]}
do
ssh root@${slave} "rm -rf /opt/service/hbase-tmp/*; rm -f /opt/service/hbase-2.1.4/logs/*"
done
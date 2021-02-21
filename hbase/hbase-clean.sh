#!/bin/bash
slaves=("node1" "node3" "node7" "node8" "node9" "node11")

echo "node1 node3 node7 node8 node9 node11"
for slave in ${slaves[@]}
do
ssh root@${slave} "rm -rf /opt/service/hbase-tmp/*; rm -f /opt/service/hbase-2.1.4/logs/*"
done
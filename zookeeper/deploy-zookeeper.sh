#!/bin/bash
slaves=("node1" "node7" "node8" "node9" "node10" "node11" "node12" "node13" "node14" "node15" )
path="/opt/service/zookeeper-3.4.14/bin/"

for slave in ${slaves[@]}
do
scp -r root@node6:/opt/service/zookeeper-3.4.14 root@${slave}:/opt/service/
scp -r root@node6:/opt/service/zoodir root@${slave}:/opt/service/
done
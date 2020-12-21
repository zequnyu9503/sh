#!/bin/bash
slaves=("node1" "node7" "node8" "node9" "node10" "node11" "node12" "node13" "node14" "node15" )
path="/opt/service/hbase-2.3.3"

for slave in ${slaves[@]}
do
scp -r root@node6:/opt/service/hbase-2.3.3 root@${slave}:/opt/service/
done
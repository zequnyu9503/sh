#!/bin/bash
master="node6"
slaves=("node7" "node8" "node9" "node10" "node11")

for slave in ${slaves[@]}
do
  scp /opt/service/hbase-2.3.3-bin.tar.gz root@${slave}:/opt/service/
  ssh root@${slave} "cd /opt/service;rm -rf hbase-2.1.4;tar -zxf hbase-2.3.3-bin.tar.gz;rm -f hbase-2.3.3-bin.tar.gz"
done
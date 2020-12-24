#!/usr/bin/env bash

echo "依次启动HDFS,HBase, 不启动Zookeeper."
echo "主节点是node1"
echo "从节点是node7,node8,node9,node10,node11,node12,node13,node14,node15"

sh hadoop/hdfs-start.sh
sh hbase/hbase-start.sh
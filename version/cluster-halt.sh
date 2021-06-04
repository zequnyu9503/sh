#!/usr/bin/env bash

echo "依次关闭HBase,HDFS, 不关闭Zookeeper."
echo "主节点是node1"
echo "从节点是node7,node8,node9,node10,node11,node12,node13,node14,node15"
sh /opt/zequnyu/sh/hbase/hbase-halt.sh
sh /opt/zequnyu/sh/hadoop/hdfs-halt.sh

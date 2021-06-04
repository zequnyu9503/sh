#!/usr/bin/env bash
HADOOP_ROOT="/opt/service/hadoop-2.7.7"
ZOOKEEPER_ROOT="/opt/service/zookeeper-3.5.5"
HBASE_ROOT="/opt/service/hbase-2.1.4"
slaves=("node7" "node8" "node9" "node10" "node11" "node12" "node13" "node14" "node15")

for slave in ${slaves[@]}
 do
  # Hadoop.
  scp ${HADOOP_ROOT}/etc/hadoop/* root@${slave}:${HADOOP_ROOT}/etc/hadoop/
  scp ${HADOOP_ROOT}/sbin/hadoop-daemon.sh root@${slave}:${HADOOP_ROOT}/sbin/
  # Zookeeper.
  scp ${ZOOKEEPER_ROOT}/conf/* root@${slave}:${ZOOKEEPER_ROOT}/conf/
  # Hbase.
  scp ${HBASE_ROOT}/conf/* root@${slave}:${HBASE_ROOT}/conf/
 done
echo "分发完毕"
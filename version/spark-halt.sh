#!/usr/bin/env bash

# 关闭Spark集群主从节点和历史进程.

SPARK_HOME="/opt/service/spark/slidingwindow"

if [[ $(hostname) -eq "node6" ]];then
echo "Spark comes to a halt on Master node."
sh ${SPARK_HOME}/sbin/stop-master.sh
sh ${SPARK_HOME}/sbin/stop-slaves.sh
sh ${SPARK_HOME}/sbin/stop-history-server.sh
fi
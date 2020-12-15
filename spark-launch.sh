#!/usr/bin/env bash

# 启动Spark集群-全节点.

slaves=("node7" "node8" "node9" "node10" "node11")

MASTER_URL="spark://node6:7079"
SPARK_HOME="/opt/service/spark/slidingwindow"

if [[ $(hostname) = "node6" ]];then
echo "Launch SlidingWindow on Master node."
sh "${SPARK_HOME}/sbin/start-master.sh"

for slave in ${slaves[@]}
 do
  ssh "root@${slave}" sh "${SPARK_HOME}/sbin/start-slave.sh" -h ${slave} ${MASTER_URL}
 done
sh "${SPARK_HOME}/sbin/start-history-server.sh"
fi
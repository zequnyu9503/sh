#!/usr/bin/env bash
slaves=("node7 node8 node9 node10 node11")
# slaves=("node1 node7 node8 node9 node10 node11 node12 node13 node14 node15")
MASTER_URL="spark://node1:7079"
SPARK_HOME="/opt/service/spark/slidingwindow"
echo "关闭Workers"
for slave in ${slaves[@]}
 do
  printf "关闭 ${slave} 节点: "
  ssh "root@${slave}" sh "${SPARK_HOME}/sbin/stop-slave.sh"
 done

if [[ $(hostname) = "node1" ]];then
echo "关闭Master"
sh "${SPARK_HOME}/sbin/stop-master.sh"
sh "${SPARK_HOME}/sbin/stop-history-server.sh"
fi
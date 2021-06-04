#!/usr/bin/env bash
slaves=("node6 node7 node8 node9 node10")

MASTER_URL="spark://node5:7079"
SPARK_HOME="/opt/service/spark/slidingwindow"

echo "关闭Workers"
for slave in ${slaves[@]}
 do
  printf "关闭 ${slave} 节点: "
  ssh "root@${slave}" sh "${SPARK_HOME}/sbin/stop-slave.sh"
 done

if [[ $(hostname) = "node5" ]];then
echo "关闭Master"
sh "${SPARK_HOME}/sbin/stop-master.sh"
sh "${SPARK_HOME}/sbin/stop-history-server.sh"
fi
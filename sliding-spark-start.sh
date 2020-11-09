#!/usr/bin/env bash
slaves=("node7 node8")

MASTER_URL="spark://node6:7079"
SPARK_HOME="/opt/service/spark/slidingwindow"

if [[ $(hostname) = "node6" ]];then
echo "Launch sliding on Master node."
sh "${SPARK_HOME}/sbin/start-master.sh"

for slave in ${slaves[@]}
 do
  ssh "root@${slave}" sh "${SPARK_HOME}/sbin/start-slave.sh" -h ${slave} ${MASTER_URL}
 done
sh "${SPARK_HOME}/sbin/start-history-server.sh"
fi
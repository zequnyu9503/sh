#!/usr/bin/env bash
# slaves=("node7 node8 node9 node10 node11 node12 node13 node14 node15")
slaves=("node6 node7 node8 node9 node10")

MASTER_URL="spark://node5:7079"
SPARK_HOME="/opt/service/spark/slidingwindow"

if [[ $(hostname) = "node5" ]];then
echo "启动Master"
chmod 775 ${SPARK_HOME}/sbin/* ${SPARK_HOME}/bin/*
sh "${SPARK_HOME}/sbin/start-master.sh"
echo "启动Workers"
for slave in ${slaves[@]}
 do
   ssh "root@${slave}" "chmod 775 ${SPARK_HOME}/sbin/* ${SPARK_HOME}/bin/* "
   ssh "root@${slave}" "sh ${SPARK_HOME}/sbin/start-slave.sh -h ${slave} ${MASTER_URL}"
 done
sh "${SPARK_HOME}/sbin/start-history-server.sh"
fi
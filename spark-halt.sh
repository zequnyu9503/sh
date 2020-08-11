#!/usr/bin/env bash

SPARK_HOME="/opt/service/spark/spark-2.4.4"

if [[ $(hostname) -eq "node6" ]];then
echo "Spark comes to a halt on Master node."
sh ${SPARK_HOME}/sbin/stop-master.sh
sh ${SPARK_HOME}/sbin/stop-slaves.sh
sh ${SPARK_HOME}/sbin/stop-history-server.sh
fi
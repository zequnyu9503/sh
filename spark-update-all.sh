#!/usr/bin/env bash
slaves=("node7" "node8" "node9" "node10" "node11")

SPARK_HOME="/opt/service/spark/spark-2.4.4"

if [[ $(hostname) = "node6" ]];then
sh halt.sh
for slave in ${slaves[@]}
 do
  ssh "root@${slave}" "cd ${SPARK_HOME} && git pull && mvn clean install -DskipTests -pl core,assembly,examples" &
 done
wait
sh start.sh
fi


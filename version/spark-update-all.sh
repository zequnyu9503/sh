#!/usr/bin/env bash
slaves=("node6" "node7" "node8" "node9" "node10" "node11")
root="/opt/zequnyu/sh"

SPARK_HOME="/opt/service/spark/slidingwindow"

if [[ $(hostname) = "node6" ]];then
sh ${root}/spark-halt.sh

for slave in ${slaves[@]}
 do
  ssh "root@${slave}" "cd ${SPARK_HOME} && git pull && mvn -T 16 clean install -DskipTests -pl core,assembly,examples" &
 done
wait
sh ${root}/spark-launch.sh
fi


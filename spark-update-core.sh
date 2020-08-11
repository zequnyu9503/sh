#!/bin/bash
master="node6"
slaves=("node7" "node8" "node9" "node10" "node11" )

path="/opt/service/spark/spark-2.4.4"

for slave in ${slaves[@]}
do
    ssh root@${slave} "cd ${path} && git pull && mvn clean install -DskipTests -pl core,assembly" &
done
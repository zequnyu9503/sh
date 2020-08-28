#!/usr/bin/env bash
slaves=("node6" "node7" )

path="/opt/service/spark/slidingwindow"

for slave in ${slaves[@]}
do
    ssh root@${slave} "cd ${path} && git pull && mvn clean install -DskipTests -pl core,assembly" &
done
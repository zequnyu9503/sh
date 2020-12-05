#!/usr/bin/env bash
path="/opt/service/spark/slidingwindow"
slaves=("node6 node9 node10 node11")

echo "更新node6 node9 node10 node11"
echo "只更新Core, Assembly"

for slave in ${slaves[@]}
 do
  ssh root@${slave} "cd ${path};git pull;mvn clean install -DskipTests -pl core,assembly" &
 done
wait
echo "更新完毕"
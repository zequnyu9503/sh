#!/usr/bin/env bash
path="/opt/service/spark/slidingwindow"
slaves=("node1 node7 node8 node9 node10 node11 node12 node13 node14 node15")

echo "node1 node7 node8 node9 node10 node11 node12 node13 node14 node15"
echo "只更新Core, Assembly"

for slave in ${slaves[@]}
 do
  ssh root@${slave} "cd ${path};git reset --hard;git pull;mvn clean install -DskipTests -pl core,assembly" &
 done
wait
echo "更新完毕"
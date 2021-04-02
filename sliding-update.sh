#!/usr/bin/env bash
path="/opt/service/spark/slidingwindow"
slaves=("node5 node6 node7 node8 node9 node10")

echo "只更新Core, Assembly"

for slave in ${slaves[@]}
 do
  ssh root@${slave} "cd ${path}; git pull; mvn clean install -DskipTests -pl core,assembly" &
 done
wait
echo "更新完毕"

# git reset --hard
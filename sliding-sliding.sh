#!/usr/bin/env bash
path="/opt/service/spark/slidingwindow"
slaves=("node1")

echo "更新node1"
echo "只更新Sliding"

for slave in ${slaves[@]}
 do
  ssh root@${slave} "cd ${path};git pull;mvn clean install -DskipTests -pl sliding" &
 done
wait
echo "更新完毕"
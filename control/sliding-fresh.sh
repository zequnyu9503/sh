#!/usr/bin/env bash
path="/opt/service/spark/slidingwindow"
slaves=("node5 node6 node7 node8 node9 node10")

for slave in ${slaves[@]}
 do
  ssh root@${slave} "cd ${path}; git pull" &
 done
wait
echo "更新完毕"
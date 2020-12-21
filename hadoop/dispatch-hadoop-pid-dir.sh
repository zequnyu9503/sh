#!/usr/bin/env bash
path="/opt/service/hadoop-2.8.5/sbin/"
slaves=("node7" "node8" "node9" "node10" "node11" "node12" "node13" "node14" "node15")

for slave in ${slaves[@]}
 do
  ssh root@${slave} mkdir /opt/service/hadoop-pid-dir
  scp "${path}hadoop-daemon.sh" root@${slave}:${path}
 done
echo "更新完毕"
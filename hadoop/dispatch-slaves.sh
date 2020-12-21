#!/usr/bin/env bash
path="/opt/service/hadoop-2.8.5/etc/hadoop/"
slaves=("node7" "node8" "node9" "node10" "node11" "node12" "node13" "node14" "node15")

for slave in ${slaves[@]}
 do
  scp "${path}slaves" root@node${slave}:${path}
 done
echo "更新完毕"
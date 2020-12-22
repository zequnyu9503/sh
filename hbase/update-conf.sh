#!/usr/bin/env bash
path="/opt/service/hbase-2.3.3/conf/"
slaves=("node7" "node8" "node9" "node10" "node11" "node12" "node13" "node14" "node15")

for slave in ${slaves[@]}
 do
  scp "${path}*" root@${slave}:${path}
 done
echo "更新完毕"
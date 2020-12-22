#!/usr/bin/env bash
path="/opt/service/hbase-2.3.3/"
slaves=("node7" "node8" "node9" "node10" "node11" "node12" "node13" "node14" "node15")

for slave in ${slaves[@]}
 do
  scp -r "${path}conf" root@${slave}:${path}
 done
echo "更新完毕"
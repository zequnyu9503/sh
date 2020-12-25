#!/usr/bin/env bash
slaves=("node7" "node8" "node9" "node10" "node11" "node13" "node14" "node15")

for slave in ${slaves[@]}
 do
  scp /root/.bashrc root@${slave}:/root/
  ssh root@${slave} "source /root/.bashrc"
 done
echo "更新完毕"
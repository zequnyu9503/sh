#!/usr/bin/env bash
# mvn dependency:copy-dependencies -DoutputDirectory=./libs
cur_dir=$(pwd)
sh_dir="/opt/zequn/sh"
slaves=("node6 node9 node10 node11")

echo "更新node6 node9 node10 node11"
for slave in ${slaves[@]}
 do
  ssh "root@${slave}" cd ${sh_dir} && git pull
 done
echo "更新完毕"
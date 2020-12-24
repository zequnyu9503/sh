#!/usr/bin/env bash
ROOT="/opt/service"

echo "主节点是node1"
echo "从节点是node7,node8,node9,node10,node11,node12,node13,node14,node15"

slaves=("node1" "node7" "node8" "node9" "node10" "node11" "node12" "node13" "node14" "node15")

for slave in ${slaves[@]}
do
  if ssh root@${slave} "[ ! -d ${ROOT}/hbase-tmp ]"; then
      ssh root@${slave} "mkdir -p ${ROOT}/hbase-tmp"
    else
      ssh root@${slave} "rm -rf ${ROOT}/hbase-tmp/*"
  fi

  echo "${slave} 检查完毕."
done

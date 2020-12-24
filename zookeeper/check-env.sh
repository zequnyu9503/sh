#!/usr/bin/env bash
ROOT="/opt/service"

echo "主节点是node1"
echo "从节点是node7,node8,node9,node10,node11,node12,node13,node14,node15"

slaves=("node1" "node7" "node8" "node9" "node10" "node11" "node12" "node13" "node14" "node15")

for slave in ${slaves[@]}
do
  if ssh root@${slave} "[ ! -d ${ROOT}/zoodir ]"; then
      ssh root@${slave} "mkdir -p ${ROOT}/zoodir"
  fi

  ssh root@${slave} "rm -rf ${ROOT}/zoodir/*"

  if [ ${slave} = "node1" ]; then
    ssh root@${slave} "echo '0' > ${ROOT}/zoodir/myid"
  fi
  if [ ${slave} = "node7" ]; then
    ssh root@${slave} "echo '1' > ${ROOT}/zoodir/myid"
  fi
  if [ ${slave} = "node8" ]; then
    ssh root@${slave} "echo '2' > ${ROOT}/zoodir/myid"
  fi
  if [ ${slave} = "node9" ]; then
    ssh root@${slave} "echo '3' > ${ROOT}/zoodir/myid"
  fi
  if [ ${slave} = "node10" ]; then
    ssh root@${slave} "echo '4' > ${ROOT}/zoodir/myid"
  fi
  if [ ${slave} = "node11" ]; then
    ssh root@${slave} "echo '5' > ${ROOT}/zoodir/myid"
  fi
  if [ ${slave} = "node12" ]; then
    ssh root@${slave} "echo '6' > ${ROOT}/zoodir/myid"
  fi
  if [ ${slave} = "node13" ]; then
    ssh root@${slave} "echo '7' > ${ROOT}/zoodir/myid"
  fi
  if [ ${slave} = "node14" ]; then
    ssh root@${slave} "echo '8' > ${ROOT}/zoodir/myid"
  fi
  if [ ${slave} = "node15" ]; then
    ssh root@${slave} "echo '9' > ${ROOT}/zoodir/myid"
  fi
  echo "${slave} 检查完毕."
done

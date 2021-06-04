#!/usr/bin/env bash
ROOT="/opt/service"

echo "主节点是node1"

slaves=("node1" "node7" "node8" "node9" "node3" "node11")

for slave in ${slaves[@]}
do
  # 分发或更新HADOOP配置文件.
  scp /opt/service/hadoop-2.10.1/etc/hadoop/* root@${slave}:"/opt/service/hadoop-2.10.1/etc/hadoop/"


#  if ssh root@${slave} "[ ! -d ${ROOT}/namenode ]"; then
#      ssh root@${slave} "mkdir -p ${ROOT}/namenode"
#    else
#      ssh root@${slave} "rm -rf ${ROOT}/namenode/*"
#  fi
#
#  if ssh root@${slave} "[ ! -d ${ROOT}/datanode ]"; then
#      ssh root@${slave} "mkdir -p ${ROOT}/datanode"
#    else
#      ssh root@${slave} "rm -rf ${ROOT}/datanode/*"
#  fi
#
#  if ssh root@${slave} "[ ! -d ${ROOT}/hadoop-pid-dir ]"; then
#      ssh root@${slave} "mkdir -p ${ROOT}/hadoop-pid-dir"
#    else
#      ssh root@${slave} "rm -rf ${ROOT}/hadoop-pid-dir/*"
#  fi

  echo "${slave} 检查完毕."
done

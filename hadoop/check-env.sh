#!/usr/bin/env bash
ROOT="/opt/service"

echo "主节点是node1"
echo "从节点是node7,node8,node9,node10,node11,node12,node13,node14,node15"

slaves=("node1" "node7" "node8" "node9" "node10" "node11" "node12" "node13" "node14" "node15")

for slave in ${slaves[@]}
do
 ssh root@${slave} "if [ ! -d ${ROOT}/namenode ]; then mkdir -p ${ROOT}/namenode; else rm -rf ${ROOT}/namenode fi"
 ssh root@${slave} "if [ ! -d ${ROOT}/datanode ]; then mkdir -p ${ROOT}/datanode; else rm -rf ${ROOT}/datanode fi"
 ssh root@${slave} "if [ ! -d ${ROOT}/hadoop-pid-dir ]; then mkdir -p ${ROOT}/hadoop-pid-dir; else rm -rf ${ROOT}/hadoop-pid-dir fi"
 ssh root@${slave} "echo $(env | grep HADOOP)"
done
echo "检查完毕"

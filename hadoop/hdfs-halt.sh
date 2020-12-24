#!/usr/bin/env bash
path="/opt/service/hadoop-2.7.7/sbin/"

echo "主节点是node1"
echo "从节点是node7,node8,node9,node10,node11,node12,node13,node14,node15"
sh "${path}stop-dfs.sh"
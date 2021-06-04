#!/usr/bin/env bash
path="/opt/service/hadoop-2.10.1/sbin/"

echo "主节点是node5"
echo "从节点是node6,node7,node8,node9,node10"

sh "${path}start-dfs.sh"
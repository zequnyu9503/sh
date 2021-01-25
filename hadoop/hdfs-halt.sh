#!/usr/bin/env bash
path="/opt/service/hadoop-2.7.7/sbin/"

echo "主节点是node1"
sh "${path}stop-dfs.sh"
#!/usr/bin/env bash
path="/opt/service/hadoop-2.10.1/sbin/"

echo "主节点是node5"
sh "${path}stop-dfs.sh"
#!/usr/bin/env bash
hdfs dfs -getmerge /real-world/overlapped/2019-04-01.json 2019-04-01.json
hdfs dfs -getmerge /real-world/overlapped/2019-04-02.json 2019-04-02.json
hdfs dfs -getmerge /real-world/overlapped/2019-04-03.json 2019-04-03.json
hdfs dfs -getmerge /real-world/overlapped/2019-04-04.json 2019-04-04.json
hdfs dfs -getmerge /real-world/overlapped/2019-04-05.json 2019-04-05.json
hdfs dfs -getmerge /real-world/overlapped/2019-04-06.json 2019-04-06.json
hdfs dfs -getmerge /real-world/overlapped/2019-04-07.json 2019-04-07.json
hdfs dfs -getmerge /real-world/overlapped/2019-04-08.json 2019-04-08.json
hdfs dfs -getmerge /real-world/overlapped/2019-04-09.json 2019-04-09.json
hdfs dfs -getmerge /real-world/overlapped/2019-04-10.json 2019-04-10.json
echo "down ver"

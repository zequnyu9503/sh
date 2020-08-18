#!/bin/bash
store="/home/zc/yzq/downloads/twitter/data/2019-4/"
for file in $(ls ${store})
 do
  hdfs dfs -put ${store}${file} /real-world/
  echo ${file} has been uploaded onto hdfs.
  rm ${store}${file}
  done
echo "All files have been uploaded onto hdfs."

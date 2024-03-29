#!/bin/bash
store="/opt/zequnyu/tweet/2019-04/"
for file in $(ls ${store})
 do
  hdfs dfs -put ${store}${file} /real-world/backup/
  echo ${file} has been uploaded onto hdfs.
  rm ${store}${file}
  done
echo "All files have been uploaded onto hdfs."
#!/bin/bash

TARGET="/opt/zequnyu/task_event.csv"
if [ -f ${TARGET} ]; then
  echo "删除文件"
  rm -f ${TARGET}
fi

cd /opt/zequnyu/task_events
for file in $(ls ./)
do
  cat ${file} >> ${TARGET}
  printf "#"
done
hdfs dfs -put ${TARGET} /google/task_events/
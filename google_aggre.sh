#!/bin/bash

TARGET="/opt/zequnyu/task_event.csv"
if [ -f ${TARGET} ]; then
  rm -f ${TARGET}
fi

cd /opt/zequnyu/task_events
for file in $(ls ./)
do
  cat ${file} >> ${TARGET}
done
hdfs dfs -put ${TARGET} /google/task_events/
#!/bin/bash

TARGET="/opt/zequnyu/task_usage_all.csv"
if [ -f ${TARGET} ]; then
  echo "删除文件"
  rm -f ${TARGET}
fi

cd /opt/zequnyu/task_usage/
for file in $(ls ./)
do
  cat ${file} >> ${TARGET}
  printf "#"
done
echo "合并完成, 开始上传"
hdfs dfs -put ${TARGET} /google/task_usage/
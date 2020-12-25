#!/bin/bash
# 类名.
className=pers.yzq.spark.datasets.Google

if [ $(hadoop fs -test -e /google/new_task_events) ]; then
  hdfs dfs -rm -rf /google/new_task_events
fi

spark-submit \
--master spark://node1:7079 \
--executor-memory 24g \
--executor-cores 16 \
--driver-cores 16 \
--class ${className} \
/opt/service/spark/spark-app/target/spark-2.0.jar
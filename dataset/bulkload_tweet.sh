#!/bin/bash
libs_dir="hdfs://node5:9000/libs"
log_path="/opt/service/spark/slidingwindow/conf/log4j.properties"
target="/opt/service/spark/slidingwindow/sliding/target/sliding-2.4.4.jar"

spark-submit \
--master spark://node5:7079 \
--executor-memory 16g \
--executor-cores 16 \
--driver-cores 16 \
--driver-memory 16g \
--class pers.yzq.sliding.dataset.BulkLoad_Tweet \
--driver-java-options "-Dlog4j.configuration=file:${log_path}" \
--jars \
${libs_dir}/fastjson-1.2.35.jar, \
${libs_dir}/hbase-common-2.1.4.jar \
${target}
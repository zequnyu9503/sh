#!/usr/bin/env bash
libs_dir="hdfs://node1:9000/libs"
log_path="/opt/service/spark/slidingwindow/conf/log4j.properties"

spark-shell \
--master spark://node1:7079 \
--executor-memory 32g \
--executor-cores 32 \
--driver-cores 16 \
--driver-memory 32g \
--driver-java-options "-Dlog4j.configuration=file:${log_path}" \
--jars \
${libs_dir}/fastjson-1.2.35.jar \
${libs_dir}/guava-14.0.1.jar
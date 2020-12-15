#!/usr/bin/env bash
libs_dir="hdfs://node6:9000/libs"
log_path="/opt/service/spark/slidingwindow/conf/log4j.properties"
target="/opt/service/spark/slidingwindow/sliding/target/sliding-2.4.4.jar"
parameters="hdfs://node6:9000/real-world/2019-04-01.json"

spark-submit \
--master spark://node6:7079 \
--executor-memory 32g \
--executor-cores 16 \
--driver-cores 16 \
--driver-memory 16g \
--class pers.yzq.sliding.dataset.Tweet \
--driver-java-options "-Dlog4j.configuration=file:${log_path}" \
--jars \
${libs_dir}/fastjson-1.2.35.jar \
${target} ${parameters}
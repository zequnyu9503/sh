#!/usr/bin/env bash
libs_dir="hdfs://node6:9000/libs"
log_path="/opt/service/spark/spark-2.4.4/conf/log4j.properties"
target="/opt/service/spark/slidingwindow/sliding/target/sliding-2.4.4.jar"
parameters="hdfs://node6:9000/real-world/trips2019.csv bunch heuristic"

spark-submit \
--master spark://node6:7079 \
--executor-memory 32g \
--executor-cores 2 \
--driver-cores 16 \
--driver-memory 16g \
--class pers.yzq.sliding.debug.Function \
--driver-java-options "-Dlog4j.configuration=file:${log_path}" \
${target} ${parameters}
#!/usr/bin/env bash
libs_dir="hdfs://node6:9000/libs"
log_path="/opt/service/spark/slidingwindow/conf/log4j.properties"
target="/opt/service/spark/slidingwindow/sliding/target/sliding-2.4.4.jar"
parameters=("2019-04-01" "2019-04-02" "2019-04-03" "2019-04-04" "2019-04-05")

alias run="spark-submit --master spark://node6:7079 --executor-memory 32g --executor-cores 16 --driver-cores 16 --driver-memory 16g --class pers.yzq.sliding.dataset.Tweet --driver-java-options "-Dlog4j.configuration=file:${log_path}" --jars ${libs_dir}/fastjson-1.2.35.jar ${target}"

for file in ${parameters[@]}
do
  run "hdfs://node6:9000/real-world/${file}.json"
done
#!/usr/bin/env bash
libs_dir="hdfs://node1:9000/libs"
log_path="/opt/service/spark/slidingwindow/conf/log4j.properties"
target="/opt/service/spark/slidingwindow/sliding/target/sliding-2.4.4.jar"

# 进入工作目录
cd "/opt/zequnyu/tweet/"
days=$(seq -f "%02g" 2 30)
for day in ${days[@]}
do
# Spark作业
spark-submit \
--master spark://node1:7079 \
--executor-memory 32g \
--executor-cores 16 \
--driver-cores 4 \
--driver-memory 4g \
--class pers.yzq.sliding.dataset.Tweet_Format \
--driver-java-options "-Dlog4j.configuration=file:${log_path}" \
--jars \
${libs_dir}/fastjson-1.2.35.jar \
${target} ${day}

hdfs dfs -getmerge "/real-world/precise/2019-04-${day}.json" "2019-04-${day}.json"
hdfs dfs -rm -r "/real-world/precise/2019-04-${day}.json"
hdfs dfs -put "2019-04-${day}.json" "/real-world/precise/"
rm -rf "2019-04-${day}.json"
done
#!/usr/bin/env bash
libs_dir="hdfs://node5:9000/libs"
log_path="/opt/service/spark/slidingwindow/conf/log4j.properties"
target="/opt/service/spark/slidingwindow/sliding/target/sliding-2.4.4.jar"

spark-submit \
--master spark://node5:7079 \
--executor-memory 16g \
--executor-cores 16 \
--driver-cores 16 \
--driver-memory 12g \
--class pers.yzq.sliding.dataset.Tweet_Analysis \
--driver-java-options "-Dlog4j.configuration=file:${log_path}" \
--jars \
${libs_dir}/fastjson-1.2.35.jar,\
${libs_dir}/hbase-common-2.1.4.jar,\
${libs_dir}/hadoop-common-2.7.7.jar,\
${libs_dir}/hbase-client-2.1.4.jar,\
${libs_dir}/hbase-shaded-miscellaneous-2.1.0.jar,\
${libs_dir}/hbase-protocol-shaded-2.1.4.jar,\
${libs_dir}/hbase-shaded-protobuf-2.1.0.jar,\
${libs_dir}/hbase-shaded-netty-2.1.0.jar,\
${libs_dir}/hbase-protocol-2.1.4.jar,\
${libs_dir}/htrace-core4-4.2.0-incubating.jar,\
${libs_dir}/hbase-mapreduce-2.1.4.jar,\
${libs_dir}/hbase-server-2.1.4.jar,\
${libs_dir}/hbase-shaded-client-2.1.4.jar,\
${libs_dir}/hbase-zookeeper-2.1.4.jar \
${target} /opt/zequnyu/twitter_analysis.txt
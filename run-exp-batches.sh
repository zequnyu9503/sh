#!/usr/bin/env bash
libs_dir="hdfs://node1:9000/libs"
log_path="/opt/service/spark/slidingwindow/conf/log4j.properties"
target="/opt/service/spark/slidingwindow/sliding/target/sliding-2.4.4.jar"
slaves=("node3 node7 node8 node9 node11")

rm -f /opt/service/spark/slidingwindow/logs/fp*
for slave in ${slaves[@]}
 do
  scp root@${slave}:/opt/service/spark/slidingwindow/logs/fp.txt /opt/service/spark/slidingwindow/logs/fp_${slave}.txt
 done

#spark-submit \
#--master spark://node1:7079 \
#--executor-memory 32g \
#--executor-cores 1 \
#--driver-cores 2 \
#--driver-memory 16g \
#--class pers.yzq.sliding.exp.WordCountTweetOnHDFS_OS \
#--driver-java-options "-Dlog4j.configuration=file:${log_path}" \
#--jars \
#${libs_dir}/fastjson-1.2.35.jar \
#${target}

#spark-submit \
#--master spark://node1:7079 \
#--executor-memory 32g \
#--executor-cores 1 \
#--driver-cores 2 \
#--driver-memory 16g \
#--class pers.yzq.sliding.exp.WordCountTweetOnHDFS \
#--driver-java-options "-Dlog4j.configuration=file:${log_path}" \
#--jars \
#${libs_dir}/fastjson-1.2.35.jar \
#${target}

spark-submit \
--master spark://node1:7079 \
--executor-memory 32g \
--executor-cores 16 \
--driver-cores 8 \
--driver-memory 16g \
--class pers.yzq.sliding.verification.FIFOScheule \
--driver-java-options "-Dlog4j.configuration=file:${log_path}" \
--jars \
${libs_dir}/fastjson-1.2.35.jar \
${target}


spark-submit \
--master spark://node1:7079 \
--executor-memory 32g \
--executor-cores 16 \
--driver-cores 8 \
--driver-memory 16g \
--class pers.yzq.sliding.verification.FAIRSchedule \
--driver-java-options "-Dlog4j.configuration=file:${log_path}" \
--jars \
${libs_dir}/fastjson-1.2.35.jar \
${target}
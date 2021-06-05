#!/usr/bin/env bash
#
# SW-Spark系统: 支持RDD动态更新,支持数据预取,支持FIFO,FAIR,RANDOM,FIXED,SJF调度.
# HBASE依赖包存储于HDFS.

#
# Environment parameters.
#
home="/opt/service/spark/slidingwindow"
libs_dir="hdfs://node5:9000/libs"
log_path="${home}/conf/log4j.properties"
target="${home}/sliding/target/sliding-2.4.4.jar"
slaves=("node6 node7 node8 node9 node10")
#
# Runtime parameters.
#
prefetching_required="5"                    # 支持数据预取任务执行器的最小数量.
prefetching_manager_strategy="heuristic"    # 启发式搜索数据块放置方案(A*).
prefetching_mode="parallel"                 # 并发执行数据预取任务.
prefetching_manager_seriality="*"           # 预取控制器一次性部署所有数据预取任务(缺省).
prefetching_dependent="true"                # 任务执行器内独立线程池执行数据预取任务.
prefetching_parallel="4"                    # 并发模式下,数据预取任务的并行度.
mu_zero="0.6"                               # 权重系数mu的初始值.
mu_delta="0.2"                              # 权重系数mu的增量.
#
# Application parameters.
#
main_class="SWS_HBASE"                      # 运行时主类.
window_size="2"                             # 滑动窗口大小(unit: hour).
overlapping_ratio="0.5"                     # 滑动窗口重叠比例(0<r<=1).
storage_sys="hbase"                         # 存储系统(hdfs,hbase).
workload="wc"                               # 窗口处理负载(wc,sort,svm).
run_phase="1"                               # 运行模式(0:滑动窗口计算, 1:滑动窗口计算&聚合计算).
dynamic="true"                              # RDD动态构建机制(true,false).
prefetch="true"                             # 数据预取机制(true,false).
sw_scheduler="herf"                         # 滑动窗口作业调度算法(fifo,fair,sjf,herf).
#
# Computational resources.
#
spark-submit \
--master spark://node5:7079 \
--executor-memory 16g \
--executor-cores 8 \
--driver-cores 8 \
--driver-memory 8g \
--class pers.yzq.sliding.evaluation.${mc} \
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
${target} \
"prefetching.required=${prefetching_required}" \
"prefetching.manager.strategy=${prefetching_manager_strategy}" \
"prefetching.mode=${prefetching_mode}" \
"prefetching.dependent=${prefetching_dependent}" \
"prefetching.parallel=${prefetching_parallel}" \
"mu_zero=${mu_zero}" \
"mu_delta=${mu_delta}" \
"window.size=${window_size}" \
"overlapping.ratio=${overlapping_ratio}" \
"storage.system=${storage_sys}" \
"workload=${workload}" \
"run.phase=${run_phase}" \
"slidingwindow.scheduler=${sw_scheduler}" \
"dynamic=${dynamic}" \
"prefetch=${prefetch}"
